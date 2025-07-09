import json
import pretty_midi
import pypianoroll
import hdf5_getters
from tqdm import tqdm
import os
import concurrent.futures
import collections
import utils
from glob import glob
import pandas as pd
import csv
from copy import deepcopy

"""
Written by Serkan Sulun

Creates labels for Lakh MIDI (or pianoroll) dataset.
Labels include low-level MIDI features such as tempo, note density and number of MIDI files.
They also include high-level features obtained from Spotify Developer API, such as valence, energy, etc.

See utils.py and fill in the variables client_id and client_secret.

When the user quota is exceeded, Spotify blocks access and the script gets stuck.
In that case, you may need to re-run the script some time later,
or use a different account with different client ID and secret.
"""

def run_parallel(func, my_iter):
    # Parallel processing visualized with tqdm
    with concurrent.futures.ProcessPoolExecutor() as executor:
        results = list(tqdm(executor.map(func, my_iter), total=len(my_iter)))
    return results

write = True    
redo = True

main_output_dir = "../../data_files/features"
os.makedirs(main_output_dir, exist_ok=True)

match_scores_path = "../../data_files/match_scores.json"
msd_summary_path = "../../data_files/msd_summary_file.h5"
echonest_folder_path = "../../data_files/millionsongdataset_echonest"

use_pianoroll_dataset = True
if use_pianoroll_dataset:
    midi_dataset_path = "../../data_files/lpd_full/lpd/lpd_full"
    extension = ".npz"
    output_dir = os.path.join(main_output_dir, "pianoroll")
else:
    midi_dataset_path = "lmd_full"
    extension = ".mid"
    output_dir = os.path.join(main_output_dir, "midi")
os.makedirs(output_dir, exist_ok=True)

### PART I: Map track_ids (in midi dataset) to Spotify features

### 1- Create mappings track_id (in midi dataset) -> metadata (in Echonest)

output_path = os.path.join(output_dir, "trackid_to_songid.json")

with open(match_scores_path, "r") as f:
    match_scores = json.load(f)

track_ids = sorted(list(match_scores.keys()))

if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        trackid_to_songid = json.load(f)
else:
    h5_msd = hdf5_getters.open_h5_file_read(msd_summary_path)
    n_msd = hdf5_getters.get_num_songs(h5_msd)

    trackid_to_songid = {}
    print("Adding metadata to each track in Lakh dataset")

    # n_msd
    for i in tqdm(range(100)):
        track_id = hdf5_getters.get_track_id(h5_msd, i).decode("utf-8")
        if track_id in track_ids:
            # get data from MSD
            song_id = hdf5_getters.get_song_id(h5_msd, i).decode("utf-8")
            artist = hdf5_getters.get_artist_name(h5_msd, i).decode("utf-8")
            title = hdf5_getters.get_title(h5_msd, i).decode("utf-8")
            release = hdf5_getters.get_release(h5_msd, i).decode("utf-8")
            trackid_to_songid[track_id] = {"song_id": song_id,"title": title, 
                            "artist": artist, "release": release}

    # sort
    trackid_to_songid = collections.OrderedDict(sorted(trackid_to_songid.items()))
    if write:
        with open(output_path, "w") as f:
            json.dump(trackid_to_songid, f, indent=4)
            print(f"Output saved to {output_path}")

### 2- Create mappings metadata (in Echonest) -> Spotify IDs
output_path = os.path.join(output_dir, "songid_to_spotify.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        songid_to_spotify = json.load(f)
else:
    song_ids = sorted([val["song_id"] for val in trackid_to_songid.values()])
    songid_to_spotify = {}
    print("Mapping Echonest song IDs to Spotify song IDs")
    for song_id in tqdm(song_ids):
        file_path = os.path.join(echonest_folder_path, song_id[2:4], song_id + ".json")
        spotify_ids = utils.get_spotify_ids(file_path)
        songid_to_spotify[song_id] = spotify_ids
    if write:
        with open(output_path, "w") as f:
            json.dump(songid_to_spotify, f, indent=4)
            print(f"Output saved to {output_path}")


### PART II: Dealing with symbolic music data
### 4- Revert matching scores
""" Matched data has the format: track_ID -> midi_file 
where multiple tracks could be mapped to a single midi file.
We want to revert this mapping and then keep unique midi files
Revert match scores file to have mapping midi_file -> track_ID
"""

output_path = os.path.join(output_dir, "match_scores_reverse.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        match_scores_reversed = json.load(f)
else:
    with open(match_scores_path, "r") as f:
        in_data = json.load(f)
    match_scores_reversed = {}
    print("Reversing match scores.")
    for track_id, matching in tqdm(in_data.items()):
        for file_, score in matching.items():
            if file_ not in match_scores_reversed.keys():
                match_scores_reversed[file_] = {track_id: score}
            else:
                match_scores_reversed[file_][track_id] = score

    # order match scores
    for k in match_scores_reversed.keys():
        match_scores_reversed[k] = collections.OrderedDict(sorted(match_scores_reversed[k].items(), reverse=True, key=lambda x: x[-1]))

    # order filenames
    match_scores_reversed = collections.OrderedDict(sorted(match_scores_reversed.items(), key=lambda x: x[0]))
    if write:
        with open(output_path, "w") as f:
            json.dump(match_scores_reversed, f, indent=4)
            print(f"Output saved to {output_path}")

# 5- Filter match scores to only keep best match
output_path = os.path.join(output_dir, "best_match_scores.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        best_match_scores_reversed = json.load(f)
else:
    best_match_scores_reversed = {}
    print("Selecting best matching tracks.")
    for midi_file, match in tqdm(match_scores_reversed.items()):
        best_match_scores_reversed[midi_file] = list(match.items())[0]
    if write:
        with open(output_path, "w") as f:
            json.dump(best_match_scores_reversed, f, indent=4)
            print(f"Output saved to {output_path}")

### 6- Filter unique midis
"""LMD was created by creating hashes for the entire files
and then keeping files with unique hashes.
However, some files' musical content are the same, and only their metadata are different.
So we hash the content (pianoroll array), and further filter out the unique ones."""
# Create hashes for midis

output_path = os.path.join(output_dir, "hashes.json")

if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_file_to_hash = json.load(f)
else:
    def get_hash_and_file(path):
        hash_ = utils.get_hash(path)
        file_ = os.path.basename(path)
        file_ = file_[:-4]
        return [file_, hash_]

    file_paths = sorted(glob(midi_dataset_path + "/**/*" + extension, recursive=True))
    assert len(file_paths) > 0, f"No MIDI files found at {midi_dataset_path}"
    print("Getting hashes for MIDIs.")
    midi_file_to_hash = run_parallel(get_hash_and_file, file_paths)
    midi_file_to_hash = sorted(midi_file_to_hash, key=lambda x:x[0])
    midi_file_to_hash = dict(midi_file_to_hash)
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_file_to_hash, f, indent=4)
            print(f"Output saved to {output_path}")

# also do the reverse hash -> midi
output_path = os.path.join(output_dir, "unique_files.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_files_unique = json.load(f)
else:
    hash_to_midi_file = {}
    for midi_file, hash in midi_file_to_hash.items():
        try:
            best_match_score = best_match_scores_reversed[midi_file][1]
        except:
            best_match_score = 0
        if hash in hash_to_midi_file.keys():
            hash_to_midi_file[hash].append((midi_file, best_match_score))
        else:
            hash_to_midi_file[hash] = [(midi_file, best_match_score)]

    midi_files_unique = []
    # Get unique midis (with highest match score)
    print("Getting unique MIDIs.")
    for hash, midi_files_and_match_scores in hash_to_midi_file.items():
        if hash != "empty_pianoroll":
            midi_files_and_match_scores = sorted(midi_files_and_match_scores, key=lambda x: x[1], reverse=True)
            midi_files_unique.append(midi_files_and_match_scores[0][0])
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_files_unique, f, indent=4)
            print(f"Output saved to {output_path}")

# create unique matched midis list
midi_files_matched = list(match_scores_reversed.keys())

output_path = os.path.join(output_dir, "midis_matched_unique.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_files_matched_unique = json.load(f)
else:
    print("Getting unique matched MIDIs.")
    midi_files_matched_unique = sorted(list(set(midi_files_matched).intersection(midi_files_unique)))
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_files_matched_unique, f, indent=4)
            print(f"Output saved to {output_path}")

# create unique unmatched midis list
output_path = os.path.join(output_dir, "midis_unmatched_unique.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_files_unmatched_unique = json.load(f)
else:
    print("Getting unique unmatched MIDIs.")
    midi_files_unmatched_unique = sorted(list(set(midi_files_unique) - set(midi_files_matched_unique)))
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_files_unmatched_unique, f, indent=4)
            print(f"Output saved to {output_path}")

### 6- Create mappings: midi -> best matching track ID, spotify features
output_path = os.path.join(output_dir, "spotify_features.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_file_to_spotify_features = json.load(f)
else:
    midi_file_to_spotify_features = {}
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_file_to_spotify_features, f, indent=4)
            print(f"Output saved to {output_path}")

### 7- For all midis, get low level features 
# (tempo, note density, number of instruments)

output_path = os.path.join(output_dir, "midi_features.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_file_to_midi_features = json.load(f)
else:
    def get_midi_features(midi_file):
        midi_path = os.path.join(midi_dataset_path, midi_file[0], midi_file + extension)
        if use_pianoroll_dataset:
            mid = pypianoroll.load(midi_path).to_pretty_midi()
        else:
            mid = pretty_midi.PrettyMIDI(midi_path)
        note_density = utils.get_note_density(mid)
        tempo = utils.get_tempo(mid)
        n_instruments = utils.get_n_instruments(mid)
        duration = mid.get_end_time()
        midi_features = {
            "note_density": note_density,
            "tempo": tempo,
            "n_instruments": n_instruments,
            "duration": duration,
        }
        return [midi_file, midi_features]
    print("Getting low-level MIDI features")
    midi_file_to_midi_features = run_parallel(get_midi_features, midi_files_unique)
    midi_file_to_midi_features = dict(midi_file_to_midi_features)
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_file_to_midi_features, f, indent=4)
            print(f"Output saved to {output_path}")

### 8- Merge MIDI features and matched (Spotify) features
output_path = os.path.join(output_dir, "full_dataset_features.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        midi_file_to_merged_features = json.load(f)
else:
    midi_file_to_merged_features = {}
    print("Merging MIDI features and Spotify features for full dataset.")
    for midi_file in tqdm(midi_file_to_midi_features.keys()):
        midi_file_to_merged_features[midi_file] = {}
        midi_file_to_merged_features[midi_file]["midi_features"] = midi_file_to_midi_features[midi_file]
        if midi_file in midi_file_to_spotify_features.keys():
            matched_features = midi_file_to_spotify_features[midi_file]
        else:
            matched_features = {}
        midi_file_to_merged_features[midi_file]["matched_features"] = matched_features
    if write:
        with open(output_path, "w") as f:
            json.dump(midi_file_to_merged_features, f, indent=4)
            print(f"Output saved to {output_path}")

### Do the same for matched dataset
output_path = os.path.join(output_dir, "matched_dataset_features.json")
if os.path.exists(output_path) and not redo:
    with open(output_path, "r") as f:
        matched_midi_file_to_merged_features = json.load(f)
else:
    print("Merging MIDI features and Spotify features for the matched dataset.")
    matched_midi_file_to_merged_features = \
        {file_: midi_file_to_merged_features[file_] for file_ in tqdm(midi_files_matched_unique)}
    if write:
        with open(output_path, "w") as f:
            json.dump(matched_midi_file_to_merged_features, f, indent=4)
            print(f"Output saved to {output_path}")

### PART III: Constructing training dataset
### 9- Summarize matched dataset features by only taking valence and note densities per instrument,
# number of instruments, durations, is_matched

output_path = os.path.join(output_dir, "full_dataset_features_summarized.csv")
if not os.path.exists(output_path) or redo:
    print("Constructing training dataset (final file)")
    dataset_summarized = []
    for midi_file, features in tqdm(midi_file_to_merged_features.items()):
        midi_features = features["midi_features"]
        n_instruments = midi_features["n_instruments"]
        note_density_per_instrument = midi_features["note_density"] / n_instruments
        matched_features = features["matched_features"]
        if matched_features == {}:
            is_matched = False
            valence = float("nan")
        else:
            is_matched = True
            spotify_audio_features = matched_features["spotify_audio_features"]
            if spotify_audio_features is None or spotify_audio_features == "":
                valence = float("nan")
            else:
                if spotify_audio_features["valence"] == 0.0:
                    # An unusual number of samples have a valence of 0.0
                    # which is possibly due to an error. Feel free to comment out.
                    valence = float("nan")
                else:
                    valence = spotify_audio_features["valence"]
        
        dataset_summarized.append({
            "file": midi_file,
            "is_matched": is_matched,
            "n_instruments": n_instruments,
            "note_density_per_instrument": note_density_per_instrument,
            "valence": valence
        })
    dataset_summarized = pd.DataFrame(dataset_summarized)
    if write:
        dataset_summarized.to_csv(output_path, index=False)
        print(f"Output saved to {output_path}")