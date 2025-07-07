# music_AI_workshop

## How to run the app:
- Download the continuous_concat.tar from: https://drive.google.com/drive/folders/1R5-HaXmNzXBAhGq1idrDF-YEKkZm5C8C?usp=sharing
- Extract the files in the music_AI_workshop\midi-emotion\output\continuous_concat folder
- Go in C:\Users\fgall\Desktop\music_AI_workshop\midi-emotion\src and run python app_max.py and then go to http://127.0.0.1:5000
## Midi-emotions
- https://github.com/serkansulun/midi-emotion
- https://ieeexplore.ieee.org/document/9762257
- To generate MIDI files using the midi-emotion model go to src folder and run generate.py with appropriate arguments. e.g: python generate.py --model_dir continuous_concat --conditioning continuous_concat --valence 0.8 --arousal 0.8

## Speech_VA
- Emotion Classification Using Audioeering Model: https://huggingface.co/audeering/wav2vec2-large-robust-12-ft-emotion-msp-dim
- Map to Valence/Arousal from Text NRC-VAD: https://saifmohammad.com/WebPages/nrc-vad.html