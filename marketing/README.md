# Marketing — demo em vídeo

Esta pasta contém uma **simulação visual de alta fidelidade** do painel Discord (não liga ao teu bot real) e um gerador de vídeo para **trailers / anúncios**.

## Ver a demo no telemóvel (browser)

Abre no Chrome/Safari — a animação corre na página (não precisas de app):

- **Demo em ecrã completo** (branch com `/` codificado como `%2F`):  
  https://cdn.jsdelivr.net/gh/arthurbarros700-cpu/Test-mobile-Cursor@cursor%2Fbot-discord-mta-painel-5e30/marketing/demo/index.html  

- **Página com moldura 16:9** (melhor em telemóvel): após ativares **GitHub Pages** (pasta `docs/` na branch `main`), usa  
  `https://<teu-user>.github.io/<repo>/demo.html`  
  (o ficheiro está em `docs/demo.html` no repositório).

Em telemóvel, roda o ecrã para **horizontal** para ver o layout 1920×1080 sem cortar.

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
