# AGENTS.md

## Cursor Cloud specific instructions

### Repository Structure

This repository uses a **multi-branch architecture**: the `main` branch contains only a `README.md`. All product code lives on separate feature branches:

| Product | Branch | Stack | Port |
|---|---|---|---|
| Spartan Roleplay Panel | `origin/cursor/painel-de-login-spartan-e081` | Node.js, Express 5, SQLite (better-sqlite3), JWT | 3000 |
| MTA:SA Admin Panel | `origin/cursor/interface-l-gica-servidor-8164` | Node.js, Express 5, WebSocket (ws) | 3000 |

### Running the Applications

Both web apps are Node.js/Express servers. To work on a specific product, use `git worktree` to check out its branch separately, then install and run.

**Spartan Roleplay Panel** (requires JWT secrets):
```bash
git worktree add /tmp/spartan-panel origin/cursor/painel-de-login-spartan-e081
cd /tmp/spartan-panel && npm install
JWT_SECRET=dev-secret-key JWT_REFRESH_SECRET=dev-refresh-secret node server.js
```

**MTA:SA Admin Panel** (no env vars required):
```bash
git worktree add /tmp/mta-panel origin/cursor/interface-l-gica-servidor-8164
cd /tmp/mta-panel/mta-server && npm install
node src/server.js
```

### Key Caveats

- Both apps default to **port 3000**. When running both simultaneously, set `PORT=3001` (or another available port) for the second app.
- The Spartan Panel auto-initializes its SQLite database on first run (creates `database/spartan.db`) with seeded admin user (`Admin` / `Admin@Spartan123`).
- The MTA Panel uses in-memory simulated state (no persistent DB) — data resets on restart.
- Neither project has automated tests or a linter configured.
- The Spartan Panel requires `JWT_SECRET` and `JWT_REFRESH_SECRET` environment variables; without them, auth routes will crash.
