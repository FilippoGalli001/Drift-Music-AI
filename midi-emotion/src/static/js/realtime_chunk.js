// in main.js
document.addEventListener('DOMContentLoaded', () => {
    // ... selezione elementi DOM ...
    const valenceSlider = document.getElementById('valence');
    const arousalSlider = document.getElementById('arousal');
    const valenceValue = document.getElementById('valence-value');
    const arousalValue = document.getElementById('arousal-value');
    const generateBtn = document.getElementById('generate-btn');
    const statusDiv = document.getElementById('status');
    const playerControls = document.getElementById('player-controls');
    const playBtn = document.getElementById('play-btn');
    const stopBtn = document.getElementById('stop-btn');

    valenceSlider.addEventListener('input', () => {
        valenceValue.textContent = parseFloat(valenceSlider.value).toFixed(1);
    });

    // Aggiorna il testo del valore quando lo slider dell'arousal viene mosso
    arousalSlider.addEventListener('input', () => {
        arousalValue.textContent = parseFloat(arousalSlider.value).toFixed(1);
    });

    let synths = [];
    let sessionId = null;
    let totalTimeOffset = 0;
    let nextChunkToFetch = 0;
    let isGenerationFinished = false;
    let totalGeneratedChunks = Infinity;

    // Funzione per schedulare le note di un SINGOLO chunk
    async function scheduleChunk(arrayBuffer, timeOffset) {
        try {
            const midi = new Midi(arrayBuffer);
            console.log(`Schedulando chunk con offset di ${timeOffset.toFixed(2)}s. Note: ${midi.tracks.flatMap(t => t.notes).length}`);

            midi.tracks.forEach((track, trackIndex) => {
                if (!synths[trackIndex]) {
                     // Crea un synth per questa traccia se non esiste
                    synths[trackIndex] = new Tone.PolySynth(Tone.FMSynth).toDestination();
                }
                const synth = synths[trackIndex];

                track.notes.forEach(note => {
                    Tone.Transport.schedule(time => {
                        synth.triggerAttackRelease(note.name, note.duration, time, note.velocity);
                    }, note.time + timeOffset); // APPLICA L'OFFSET TEMPORALE
                });
            });
            // Restituisce la durata effettiva del chunk MIDI
            return midi.duration;
        } catch(e) {
            console.error("Errore nel parsare il chunk MIDI:", e);
            return 0;
        }
    }

    async function fetchAndScheduleNextChunk() {
        if (isGenerationFinished && nextChunkToFetch >= totalGeneratedChunks) {
            console.log("Tutti i chunk sono stati schedulati.");
            statusDiv.textContent = 'Brano completo. Pronto per la riproduzione.';
            return;
        }

        statusDiv.textContent = `Caricamento chunk ${nextChunkToFetch}...`;

        try {
            const response = await fetch(`/get_chunk/${sessionId}/${nextChunkToFetch}`);

            if (response.status === 404) {
                 console.log("Fine dello stream dal server.");
                 isGenerationFinished = true;
                 totalGeneratedChunks = nextChunkToFetch;
                 statusDiv.textContent = `Generazione completata con ${totalGeneratedChunks} chunk.`;
                 return;
            }
            if (!response.ok) throw new Error(`Errore HTTP: ${response.status}`);

            const arrayBuffer = await response.arrayBuffer();
            const chunkDuration = await scheduleChunk(arrayBuffer, totalTimeOffset);

            totalTimeOffset += chunkDuration; // Aggiorna l'offset per il prossimo chunk
            nextChunkToFetch++;

            // Abilita i controlli dopo aver caricato il primo chunk
            if (nextChunkToFetch === 1) {
                playerControls.classList.remove('hidden');
                statusDiv.textContent = 'Pronto per il Play. Altri chunk in caricamento...';
            }

            // Continua a scaricare il prossimo chunk
            fetchAndScheduleNextChunk();

        } catch (error) {
            console.error(`Errore nel caricare il chunk ${nextChunkToFetch}:`, error);
            statusDiv.textContent = `Errore durante il caricamento. Riprova.`;
        }
    }


    generateBtn.addEventListener('click', async () => {
        statusDiv.textContent = 'Avvio generazione sul server...';
        generateBtn.disabled = true;
        playerControls.classList.add('hidden');

        // Resetta lo stato precedente
        Tone.Transport.cancel(0);
        Tone.Transport.stop();
        synths.forEach(s => s.dispose());
        synths = [];
        totalTimeOffset = 0;
        nextChunkToFetch = 0;
        isGenerationFinished = false;

        try {
            await Tone.start();

            const response = await fetch('/start_generation', {
                method: 'POST',
                headers: {'Content-Type': 'application/json'},
                body: JSON.stringify({
                    valence: parseFloat(valenceSlider.value),
                    arousal: parseFloat(arousalSlider.value),
                }),
            });
            const data = await response.json();
            sessionId = data.session_id;

            // Inizia il processo di buffering
            fetchAndScheduleNextChunk();

        } catch (error) {
            console.error("Errore nell'avviare la generazione:", error);
            statusDiv.textContent = `Errore: ${error.message}`;
            generateBtn.disabled = false;
        }
    });

    playBtn.addEventListener('click', () => {
        if (Tone.Transport.state !== 'started') {
            Tone.Transport.start();
            statusDiv.textContent = 'In riproduzione...';
        }
    });

    stopBtn.addEventListener('click', () => {
        if (Tone.Transport.state !== 'stopped') {
            Tone.Transport.stop();
            // Non cancellare gli eventi, così l'utente può riprendere da dove ha lasciato
            statusDiv.textContent = 'Playback fermato.';
        }
    });
});