# Spartan Roleplay — Painel de Login

Painel de acesso completo, profissional e elegante para o servidor **Spartan Roleplay** (FiveM/GTA RP).

---

## Acessar pelo celular (opções)

### Opção 1 — Render.com (gratuito, URL permanente)

1. Acesse [render.com](https://render.com) e crie uma conta gratuita
2. Clique em **New → Web Service**
3. Conecte o repositório `Test-mobile-Cursor`
4. Configure:
   - **Runtime:** Node
   - **Build Command:** `npm install`
   - **Start Command:** `node server.js`
   - **Plan:** Free
5. Em **Environment Variables**, adicione:
   - `JWT_SECRET` → qualquer string longa e aleatória
   - `JWT_REFRESH_SECRET` → outra string longa e aleatória
6. Clique **Create Web Service** e aguarde ~2 minutos
7. Você receberá uma URL como `https://spartan-roleplay-panel.onrender.com`

> **Atenção:** No plano gratuito o Render "hiberna" o serviço após 15 min sem uso. O primeiro acesso pode demorar ~30s para acordar.

---

### Opção 2 — Railway.app (gratuito com $5/mês de crédito)

1. Acesse [railway.app](https://railway.app) e faça login com GitHub
2. Clique em **New Project → Deploy from GitHub repo**
3. Selecione `Test-mobile-Cursor`
4. Railway detecta automaticamente Node.js
5. Vá em **Variables** e adicione:
   - `JWT_SECRET` → string aleatória
   - `JWT_REFRESH_SECRET` → string aleatória
6. Em **Settings → Networking**, gere um domínio público
7. Sua URL ficará como `https://spartan-panel.up.railway.app`

---

### Opção 3 — Docker (qualquer VPS/servidor)

```bash
docker build -t spartan-panel .
docker run -d \
  -p 80:3000 \
  -e JWT_SECRET=sua_chave_secreta_aqui \
  -e JWT_REFRESH_SECRET=sua_outra_chave \
  -v spartan_data:/app/database \
  --name spartan-panel \
  spartan-panel
```

---

### Opção 4 — Rodar local + túnel Cloudflare (temporário)

```bash
# Terminal 1 — servidor
npm install
npm start

# Terminal 2 — túnel público
curl -fsSL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o cloudflared
chmod +x cloudflared
./cloudflared tunnel --url http://localhost:3000
# Você receberá uma URL https://xxxx.trycloudflare.com
```

---

## Rodar localmente

```bash
npm install
npm start
# Acesse: http://localhost:3000
```

**Credenciais de demonstração:** `Admin` / `Admin@Spartan123`

---

## Funcionalidades

- Login / Registro / Recuperação de senha com validação completa
- JWT + Refresh Tokens (sessão 24h, renovável por 7 dias)
- Proteção contra força bruta (bloqueio após 5 tentativas)
- Rate limiting em todas as rotas
- Dashboard completo após login
- Status do servidor em tempo real com barra de jogadores
- Notícias com categorias, badges e fixação
- Leaderboard Top Jogadores
- Partículas animadas + glassmorphism + tema Spartan dourado
- Design responsivo para celular, tablet e desktop
- SQLite embutido (sem servidor de banco de dados externo)

---

## Stack

- **Backend:** Node.js + Express.js + SQLite (better-sqlite3)
- **Auth:** JWT + bcrypt (12 rounds) + cookie-parser
- **Segurança:** helmet, express-rate-limit, CORS
- **Frontend:** HTML5 + CSS3 puro + JavaScript vanilla
- **Fontes:** Cinzel (display) · Rajdhani (UI) · Exo 2 (corpo)
- **Ícones:** Font Awesome 6
