// NOTA: Questo script presuppone che le costanti 'EMOTIONS_DATA' e 'NEUTRAL_RADIUS'
// siano definite globalmente in un tag <script> nel file HTML prima del caricamento di questo script.

// --- DOM ELEMENTS AND GLOBAL VARIABLES ---
const audioFileInput = document.getElementById('audioFileInput');
const fileNameDiv = document.getElementById('fileName');
const recordButton = document.getElementById('recordButton');
const resultsDiv = document.getElementById('results');

// AI Controls
const startAiButton = document.getElementById('startAiButton');
const stopAiButton = document.getElementById('stopAiButton');
const aiStatusDiv = document.getElementById('aiStatus');

// MIDI Controls
const playMappedMidiButton = document.getElementById('playMappedMidiButton');
const stopMidiButton = document.getElementById('stopMidiButton');
const midiStatusDiv = document.getElementById('midiStatus');

let currentAiSessionId = null;
let currentMidiSessionId = null;
let mediaRecorder;
let audioChunks = [];
let recordedBlob = null;
let currentAnalysisData = null; // Store {valence, arousal, emotion}

// --- EMOTION CHART LOGIC ---
const wheel = document.getElementById('emotion-wheel');
const neutralZone = document.getElementById('neutral-zone');
const clickMarker = document.getElementById('click-marker');
const valenceDisplay = document.getElementById('valence-display');
const arousalDisplay = document.getElementById('arousal-display');
const emotionDisplay = document.getElementById('emotion-display');

function setupEmotionWheel(){neutralZone.style.width=`${NEUTRAL_RADIUS*100}%`;neutralZone.style.height=`${NEUTRAL_RADIUS*100}%`;const e=Object.keys(EMOTIONS_DATA).map(e=>{const{v:t,a:o}=EMOTIONS_DATA[e];return{name:e,v:t,a:o,angle:180*Math.atan2(o,t)/Math.PI}}).sort((e,t)=>e.angle-t.angle);const t=e.map((t,o)=>`hsl(${o*(360/e.length)}, 70%, 80%)`),o=[];for(let t=0;t<e.length;t++){const n=e[t],s=e[(t+1)%e.length];let l=s.angle-n.angle;l<0&&(l+=360),o.push(n.angle+l/2)}const n=e.map((e,n)=>{const s=o[(n+e.length-1)%e.length];return`${t[n]} ${s-90}deg`});wheel.style.background=`conic-gradient(from -90deg, ${n.join(", ")}, ${t[0]} 360deg)`,e.forEach(e=>{const t=document.createElement("div");t.className="emotion-label",t.textContent=e.name;const o=.9;t.style.left=`${50*e.v*o+50}%`,t.style.top=`${50*-e.a*o+50}%`,wheel.appendChild(t)})}
function updateMarkerAndInfo(e,t,o){valenceDisplay.textContent=e.toFixed(2),arousalDisplay.textContent=t.toFixed(2),emotionDisplay.textContent=o;const n=50*e+50,s=50*-t+50;clickMarker.style.left=`${n}%`,clickMarker.style.top=`${s}%`,clickMarker.style.display="block"}
function clearChartAndInfo(){valenceDisplay.textContent="-",arousalDisplay.textContent="-",emotionDisplay.textContent="Emotion Map",clickMarker.style.display="none"}


function resetFullUiState() {
    aiStatusDiv.textContent = 'Status: Awaiting audio analysis';
    midiStatusDiv.textContent = 'Status: Awaiting audio analysis';
    resultsDiv.innerHTML = '';
    fileNameDiv.textContent = 'No audio source selected';

    audioFileInput.disabled = false;
    recordButton.disabled = false;

    startAiButton.disabled = true;
    stopAiButton.disabled = true;
    playMappedMidiButton.disabled = true;
    stopMidiButton.disabled = true;

    audioFileInput.value = '';
    recordedBlob = null;
    currentAnalysisData = null;
    currentAiSessionId = null;
    currentMidiSessionId = null;

    clearChartAndInfo();
}

async function analyzeAudio(audioData, sourceDescription) {
    if (!audioData) return;

    resetFullUiState(); // Reset everything for a new analysis
    fileNameDiv.textContent = sourceDescription;
    aiStatusDiv.textContent = 'Uploading and analyzing...';
    midiStatusDiv.textContent = 'Uploading and analyzing...';
    audioFileInput.disabled = true;
    recordButton.disabled = true;

    const formData = new FormData();
    formData.append('audio_file', audioData, 'analysis.wav');

    try {
        const response = await fetch('/analyze_audio', { method: 'POST', body: formData });
        const data = await response.json();
        if (!response.ok) throw new Error(data.error || 'Server error');

        currentAnalysisData = { valence: data.valence, arousal: data.arousal, emotion: data.emotion };

        const statusText = 'Analysis complete. Ready to start.';
        aiStatusDiv.textContent = statusText;
        midiStatusDiv.textContent = statusText;

        resultsDiv.innerHTML = `
            <p><b>Transcription:</b> "<i>${data.transcription}</i>"</p>
            <p><b>Detected Emotion:</b> ${data.emotion}</p>
        `;

        updateMarkerAndInfo(data.valence, data.arousal, data.emotion);

        startAiButton.disabled = false;
        if (data.emotion !== 'Neutral') {
            playMappedMidiButton.disabled = false;
        } else {
             midiStatusDiv.textContent = 'Neutral emotion detected. No mapped MIDI available.';
        }

    } catch (error) {
        console.error('Error during analysis:', error);
        resetFullUiState();
        aiStatusDiv.textContent = `Error: ${error.message}`;
        midiStatusDiv.textContent = `Error: ${error.message}`;
    }
}

// --- EVENT LISTENERS ---
document.addEventListener('DOMContentLoaded', setupEmotionWheel);

audioFileInput.addEventListener('change', () => {
    if (audioFileInput.files.length > 0) {
        const file = audioFileInput.files[0];
        recordedBlob = null;
        analyzeAudio(file, `File: ${file.name}`);
    }
});

recordButton.addEventListener('click', async () => {
    if (mediaRecorder && mediaRecorder.state === 'recording') {
        mediaRecorder.stop();
        recordButton.textContent = '🎤 Record Audio';
        recordButton.classList.remove('is-recording');
    } else {
        try {
            const stream = await navigator.mediaDevices.getUserMedia({ audio: true });
            mediaRecorder = new MediaRecorder(stream, { mimeType: 'audio/webm' });
            audioChunks = [];
            recordedBlob = null;
            audioFileInput.value = '';
            mediaRecorder.ondataavailable = event => audioChunks.push(event.data);
            mediaRecorder.onstop = async () => {
                fileNameDiv.textContent = 'Recording finished. Converting...';
                const rawBlob = new Blob(audioChunks, { type: 'audio/webm' });
                const wavBlob = await convertToWav(rawBlob);
                recordedBlob = wavBlob;
                stream.getTracks().forEach(track => track.stop());
                analyzeAudio(wavBlob, 'Recorded Audio');
            };
            mediaRecorder.start();
            resetFullUiState();
            fileNameDiv.textContent = 'Recording...';
            recordButton.textContent = '■ Stop Recording';
            recordButton.classList.add('is-recording');
        } catch (err) {
            console.error("Microphone error:", err);
            alert("Could not access the microphone.");
        }
    }
});

// AI Generation Listeners
startAiButton.addEventListener('click', async () => {
    if (!currentAnalysisData) return;
    startAiButton.disabled = true;
    stopAiButton.disabled = false;
    aiStatusDiv.textContent = 'Starting AI generation...';
    try {
        const response = await fetch('/start_generation', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ valence: currentAnalysisData.valence, arousal: currentAnalysisData.arousal }),
        });
        const data = await response.json();
        if (!response.ok) throw new Error(data.error || 'Server error');
        currentAiSessionId = data.session_id;
        aiStatusDiv.textContent = `Generation started (Session: ${currentAiSessionId.substring(0, 11)}...).`;
    } catch (error) {
        console.error('Error:', error);
        aiStatusDiv.textContent = `Error: ${error.message}`;
        startAiButton.disabled = false;
        stopAiButton.disabled = true;
    }
});

stopAiButton.addEventListener('click', async () => {
    if (!currentAiSessionId) return;
    aiStatusDiv.textContent = 'Sending stop request...';
    try {
        await fetch('/stop_generation', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ session_id: currentAiSessionId }),
        });
        aiStatusDiv.textContent = `Generation stopped.`;
        currentAiSessionId = null;
        startAiButton.disabled = (currentAnalysisData === null);
        stopAiButton.disabled = true;
    } catch (error) {
        console.error('Error:', error);
        aiStatusDiv.textContent = `Error: ${error.message}`;
    }
});

// Mapped MIDI Listeners
playMappedMidiButton.addEventListener('click', async () => {
    if (!currentAnalysisData || currentAnalysisData.emotion === 'Neutral') return;
    playMappedMidiButton.disabled = true;
    stopMidiButton.disabled = false;
    midiStatusDiv.textContent = `Requesting mapped MIDI for "${currentAnalysisData.emotion}"...`;
    try {
        const response = await fetch('/play_mapped_midi', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ emotion: currentAnalysisData.emotion }),
        });
        const data = await response.json();
        if (!response.ok) throw new Error(data.error || 'Server error');
        currentMidiSessionId = data.session_id;
        midiStatusDiv.textContent = `Playing "${data.file_played}" (Session: ${currentMidiSessionId.substring(0, 11)}...).`;
    } catch (error) {
        console.error('Error:', error);
        midiStatusDiv.textContent = `Error: ${error.message}`;
        playMappedMidiButton.disabled = (currentAnalysisData === null || currentAnalysisData.emotion === 'Neutral');
        stopMidiButton.disabled = true;
    }
});

stopMidiButton.addEventListener('click', async () => {
    if (!currentMidiSessionId) return;
    midiStatusDiv.textContent = 'Sending stop request...';
    try {
        await fetch('/stop_midi', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ session_id: currentMidiSessionId }),
        });
        midiStatusDiv.textContent = 'Playback stopped.';
        currentMidiSessionId = null;
        playMappedMidiButton.disabled = (currentAnalysisData === null || currentAnalysisData.emotion === 'Neutral');
        stopMidiButton.disabled = true;
    } catch (error) {
        console.error('Error:', error);
        midiStatusDiv.textContent = `Error: ${error.message}`;
    }
});

// --- UTILITY FUNCTIONS ---
async function convertToWav(e){return new Promise((t,o)=>{const n=new(window.AudioContext||window.webkitAudioContext),s=new FileReader;s.onload=()=>{n.decodeAudioData(s.result,e=>{t(audioBufferToWavBlob(e))},e=>o(new Error("Failed to decode audio data: "+e)))},s.onerror=e=>o(new Error("File reader error: "+e)),s.readAsArrayBuffer(e)})}
function audioBufferToWavBlob(e){let t=e.numberOfChannels,o=e.length*t*2,n=16,s=e.sampleRate,l=new DataView(new ArrayBuffer(44+o)),r=0;function i(e){for(let t=0;t<e.length;t++)l.setUint8(r+t,e.charCodeAt(t))}i("RIFF"),r+=4,l.setUint32(r,36+o,!0),r+=4,i("WAVE"),r+=4,i("fmt "),r+=4,l.setUint32(r,16,!0),r+=4,l.setUint16(r,1,!0),r+=2,l.setUint16(r,t,!0),r+=2,l.setUint32(r,s,!0),r+=4,l.setUint32(r,s*t*(n/8),!0),r+=4,l.setUint16(r,t*(n/8),!0),r+=2,l.setUint16(r,n,!0),r+=2,i("data"),r+=4,l.setUint32(r,o,!0),r+=4;let a=new Int16Array(o/2),c=0;for(let o=0;o<e.length;o++)for(let n=0;n<t;n++){let t=e.getChannelData(n)[o];t=Math.max(-1,Math.min(1,t)),a[c++]=t<0?32768*t:32767*t}return new Int16Array(l.buffer,44).set(a),new Blob([l],{type:"audio/wav"})}