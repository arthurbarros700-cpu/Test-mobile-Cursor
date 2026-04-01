#!/usr/bin/env python3
"""
MTA:SA Panel — Final Video Assembler
Combines captured frames + audio + captions into a polished MP4
"""

import subprocess, os, sys

FRAMES = "/workspace/video/frames"
AUDIO  = "/workspace/video/audio/soundtrack.wav"
FINAL  = "/workspace/video/final/mta_panel_showcase.mp4"
FPS    = 24
W, H   = 1280, 720

os.makedirs("/workspace/video/final", exist_ok=True)

def ff(*args, check=True, loglevel="error"):
    cmd = ["ffmpeg", "-y"] + list(args) + ["-loglevel", loglevel]
    print("  $", " ".join(str(a) for a in cmd[-12:]))
    subprocess.run(cmd, check=check)

# ── Step 1: Count frames ──────────────────────────────────────
frame_count = len([f for f in os.listdir(FRAMES) if f.endswith('.png')])
duration    = frame_count / FPS
print(f"📐 Frames: {frame_count} @ {FPS}fps → {duration:.1f}s")

# ── Step 2: Build captions as drawtext filter chain ───────────
# Format: (start_frame, end_frame, title, subtitle)
captions = [
    (0,   28,  "",                          ""),          # black intro
    (28,  128, "MTA:SA Control Panel",      "Sistema de Administração Profissional"),
    (148, 300, "Dashboard",                 "Estatísticas em tempo real"),
    (300, 460, "Monitor de Performance",    "CPU · RAM · Slots · Ping"),
    (460, 580, "Gestão de Jogadores",       "Kick · Ban · Mensagem Privada"),
    (580, 690, "Gerenciador de Recursos",   "Iniciar · Parar · Reiniciar"),
    (690, 760, "Sistema de Banimentos",     "Controle total de acessos"),
    (760, 880, "Console ao Vivo",           "WebSocket em tempo real"),
    (880, 960, "Configurações & Segurança", "Anti-cheat · DDoS · VPN"),
    (960, 1035,"Dashboard — Ao Vivo",       "Todos os dados sincronizados"),
    (1035,1105,"Acesse Agora",             "Sistema completo e profissional"),
]

# ── Step 3: Build complex filter ─────────────────────────────
print("\n🎬 Building video filter chain...")

# We'll use a Python-generated drawtext chain
dt_parts = []

# Cinematic letterbox (top/bottom black bars, 36px)
# We'll overlay them as part of the filter chain

# Accent line at bottom of letterbox
# Section labels
# Main captions

def esc(s):
    return s.replace("'", "'\\''").replace(":", "\\:")

# Each caption: fade in/out text
for (sf, ef, title, sub) in captions:
    if not title:
        continue
    ts  = sf / FPS
    te  = ef / FPS
    dur = te - ts
    fi  = min(0.4, dur * 0.15)
    fo  = min(0.4, dur * 0.15)
    fo_st = te - fo

    # Title (large, centered bottom third)
    dt_parts.append(
        f"drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"
        f":text='{esc(title)}'"
        f":fontcolor=white"
        f":fontsize=34"
        f":x=(w-text_w)/2"
        f":y=h*0.78"
        f":alpha='if(lt(t,{ts:.3f}),0,if(lt(t,{ts+fi:.3f}),(t-{ts:.3f})/{fi:.3f},if(lt(t,{fo_st:.3f}),1,if(lt(t,{te:.3f}),({te:.3f}-t)/{fo:.3f},0))))'"
        f":shadowcolor=black@0.8:shadowx=1:shadowy=1"
    )
    # Subtitle (smaller, below title)
    if sub:
        dt_parts.append(
            f"drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"
            f":text='{esc(sub)}'"
            f":fontcolor=0x94a3b8"
            f":fontsize=18"
            f":x=(w-text_w)/2"
            f":y=h*0.78+46"
            f":alpha='if(lt(t,{ts+0.1:.3f}),0,if(lt(t,{ts+fi+0.1:.3f}),(t-{ts+0.1:.3f})/{fi:.3f},if(lt(t,{fo_st:.3f}),1,if(lt(t,{te:.3f}),({te:.3f}-t)/{fo:.3f},0))))'"
            f":shadowcolor=black@0.8:shadowx=1:shadowy=1"
        )

# Cyan accent line above text area (always visible after title card)
ts_line = 28/FPS
dt_parts.append(
    None
) if False else None  # skip — draws via drawbox instead

# Top & bottom cinematic bars
cinematic_filter = (
    f"drawbox=x=0:y=0:w={W}:h=36:color=black@1:t=fill,"
    f"drawbox=x=0:y={H-36}:w={W}:h=36:color=black@1:t=fill,"
    # Cyan accent line (top of bottom bar)
    f"drawbox=x=0:y={H-36}:w={W}:h=2:color=0x00d4ff@0.7:t=fill"
)

# Progress bar (width goes from 0 to W over full video)
prog_filter = (
    f"drawbox="
    f"x=0:y={H-38}:w='iw*t/{duration:.2f}':h=2:"
    f"color=0x00d4ff@0.9:t=fill"
)

# Watermark / branding bottom-right
brand_filter = (
    f"drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"
    f":text='MTA\\:SA Control Panel'"
    f":fontcolor=white@0.4:fontsize=11"
    f":x=w-text_w-16:y=h-22"
)

# Assemble full filter
all_dt = ",".join(dt_parts) if dt_parts else ""
vf = cinematic_filter
if prog_filter:
    vf += "," + prog_filter
if all_dt:
    vf += "," + all_dt
vf += "," + brand_filter

# ── Step 4: Check font availability ──────────────────────────
import glob
fonts = glob.glob("/usr/share/fonts/**/*.ttf", recursive=True)
bold_font  = next((f for f in fonts if "Bold" in f and ("DejaVu" in f or "Ubuntu" in f or "Noto" in f)), None)
plain_font = next((f for f in fonts if "Bold" not in f and ("DejaVu" in f or "Ubuntu" in f or "Noto" in f)), None)

if bold_font:
    vf = vf.replace("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", bold_font)
if plain_font:
    vf = vf.replace("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf", plain_font)

print(f"  Fonts: {bold_font}, {plain_font}")

# ── Step 5: Render final video ────────────────────────────────
print("\n🎞 Rendering final MP4...")
print(f"   Input: {frame_count} frames + audio")
print(f"   Output: {FINAL}")

ff(
    "-framerate", str(FPS),
    "-i", f"{FRAMES}/frame_%05d.png",
    "-i", AUDIO,
    "-vf", vf,
    "-c:v", "libx264",
    "-preset", "slow",
    "-crf", "18",
    "-pix_fmt", "yuv420p",
    "-c:a", "aac",
    "-b:a", "192k",
    "-movflags", "+faststart",
    "-shortest",
    FINAL,
    loglevel="warning",
    check=True,
)

size = os.path.getsize(FINAL) / 1024 / 1024
print(f"\n✅ Video rendered: {FINAL}")
print(f"   Size:     {size:.1f} MB")
print(f"   Duration: {duration:.1f}s")
print(f"   Res:      {W}×{H} @ {FPS}fps")
