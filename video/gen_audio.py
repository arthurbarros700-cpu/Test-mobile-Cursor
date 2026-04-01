#!/usr/bin/env python3
"""MTA:SA Panel — Cinematic Audio Generator (Python version, no bc needed)"""

import subprocess, os, shutil

OUT = "/workspace/video/audio"
TMP = OUT + "/tmp"
os.makedirs(TMP, exist_ok=True)

BPM    = 128
BEAT   = 60.0 / BPM          # 0.46875s per beat
BAR    = BEAT * 4             # 1.875s per bar
TOTAL  = 47
NOTE16 = BEAT / 4             # 16th note

def ff(*args, loglevel="error"):
    cmd = ["ffmpeg", "-y"] + list(args) + ["-loglevel", loglevel]
    subprocess.run(cmd, check=True)

def sine_file(freq, dur, vol, outfile, extra_af=""):
    af = f"volume={vol}"
    fade_dur = min(0.04, dur * 0.1)
    fade_out_st = max(0, dur - fade_dur)
    af += f",afade=t=in:st=0:d={fade_dur:.4f},afade=t=out:st={fade_out_st:.4f}:d={fade_dur:.4f}"
    if extra_af:
        af += "," + extra_af
    ff("-f", "lavfi", "-i", f"sine=frequency={freq}:duration={dur:.4f}",
       "-af", af, "-ar", "44100", "-ac", "2", outfile)

print("🎵 Generating cinematic audio track...")

# ── Sub-bass ─────────────────────────────────────────────────
print("  ↳ Sub-bass...")
ff("-f", "lavfi", "-i", f"sine=frequency=60:duration={TOTAL}",
   "-af", f"volume=0.45,lowpass=f=120",
   "-ar", "44100", "-ac", "2", f"{TMP}/bass.wav")

# ── Pad layers ───────────────────────────────────────────────
print("  ↳ Pad chords...")
for freq, name in [(220,"pad1"),(277,"pad2"),(330,"pad3"),(165,"pad4")]:
    ff("-f", "lavfi", "-i", f"sine=frequency={freq}:duration={TOTAL}",
       "-af", f"volume=0.13,lowpass=f=1200,aecho=0.5:0.5:50|60:0.25|0.2",
       "-ar", "44100", "-ac", "2", f"{TMP}/{name}.wav")

# ── Arp melody ────────────────────────────────────────────────
print("  ↳ Arp melody...")
notes = [440,523,659,784,659,523,440,392,440,523,659,880,784,659,523,440]
note_files = []
for i, n in enumerate(notes):
    p = f"{TMP}/n{i}.wav"
    sine_file(n, NOTE16, 0.4, p)
    note_files.append(p)

# concat into one bar
inputs = []
for f in note_files:
    inputs += ["-i", f]
filt = "".join(f"[{i}:a]" for i in range(len(note_files)))
filt += f"concat=n={len(note_files)}:v=0:a=1[out]"
ff(*inputs, "-filter_complex", filt, "-map", "[out]", f"{TMP}/arp_bar.wav")

# loop bar
ff("-stream_loop", "-1", "-i", f"{TMP}/arp_bar.wav",
   "-t", str(TOTAL),
   "-af", "volume=0.30,highpass=f=280,aecho=0.8:0.5:37.5:0.22",
   f"{TMP}/arp.wav")

# ── Hi-hat noise ─────────────────────────────────────────────
print("  ↳ Hi-hats...")
hat_dur = BEAT / 2
ff("-f", "lavfi", "-i", f"anoisesrc=color=white:duration={hat_dur:.4f}",
   "-af", f"volume=0.25,highpass=f=9000,lowpass=f=18000,afade=t=out:st=0:d={hat_dur:.4f}",
   f"{TMP}/hat.wav")
ff("-stream_loop", "-1", "-i", f"{TMP}/hat.wav",
   "-t", str(TOTAL), "-af", "volume=0.18", f"{TMP}/hats.wav")

# ── Cinematic swell ───────────────────────────────────────────
print("  ↳ Swell...")
ff("-f", "lavfi", "-i", f"sine=frequency=110:duration={TOTAL}",
   "-af", f"volume=0.07,lowpass=f=280,afade=t=in:st=3:d=10,afade=t=out:st=38:d=9",
   "-ar", "44100", "-ac", "2", f"{TMP}/swell.wav")

# ── Sparkle (high arp accent) ────────────────────────────────
print("  ↳ Sparkle accent...")
sp_notes = [1760, 1318, 1047, 880, 1047, 1318, 1760, 2093]
sp_files = []
for i, n in enumerate(sp_notes):
    p = f"{TMP}/sp{i}.wav"
    sine_file(n, NOTE16 * 2, 0.12, p)
    sp_files.append(p)
inputs2 = []
for f in sp_files:
    inputs2 += ["-i", f]
filt2 = "".join(f"[{i}:a]" for i in range(len(sp_files)))
filt2 += f"concat=n={len(sp_files)}:v=0:a=1[out]"
ff(*inputs2, "-filter_complex", filt2, "-map", "[out]", f"{TMP}/sparkle_bar.wav")
ff("-stream_loop", "-1", "-i", f"{TMP}/sparkle_bar.wav",
   "-t", str(TOTAL),
   "-af", "volume=0.22,highpass=f=1400,aecho=0.8:0.6:60:0.3",
   f"{TMP}/sparkle.wav")

# ── Mix all layers ────────────────────────────────────────────
print("  ↳ Mixing...")
layers = ["bass","pad1","pad2","pad3","pad4","arp","hats","swell","sparkle"]
mix_inputs = []
for l in layers:
    mix_inputs += ["-i", f"{TMP}/{l}.wav"]

n = len(layers)
inp_chain = "".join(f"[{i}:a]" for i in range(n))
weights = "1.0 0.55 0.45 0.38 0.32 0.85 0.45 0.28 0.30"
filt_mix = (
    f"{inp_chain}amix=inputs={n}:duration=longest:weights={weights}[mix];"
    "[mix]compand=attacks=0:points=-90/-90|-70/-70|-30/-18|-10/-8|0/-4:gain=2.5[comp];"
    "[comp]equalizer=f=80:t=h:width=60:g=2.5,"
    "equalizer=f=3500:t=h:width=2000:g=1.8,"
    "equalizer=f=9000:t=h:width=5000:g=1.2,"
    f"afade=t=in:st=0:d=1.0,afade=t=out:st=43:d=4[final]"
)

ff(*mix_inputs,
   "-filter_complex", filt_mix,
   "-map", "[final]",
   "-ar", "44100", "-ac", "2",
   "-t", str(TOTAL),
   f"{OUT}/soundtrack.wav")

print(f"  ✅ Soundtrack saved: {OUT}/soundtrack.wav")
size = os.path.getsize(f"{OUT}/soundtrack.wav")
print(f"     Size: {size/1024/1024:.1f} MB")
