# Vídeo de Apresentação - Royal Match Auto Bot

Este diretório contém os artefatos usados para gerar o vídeo de apresentação profissional.

## Arquivo final

- `output/royal_match_auto_bot_apresentacao_compat.mp4` (recomendado para celular, H.264 yuv420p)
- `output/royal_match_auto_bot_apresentacao.mp4` (versão master)

## Componentes do vídeo

- Narração PT-BR: `assets/narracao_ptbr.mp3`
- Trilha sonora original: `assets/trilha_fundo.wav`
- Slides visuais: `assets/slides/slide_*.png`
- Roteiro da locução: `assets/narracao_ptbr.txt`

## Scripts

- `scripts/generate_video_assets.py`: gera os slides visuais
- `scripts/render_video.sh`: pipeline de render e mixagem

## Regerar vídeo

```bash
python3 media/scripts/generate_video_assets.py
bash media/scripts/render_video.sh
```
