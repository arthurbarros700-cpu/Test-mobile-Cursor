# Spartan Roleplay — Painel de Login

Painel de login profissional e elegante para o servidor **Spartan Roleplay** (FiveM/GTA RP).

## Funcionalidades

- **Login / Registro / Recuperação de senha** com validação completa
- **JWT + Refresh Tokens** para sessões seguras
- **Proteção contra força bruta** (rate limiting + bloqueio por tentativas)
- **Dashboard** com estatísticas do jogador após login
- **Status do servidor** em tempo real com barra de jogadores
- **Notícias do servidor** com categorias e fixação
- **Leaderboard** com Top Jogadores
- **Partículas animadas** + glassmorphism + tema dourado Spartan
- **Design 100% responsivo**
- **SQLite** embutido (sem precisar de servidor de banco de dados)

## Como rodar

```bash
# Instalar dependências
npm install

# Iniciar o servidor
npm start
```

Acesse: **http://localhost:3000**

## Credenciais de demonstração

| Usuário | Senha |
|---------|-------|
| Admin   | Admin@Spartan123 |

## Tecnologias

- **Backend:** Node.js + Express.js
- **Auth:** JWT + bcrypt
- **Banco:** SQLite (better-sqlite3)
- **Frontend:** HTML5 + CSS3 puro + JavaScript vanilla
- **Fontes:** Cinzel (display) + Rajdhani (UI) + Exo 2 (corpo)
- **Ícones:** Font Awesome 6

## Estrutura

```
/
├── server.js           # Servidor Express + rotas API
├── database/
│   └── db.js           # Configuração SQLite + seed inicial
├── public/
│   ├── index.html      # HTML do painel
│   └── assets/
│       ├── css/style.css  # Estilos + animações
│       └── js/app.js      # Lógica cliente
└── .env                # Configurações (não versionado)
```
