# Marketing — demo em vídeo

Esta pasta contém uma **simulação visual de alta fidelidade** do painel Discord (não liga ao teu bot real) e um gerador de vídeo para **trailers / anúncios**.

## Gerar o vídeo (WebM + MP4)

Requisitos: Node 20+, **ffmpeg** no PATH, e Chromium do Playwright.

```bash
cd /workspace
npm install
npx playwright install chromium
node marketing/record-demo.mjs
```

Saída:

- `marketing/output/bot-demo-marketing.webm`
- `marketing/output/bot-demo-marketing.mp4` (se o `ffmpeg` converter com sucesso)

Pré-visualizar a animação no browser (sem gravar):

```bash
# a partir da raiz do repo
npx --yes serve marketing/demo -p 3333
# abrir http://127.0.0.1:3333
```

## Narração

Usa `VOICEOVER-PT.md` como guia para gravar voz em PT ou para gerar TTS. Mistura no **DaVinci Resolve**, **CapCut** ou **Audacity** + `ffmpeg`.

## Gravar o bot real no Discord

Para um vídeo “100% autêntico” com o teu servidor:

1. Gera primeiro este trailer (ou usa como B-roll).
2. No **OBS Studio**, captura a janela do Discord em 1920×1080, 60 fps.
3. Segue o mesmo roteiro de `VOICEOVER-PT.md` clicando nas mesmas secções do painel real.

Discord não permite bots a enviarem vídeo para canais por API de forma trivial; o fluxo profissional é **gravar localmente** e publicar no YouTube / redes sociais.
