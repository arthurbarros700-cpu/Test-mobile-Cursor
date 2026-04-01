#!/usr/bin/env bash
set -euo pipefail

OUT_DIR="/workspace/media/output"
ASSETS="/workspace/media/assets"
mkdir -p "$OUT_DIR"

# 7 slides com 16s cada (2s de transição), total ~100s
ffmpeg -y   -loop 1 -t 16 -i "$ASSETS/slides/slide_01.png"   -loop 1 -t 16 -i "$ASSETS/slides/slide_02.png"   -loop 1 -t 16 -i "$ASSETS/slides/slide_03.png"   -loop 1 -t 16 -i "$ASSETS/slides/slide_04.png"   -loop 1 -t 16 -i "$ASSETS/slides/slide_05.png"   -loop 1 -t 16 -i "$ASSETS/slides/slide_06.png"   -loop 1 -t 16 -i "$ASSETS/slides/slide_07.png"   -filter_complex "    [0:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v0];    [1:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v1];    [2:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v2];    [3:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v3];    [4:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v4];    [5:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v5];    [6:v]scale=1920:1080,zoompan=z='min(zoom+0.0006,1.10)':d=480:s=1920x1080,setsar=1[v6];    [v0][v1]xfade=transition=fade:duration=2:offset=14[x1];    [x1][v2]xfade=transition=fade:duration=2:offset=28[x2];    [x2][v3]xfade=transition=fade:duration=2:offset=42[x3];    [x3][v4]xfade=transition=fade:duration=2:offset=56[x4];    [x4][v5]xfade=transition=fade:duration=2:offset=70[x5];    [x5][v6]xfade=transition=fade:duration=2:offset=84,format=yuv420p[v]"   -map "[v]" -r 30 -c:v libx264 -preset medium -crf 18   "$OUT_DIR/video_sem_audio.mp4"

# Mixagem: música de fundo + narração
ffmpeg -y   -i "$OUT_DIR/video_sem_audio.mp4"   -stream_loop -1 -i "$ASSETS/trilha_fundo.wav"   -i "$ASSETS/narracao_ptbr.mp3"   -filter_complex "    [1:a]volume=0.18,afade=t=in:st=0:d=2,afade=t=out:st=104:d=4[mus];    [2:a]volume=1.4,highpass=f=120,lowpass=f=5000,acompressor=threshold=-18dB:ratio=3:attack=20:release=200,adelay=400|400[nar];    [mus][nar]amix=inputs=2:duration=first:dropout_transition=2[aout]"   -map 0:v -map "[aout]" -c:v copy -c:a aac -b:a 320k -shortest   "$OUT_DIR/royal_match_auto_bot_apresentacao.mp4"

echo "Video final: $OUT_DIR/royal_match_auto_bot_apresentacao.mp4"
