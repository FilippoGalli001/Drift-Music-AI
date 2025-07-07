# Install necessary packages
import sounddevice as sd
import scipy.io.wavfile as wav
import whisper

import audonnx
import soundfile as sf

import pandas as pd
import numpy as np
import re

import warnings
warnings.filterwarnings("ignore", message="FP16 is not supported")


# -----------------------------
# Step 1: Record from Microphone
# -----------------------------
def record_audio(file_name='recorded.wav', duration=10, fs=16000):
    print("Recording for", duration, "seconds...")
    recording = sd.rec(int(duration * fs), samplerate=fs, channels=1, dtype='int16')
    sd.wait()
    wav.write(file_name, fs, recording)
    print("Saved to", file_name)
    return file_name


# ----------------------------
# Step 2: Text Transcription
# ----------------------------
def transcription_model(audio_file):
    # Load the base model of Open AI's whisper we could use "small" or "medium"
    model = whisper.load_model("small")
    to_text = model.transcribe(audio_file)
    return to_text


# -----------------------------
# Step 3: Emotion Classification Using Audioeering Model
# Link: https://huggingface.co/audeering/wav2vec2-large-robust-12-ft-emotion-msp-dim
# -----------------------------
def classify_emotion(audio_file):
    # Load pre-trained emotion model
    model = audonnx.load("C:\\Users\\fgall\\Desktop\\music_AI_workshop\\Gen_AI_Project\\Valence_Arousal_Speech\\w2v2-L-robust-12")

    # Load your audio file
    signal, sampling_rate = sf.read(audio_file, always_2d=False)

    # Run inference
    signal = signal.astype('float32')
    result = model(signal, sampling_rate)

    # Extract values
    arousal, dominance, valence = result["logits"][0]

    # Rescale from values [0,1] to [–1, +1]
    arousal = arousal * 2.0 - 1.0
    valence = valence * 2.0 - 1.0
    #print(f"Arousal: {arousal:.3f}, Valence: {valence:.3f}")
    return {"Arousal": arousal, "Valence": valence}


# -----------------------------
# Step 4: Map to Valence/Arousal from Text NRC-VAD
# Link: https://saifmohammad.com/WebPages/nrc-vad.html
# -----------------------------

def get_valence_arousal_lexicon(text):
    # Load the VAD lexicon (assumes the .txt file is in the same folder)
    vad = pd.read_csv("C:\\Users\\fgall\\Desktop\\music_AI_workshop\\Gen_AI_Project\\Valence_Arousal_Speech\\NRC-VAD-Lexicon-v2.1.txt", sep="\t", skiprows=1,
                      names=["word", "valence", "arousal", "dominance"])
    vad_dict = vad.set_index("word")[["valence", "arousal"]].to_dict(orient="index")

    words = re.findall(r'\b\w+\b', text.lower())
    found = [vad_dict[w] for w in words if w in vad_dict]

    if not found:
        return {"valence": 0.0, "arousal": 0.0}

    val = np.mean([item["valence"] for item in found])
    aro = np.mean([item["arousal"] for item in found])
    return {"valence": round(val, 3), "arousal": round(aro, 3)}


# -----------------------------
# Run everything
# -----------------------------
"""
# This classifies then emotion and changes it to valence arousal
filename = record_audio(duration=5)
# Calls Open AI's transcription with whisper
transcription = transcription_model(filename)

# Classify emotion provide valence & arousal values
print("Speech V-A ------------------------------------")
va_speech = classify_emotion(filename)
# Produce V-A values based on Lexicon
print("Lexicon Text V-A ------------------------------------")
va_text = get_valence_arousal_lexicon(transcription["text"])
print(va_text)

"""
