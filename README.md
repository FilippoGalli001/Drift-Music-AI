# Drift: An Emotion-Driven Ambient Music Generator

**Drift** is an interactive generative music installation that translates the emotional content of the human voice into a personal, evolving ambient soundscape. The project creates a bio-creative feedback loop: your voice generates music that reflects your emotional state, and in turn, this soundscape provides a space for reflection and introspection.

Developed by Filippo Galli, Jing Yu, and Lianne Sánchez-Rodríguez, mentored by Fernando García.



## Core Concept

The project is inspired by Michael Viega's concept of **"listening in the ambient mode"**. Instead of creating a structured song, Drift generates a soundscape that is, in the words of Brian Eno, "as ignorable as it is interesting."

By analyzing the emotion in a user's voice, we generate a unique sonic environment in real-time. This invites the listener to "drift" through the textures and atmospheres of the sound, facilitating a state of mindful listening and potentially making them aware of "distant or forgotten parts of one's self."

## Features

-   **Real-time Emotion Analysis:** Captures valence (positivity/negativity) and arousal (energy/calmness) from spoken words.
-   **Dual-Path Voice Analysis:** Combines prosodic (intonation) and semantic (textual) analysis for a more robust emotional reading.
-   **AI-Powered MIDI Generation:** Uses the `midi-emotion` model to create multi-instrument symbolic music based on the detected emotion.
-   **Live Sound Synthesis:** Streams MIDI data via **OSC** to a custom **Max/MSP** patch that acts as a complex ambient synthesis engine.
-   **Interactive Web Interface:** A simple front-end allows users to record their voice and control the generation process.

## Technical Workflow

The system processes audio through a multi-stage pipeline to generate sound:

1.  **Vocal Input & Emotion Analysis (Python)**
    -   The user's voice is captured through the web interface.
    -   **Prosodic Analysis:** A pre-trained **Wav2Vec2** model analyzes the audio's intonation, rhythm, and timbre to extract valence and arousal values.
    -   **Semantic Analysis:** **OpenAI's Whisper** transcribes the speech to text. The text is then analyzed using the **NRC-VAD Lexicon** to find the corresponding valence and arousal scores for the words used.
    -   **Fused Emotion:** The results from both paths are combined via a weighted average to produce a final, more accurate `(Valence, Arousal)` coordinate.

2.  **Emotion-to-MIDI Generation (Python)**
    -   The `(Valence, Arousal)` values are fed into the **`midi-emotion`** generative model.
    -   The model generates a continuous stream of symbolic music (MIDI note events with channel, pitch, and velocity) that musically represents the input emotion.

3.  **OSC Transmission to Max/MSP**
    -   Instead of saving a file, the MIDI events are streamed in real-time to Max/MSP using the **OSC (Open Sound Control)** protocol. This ensures a fluid and low-latency interactive experience.

4.  **Ambient Sound Synthesis (Max/MSP)**
    -   The Max/MSP patch receives the OSC messages and acts as the project's sound engine. It is not a simple MIDI player but a custom synthesizer designed for ambient textures.
    -   **Granular Synthesis:** MIDI notes trigger granular engines (`GRANULAR`, `CLOUD`) that deconstruct sound into tiny grains, creating evolving pads, atmospheric textures, and ethereal sound clouds.
    -   **Spatialization:** Sounds are processed through vast reverbs (`GIGAVERB`) and other effects to create a deep, immersive, and spacious soundscape.
    -   **Enveloping:** Slow attack and release times (`ADSR`) are used to shape the sounds, avoiding harsh transients and contributing to the overall fluid and drifty aesthetic.

## Setup and Usage

### Prerequisites
-   Python 3.x
-   Max/MSP installed on your machine.
-   The required Python packages can be installed via `pip install -r requirements.txt` 
### Installation

1.  **Download the Pre-trained `midi-emotion` Model:**
    -   Download `continuous_concat.tar` from this [Google Drive link](https://drive.google.com/drive/folders/1R5-HaXmNzXBAhGq1idrDF-YEKkZm5C8C?usp=sharing).
    -   Extract its contents into the `Gen_AI_Project/midi-emotion/output/continuous_concat` folder. Your project structure should look like this:
        ```
        Drift-Music-AI/
        └── Gen_AI_Project/
            └── midi-emotion/
                └── output/
                    └── continuous_concat/
                        ├── model.pt
                        ├── model_config.pt
                        └── ... (other extracted files)
        ```

2.  **Run the Application:**
    -   Navigate to the `Gen_AI_Project/` directory in your terminal.
    -   Run the Flask server:
        ```sh
        python app_max.py
        ```
    -   Open your web browser and go to `http://127.0.0.1:5000`.

3.  **Configure Max/MSP:**
    -   Open the provided Max/MSP patch.
    -   Ensure the `udpreceive 8000` object is present and the patch is unmuted. The IP address in `app_max.py` (`OSC_IP`) might need to be adjusted to match your local machine's IP if you are not running on localhost.

## References & Acknowledgments

-   **Midi-Emotion Model:**
    -   GitHub: [serkansulun/midi-emotion](https://github.com/serkansulun/midi-emotion)
    -   Paper: [MIDI-Emotion: A Multi-instrumental Symbolic Music Dataset with Emotion Annotations](https://ieeexplore.ieee.org/document/9762257)
-   **Speech Emotion Recognition:**
    -   Model: [audeering/wav2vec2-large-robust-12-ft-emotion-msp-dim](https://huggingface.co/audeering/wav2vec2-large-robust-12-ft-emotion-msp-dim)
-   **Text Emotion Lexicon:**
    -   [NRC-VAD Lexicon](https://saifmohammad.com/WebPages/nrc-vad.html)
-   **Conceptual Framework:**
    -   Viega, M. (2016). Listening in the Ambient Mode: Implications for Music Therapy Practice and Theory. *Music Therapy Perspectives*.