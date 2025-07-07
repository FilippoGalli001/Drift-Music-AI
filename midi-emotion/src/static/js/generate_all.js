// --- START OF FILE main.js (VERSIONE FINALE, SEMPLICE E FUNZIONANTE) ---

document.addEventListener('DOMContentLoaded', () => {
    console.log("DOM Caricato. L'app si sta inizializzando.");

    // Seleziona tutti gli elementi del DOM
    const valenceSlider = document.getElementById('valence');
    const arousalSlider = document.getElementById('arousal');
    const valenceValue = document.getElementById('valence-value');
    const arousalValue = document.getElementById('arousal-value');
    const generateBtn = document.getElementById('generate-btn');
    const statusDiv = document.getElementById('status');
    const playerControls = document.getElementById('player-controls');
    const playBtn = document.getElementById('play-btn');
    const stopBtn = document.getElementById('stop-btn');

    let currentMidi = null;
    let synths = [];

    // Funzione per preparare e schedulare il MIDI
    async function scheduleMidi(arrayBuffer) {
        console.log("Inizio scheduling del MIDI ricevuto.");

        // 1. Ferma e cancella qualsiasi musica precedente
        if (Tone.Transport.state === 'started') {
            Tone.Transport.stop();
        }
        Tone.Transport.cancel(0);

        // 2. Pulisci i vecchi sintetizzatori per liberare risorse
        synths.forEach(synth => synth.dispose());
        synths = [];
        console.log("Sintetizzatori precedenti puliti.");

        // 3. Parsa il file MIDI
        try {
            currentMidi = new Midi(arrayBuffer);
            console.log("File MIDI parsato con successo:", currentMidi);
        } catch (e) {
            console.error("ERRORE CRITICO: Impossibile parsare il file MIDI.", e);
            statusDiv.textContent = 'Errore: Il file MIDI generato non è valido.';
            return;
        }

        // 4. Per ogni traccia, crea un SINTETIZZATORE BASE e schedula le note
        // Questo è il cuore della soluzione: usiamo solo Tone.Synth, che è un oscillatore
        // e NON carica file esterni, eliminando l'errore "NotSupportedError".
        // 4. Per ogni traccia, crea un SINTETIZZATORE più complesso
        currentMidi.tracks.forEach((track, index) => {
            // USA UN SINTETIZZATORE FM (Frequency Modulation)
            // È più ricco di un semplice oscillatore.
            // Lo avvolgiamo in un PolySynth per permettere di suonare più note contemporaneamente.
            const synth = new Tone.PolySynth(Tone.FMSynth, {
                envelope: { attack: 0.02, decay: 0.1, sustain: 0.3, release: 1 }
            }).toDestination();
            synths.push(synth);

            if (!track.notes || track.notes.length === 0) {
                console.log(`Traccia ${index} (${track.name}) non ha note.`);
                return;
            }

            console.log(`Schedulando ${track.notes.length} note per la traccia ${index} (${track.name})`);

            // Schedula ogni nota per il suo synth specifico
            track.notes.forEach(note => {
                Tone.Transport.schedule(time => {
                    // Usiamo 'time' dalla schedule per una temporizzazione precisa
                    synth.triggerAttackRelease(note.name, note.duration, time, note.velocity);
                }, note.time);
            });
        });

        // 5. Controlla se è stato generato qualcosa di riproducibile
        if (!currentMidi || currentMidi.tracks.every(t => t.notes.length === 0)) {
            statusDiv.textContent = 'Nessuna nota generata. Riprova.';
            console.log("Nessuna nota valida trovata nel file MIDI.");
            return;
        }

        // 6. Abilita i controlli del player
        playerControls.classList.remove('hidden');
        playBtn.disabled = false;
        stopBtn.disabled = false;
        statusDiv.textContent = 'Generazione completata! Premi Play.';
        console.log("Scheduling completato. Pronto per il playback.");
    }

    statusDiv.textContent = 'Pronto a generare musica.';

    valenceSlider.oninput = () => valenceValue.textContent = parseFloat(valenceSlider.value).toFixed(1);
    arousalSlider.oninput = () => arousalValue.textContent = parseFloat(arousalSlider.value).toFixed(1);

    generateBtn.addEventListener('click', async () => {
        statusDiv.textContent = 'Generazione in corso....';
        generateBtn.disabled = true;
        playerControls.classList.add('hidden');

        try {
            // FONDAMENTALE: Tone.start() deve essere chiamato da un evento utente
            // per attivare l'AudioContext del browser.
            await Tone.start();
            console.log("AudioContext avviato con successo.");

            const response = await fetch('/generate', {
                method: 'POST',
                headers: {'Content-Type': 'application/json'},
                body: JSON.stringify({
                    valence: parseFloat(valenceSlider.value),
                    arousal: parseFloat(arousalSlider.value),
                }),
            });

            if (!response.ok) {
                const errorData = await response.json();
                throw new Error(errorData.error || 'Errore sconosciuto dal server.');
            }

            const arrayBuffer = await response.arrayBuffer();
            console.log(`Ricevuto ArrayBuffer di ${arrayBuffer.byteLength} bytes.`);

            await scheduleMidi(arrayBuffer);

        } catch (error) {
            console.error("Errore nel processo di generazione/fetch:", error);
            statusDiv.textContent = `Errore: ${error.message}`;
        } finally {
            generateBtn.disabled = false;
        }
    });

    playBtn.addEventListener('click', () => {
        if (currentMidi && Tone.Transport.state !== 'started') {
            console.log("Pulsante Play premuto! Avvio del Tone.Transport.");
            Tone.Transport.start();
            statusDiv.textContent = 'In riproduzione...';
        }
    });

    stopBtn.addEventListener('click', () => {
        if (Tone.Transport.state !== 'stopped') {
            console.log("Pulsante Stop premuto. Fermo del Tone.Transport.");
            Tone.Transport.stop();
            statusDiv.textContent = 'Playback fermato.';
        }
    });
});