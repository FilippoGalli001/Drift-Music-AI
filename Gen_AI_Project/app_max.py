import uuid
import threading
import os
import torch
import time
import sys
import mido
import math
import atexit
import random
import shutil
from pathlib import Path
from flask import Flask, request, render_template, jsonify
from pythonosc import udp_client

# --- PATH SETUP AND CUSTOM MODULE IMPORTS ---
script_path = Path(__file__).resolve()
project_root = script_path.parents[1]
print(project_root)
sys.path.append(str(project_root))
from Gen_AI_Project.Valence_Arousal_Speech.Speech_VA import (
    classify_emotion, get_valence_arousal_lexicon, transcription_model)

# Emotion data and neutral zone radius
emotions_data = {
    "Surprised": {"v": 0.3, "a": 0.9},
    "Excited": {"v": 0.6, "a": 0.5},
    "Happy": {"v": 0.9, "a": 0.2},
    "Pleased": {"v": 0.9, "a": -0.2},
    "Relaxed": {"v": 0.6, "a": -0.5},
    "Sleepy": {"v": 0.3, "a": -0.9},
    "Tired": {"v": -0.2, "a": -0.9},
    "Bored": {"v": -0.5, "a": -0.7},
    "Sad": {"v": -0.8, "a": -0.4},
    "Disgust": {"v": -0.8, "a": 0.3},
    "Anger": {"v": -0.5, "a": 0.7},
    "Scared": {"v": -0.1, "a": 0.9}
}
NEUTRAL_RADIUS = 0.1

# Pre-calculate emotion angles once at startup
emotion_angles = {
    name: math.degrees(math.atan2(coords["a"], coords["v"])) % 360
    for name, coords in emotions_data.items()
}

# --- CONFIGURATION AND SETUP ---
MODEL_DIR = "continuous_concat"
MAX_INPUT_LEN = 1216
AMP = True
UPLOAD_FOLDER = os.path.dirname(__file__)
MIDI_MAPPING_DIR = project_root / 'midi_mapping'

OSC_IP = "127.0.0.1" #IP for local device
# OSC_IP = "192.168.43.138" # Example IP for external device

OSC_PORT = 8000
OSC_ADDRESS = "/midi/note"
osc_client = udp_client.SimpleUDPClient(OSC_IP, OSC_PORT)
print(f"OSC client configured to send to {OSC_IP}:{OSC_PORT}")
print(f"MIDI mapping directory set to: {MIDI_MAPPING_DIR}")

# --- MIDI PORT INITIALIZATION AND MODEL LOADING ---
midi_port = None
try:
    port_names = mido.get_output_names()
    print("Available MIDI ports:", port_names)
    # Prioritize common virtual MIDI ports
    port_name = next(
        (name for name in port_names if 'Microsoft' in name or 'Virtual' in name or 'Synth' in name or 'IAC' in name),
        port_names[0] if port_names else None
    )

    if port_name:
        midi_port = mido.open_output(port_name)
        print(f"MIDI streaming for AI enabled. Sending data to port: {port_name}")
    else:
        print("WARNING: No MIDI output port found. AI generation will not work.")

except Exception as e:
    print(f"Error initializing Mido: {e}")
    midi_port = None

# --- FLASK APP AND CLEANUP FUNCTIONS ---
app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


def cleanup_midi():
    """Resets and closes the MIDI port on application exit."""
    if midi_port and not midi_port.closed:
        print("Resetting and closing MIDI port...")
        midi_port.reset()
        midi_port.close()
        print("MIDI port closed successfully.")


atexit.register(cleanup_midi)

# --- MODEL LOADING ---
print("Loading model...")
main_output_dir = project_root / 'Gen_AI_Project' / 'midi_emotion' /'output'
model_path = os.path.join(main_output_dir, MODEL_DIR)
config = torch.load(os.path.join(model_path, 'model_config.pt'))
maps = torch.load(os.path.join(model_path, 'mappings.pt'))
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
from Gen_AI_Project.midi_emotion.src.models.build_model import build_model

model, _ = build_model(None, load_config_dict=config)
model.load_state_dict(torch.load(os.path.join(model_path, 'model.pt'), map_location=device))
model.to(device)
model.eval()
print(f"Model loaded on {device}.")

active_threads = {}


# --- LOGIC FUNCTIONS ---
def get_emotion_angular(valence, arousal):
    """Classifies emotion based on a central neutral zone and angle."""
    distance_from_center = math.sqrt(valence ** 2 + arousal ** 2)
    if distance_from_center < NEUTRAL_RADIUS:
        return "Neutral"

    input_angle = math.degrees(math.atan2(arousal, valence)) % 360

    min_angle_diff = float('inf')
    closest_emotion = None

    for emotion, emo_angle in emotion_angles.items():
        diff = abs(input_angle - emo_angle)
        angle_difference = min(diff, 360 - diff)  # Handle wrap-around for angles

        if angle_difference < min_angle_diff:
            min_angle_diff = angle_difference
            closest_emotion = emotion

    return closest_emotion


# --- FLASK ENDPOINTS ---

@app.route('/')
def index():
    """Renders the main HTML page with emotion data."""
    return render_template('index.html', emotions=emotions_data, neutral_radius=NEUTRAL_RADIUS)


@app.route('/process', methods=['POST'])
def process():
    """Processes manual Valence/Arousal input and returns the classified emotion."""
    data = request.get_json()
    valence = float(data.get('valence', 0))
    arousal = float(data.get('arousal', 0))
    emotion = get_emotion_angular(valence, arousal)

    return jsonify({
        'emotion': emotion,
        'valence': round(valence, 2),
        'arousal': round(arousal, 2)
    })


@app.route('/analyze_audio', methods=['POST'])
def analyze_audio():
    """
    Analyzes an uploaded audio file for speech emotion (Valence, Arousal)
    and transcription, then combines the VA results.
    """
    if 'audio_file' not in request.files:
        return jsonify({"error": "No audio file sent"}), 400
    file = request.files['audio_file']

    temp_filename = "temp_analysis_" + str(uuid.uuid4()) + ".wav"
    temp_filepath = os.path.join(app.config['UPLOAD_FOLDER'], temp_filename)
    try:
        file.save(temp_filepath)

        # Analyze speech for Valence-Arousal
        va_speech = classify_emotion(temp_filepath)
        v_speech, a_speech = va_speech["Valence"], va_speech["Arousal"]

        # Transcribe speech and get text-based Valence-Arousal
        transcription = transcription_model(temp_filepath)
        va_text = get_valence_arousal_lexicon(transcription["text"])
        v_text, a_text = va_text["valence"], va_text["arousal"]

        # Combine speech and text VA, weighted
        tot_v = 0.6 * v_speech + 0.4 * v_text
        tot_a = 0.6 * a_speech + 0.4 * a_text

        # Clamp values to [-1, 1] range
        tot_v = max(-1.0, min(1.0, tot_v))
        tot_a = max(-1.0, min(1.0, tot_a))

        detected_emotion = get_emotion_angular(tot_v, tot_a)
        print(f"--- Detected Emotion: {detected_emotion} (V: {tot_v:.2f}, A: {tot_a:.2f}) ---")

        return jsonify({
            "message": "Analysis complete",
            "valence": float(tot_v),
            "arousal": float(tot_a),
            "transcription": transcription["text"],
            "emotion": detected_emotion
        })

    except Exception as e:
        import traceback
        traceback.print_exc()
        return jsonify({"error": str(e)}), 500
    finally:
        if os.path.exists(temp_filepath):
            os.remove(temp_filepath)


# --- MIDI GENERATION AND PLAYBACK FUNCTIONS & ENDPOINTS ---
def generate_and_play_midi(session_id, valence, arousal):
    """
    Generates music based on Valence/Arousal using a deep learning model
    and plays it via MIDI. Runs in a separate thread.
    """
    if not midi_port:
        print(f"[{session_id}] ERROR: MIDI port not available. Cannot start AI playback.")
        return
    thread = threading.current_thread()
    print(f"[{session_id}] Starting MIDI generation and playback with V: {valence}, A: {arousal}")
    active_notes = {}
    current_velocity = 100
    # Map instrument names to MIDI channels
    instrument_channels = {'PIANO': 0, 'DRUMS': 9, 'GUITAR': 1, 'BASS': 2, 'STRINGS': 3}

    start_token_idx = maps["tuple2idx"]["<START>"]
    gen_song_tensor = torch.LongTensor([[start_token_idx]]).to(device)
    conditions_tensor = torch.FloatTensor([[valence, arousal]]).to(device)
    try:
        with torch.no_grad():
            while getattr(thread, "is_running", True):
                input_ = gen_song_tensor[-MAX_INPUT_LEN:, :]
                with torch.cuda.amp.autocast(enabled=AMP):
                    output = model(input_.t(), conditions_tensor)
                    output = output.permute((1, 0, 2))  # Adjust dimensions

                logits = output[-1, :, :]
                probs = torch.nn.functional.softmax(logits, dim=-1)
                next_token_ind = torch.multinomial(probs, num_samples=1)
                gen_song_tensor = torch.cat((gen_song_tensor, next_token_ind), 0)

                event_tuple = maps["idx2tuple"][next_token_ind.item()]
                if not isinstance(event_tuple, tuple):
                    event_type_string = event_tuple
                    event_value = None
                else:
                    event_type_index, event_value = event_tuple
                    event_type_string = maps["idx2event"][event_type_index]

                if "TIMESHIFT" in event_type_string:
                    if event_value and event_value > 0:
                        time.sleep(event_value / 1000.0)  # Time in milliseconds
                elif "ON_" in event_type_string:
                    instrument_name = event_type_string.split('_')[1]
                    pitch = event_value
                    channel = instrument_channels.get(instrument_name.upper(), 0)
                    msg = mido.Message('note_on', note=pitch, velocity=current_velocity, channel=channel)
                    midi_port.send(msg)
                    active_notes[(instrument_name, pitch)] = True
                elif "OFF_" in event_type_string:
                    instrument_name = event_type_string.split('_')[1]
                    pitch = event_value
                    if (instrument_name, pitch) in active_notes:
                        channel = instrument_channels.get(instrument_name.upper(), 0)
                        msg = mido.Message('note_off', note=pitch, velocity=0, channel=channel)
                        midi_port.send(msg)
                        del active_notes[(instrument_name, pitch)]
                elif "SET_VELOCITY" in event_type_string:
                    current_velocity = event_value if event_value else 100
    finally:
        print(f"[{session_id}] Cleaning up active AI notes...")
        # Ensure all active notes are turned off
        for (instrument_name, pitch) in active_notes.keys():
            channel = instrument_channels.get(instrument_name.upper(), 0)
            midi_port.send(mido.Message('note_off', note=pitch, velocity=0, channel=channel))
        print(f"[{session_id}] AI generation and playback finished.")
        if session_id in active_threads:
            del active_threads[session_id]


def play_midi_via_osc(session_id, midi_filepath):
    """
    Plays a MIDI file in a loop via OSC. Runs in a separate thread.
    """
    thread = threading.current_thread()
    print(f"[{session_id}] Starting playback of MIDI file: {os.path.basename(midi_filepath)}")

    try:
        mid = mido.MidiFile(midi_filepath)
        while getattr(thread, "is_running", True):
            print(f"[{session_id}] Looping MIDI file...")
            for msg in mid.play():
                if not getattr(thread, "is_running", True):
                    print(f"[{session_id}] MIDI playback interrupted by user.")
                    break
                if msg.type in ('note_on', 'note_off'):
                    velocity = msg.velocity if msg.type == 'note_on' else 0
                    payload = [int(msg.channel), int(msg.note), int(velocity)]
                    osc_client.send_message(OSC_ADDRESS, payload)
            if not getattr(thread, "is_running", True):  # Check again after loop finishes
                break
    except mido.UnknownSysExEvent as e:
        print(f"[{session_id}] Warning: Ignoring unrecognized SysEx event: {e}")
    except Exception as e:
        print(f"[{session_id}] Error during MIDI playback via OSC: {e}")
    finally:
        # Cleans up only the temporary file, not the original
        if os.path.exists(midi_filepath) and "temp_midi_" in os.path.basename(midi_filepath):
            try:
                os.remove(midi_filepath)
                print(f"[{session_id}] Temporary MIDI file removed: {os.path.basename(midi_filepath)}")
            except OSError as e:
                print(f"[{session_id}] Error removing temporary file: {e}")
        print(f"[{session_id}] MIDI playback finished.")
        if session_id in active_threads:
            del active_threads[session_id]


@app.route('/start_generation', methods=['POST'])
def start_generation():
    """Starts a new thread for AI MIDI generation based on provided VA values."""
    data = request.get_json()
    valence = data.get('valence')
    arousal = data.get('arousal')
    if valence is None or arousal is None:
        return jsonify({"error": "Valence and Arousal not provided"}), 400
    try:
        session_id = "ai_" + str(uuid.uuid4())
        thread = threading.Thread(target=generate_and_play_midi, args=(session_id, float(valence), float(arousal)))
        thread.daemon = True  # Allow main program to exit even if thread is running
        thread.is_running = True  # Custom flag to control thread execution
        thread.start()
        active_threads[session_id] = thread
        return jsonify({"session_id": session_id, "message": "Generation started.", "valence": f"{float(valence):.3f}",
                        "arousal": f"{float(arousal):.3f}"})
    except Exception as e:
        return jsonify({"error": str(e)}), 500


@app.route('/stop_generation', methods=['POST'])
def stop_generation():
    """Sends a stop signal to an active AI MIDI generation thread."""
    data = request.get_json()
    session_id = data.get('session_id')
    if session_id in active_threads:
        thread = active_threads[session_id]
        thread.is_running = False  # Set the custom flag to stop the thread gracefully
        return jsonify({"status": "stopping", "message": f"Stop signal sent to session {session_id}."})
    else:
        return jsonify({"status": "not_found", "message": "Session ID not found or already stopped."}), 404


# --- MODIFIED ENDPOINTS FOR MIDI MAPPING ---

@app.route('/play_mapped_midi', methods=['POST'])
def play_mapped_midi():
    """
    Chooses a random MIDI file from the emotion's mapped directory
    and starts playing it via OSC.
    """
    data = request.get_json()
    emotion = data.get('emotion')
    if not emotion:
        return jsonify({"error": "Emotion not provided"}), 400
    if emotion == "Neutral":
        return jsonify({"error": "No MIDI mapping for 'Neutral' emotion."}), 400

    emotion_dir = MIDI_MAPPING_DIR / emotion
    if not emotion_dir.is_dir():
        return jsonify({"error": f"MIDI mapping directory not found for emotion: {emotion}"}), 404

    midi_files = list(emotion_dir.glob('*.mid')) + list(emotion_dir.glob('*.midi'))
    if not midi_files:
        return jsonify({"error": f"No MIDI files found in mapping directory for emotion: {emotion}"}), 404

    # Choose a random MIDI file from the folder
    chosen_file_path = random.choice(midi_files)

    # Create a temporary copy to avoid deleting the original file
    temp_filename = "temp_midi_" + str(uuid.uuid4()) + chosen_file_path.suffix
    temp_filepath = os.path.join(app.config['UPLOAD_FOLDER'], temp_filename)

    try:
        shutil.copy(chosen_file_path, temp_filepath)

        session_id = "midi_" + str(uuid.uuid4())
        thread = threading.Thread(target=play_midi_via_osc, args=(session_id, temp_filepath))
        thread.daemon = True
        thread.is_running = True
        thread.start()
        active_threads[session_id] = thread

        return jsonify({
            "session_id": session_id,
            "message": f"Playback of mapped MIDI for '{emotion}' started.",
            "file_played": chosen_file_path.name
        })
    except Exception as e:
        if os.path.exists(temp_filepath):
            os.remove(temp_filepath)
        return jsonify({"error": str(e)}), 500


@app.route('/stop_midi', methods=['POST'])
def stop_midi():
    """Sends a stop signal to an active MIDI playback thread (for mapped MIDI files)."""
    data = request.get_json()
    session_id = data.get('session_id')
    if session_id and session_id.startswith("midi_") and session_id in active_threads:
        thread = active_threads[session_id]
        thread.is_running = False
        return jsonify({"status": "stopping", "message": f"Stop signal sent to MIDI playback session {session_id}."})
    else:
        return jsonify({"status": "not_found", "message": "MIDI session ID not found or already stopped."}), 404


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True, use_reloader=False)