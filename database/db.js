const Database = require('better-sqlite3');
const path = require('path');
const fs = require('fs');

// On Render/Docker the disk is mounted at /app/database, otherwise use local path
const dbDir = process.env.DB_PATH
  ? path.resolve(process.env.DB_PATH)
  : path.join(__dirname);

if (!fs.existsSync(dbDir)) fs.mkdirSync(dbDir, { recursive: true });

const db = new Database(path.join(dbDir, 'spartan.db'));

db.pragma('journal_mode = WAL');
db.pragma('foreign_keys = ON');

db.exec(`
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL COLLATE NOCASE,
    email TEXT UNIQUE NOT NULL COLLATE NOCASE,
    password TEXT NOT NULL,
    role TEXT DEFAULT 'player' CHECK(role IN ('player','vip','moderator','admin','owner')),
    avatar TEXT DEFAULT NULL,
    discord_id TEXT DEFAULT NULL,
    steam_id TEXT DEFAULT NULL,
    playtime INTEGER DEFAULT 0,
    characters INTEGER DEFAULT 0,
    warnings INTEGER DEFAULT 0,
    bans INTEGER DEFAULT 0,
    is_banned INTEGER DEFAULT 0,
    ban_reason TEXT DEFAULT NULL,
    ban_expires TEXT DEFAULT NULL,
    last_login TEXT DEFAULT NULL,
    last_ip TEXT DEFAULT NULL,
    two_factor_secret TEXT DEFAULT NULL,
    two_factor_enabled INTEGER DEFAULT 0,
    email_verified INTEGER DEFAULT 0,
    verification_token TEXT DEFAULT NULL,
    reset_token TEXT DEFAULT NULL,
    reset_token_expires TEXT DEFAULT NULL,
    created_at TEXT DEFAULT (datetime('now')),
    updated_at TEXT DEFAULT (datetime('now'))
  );

  CREATE TABLE IF NOT EXISTS refresh_tokens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    token TEXT UNIQUE NOT NULL,
    expires_at TEXT NOT NULL,
    created_at TEXT DEFAULT (datetime('now')),
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
  );

  CREATE TABLE IF NOT EXISTS login_attempts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    identifier TEXT NOT NULL,
    ip TEXT NOT NULL,
    success INTEGER DEFAULT 0,
    attempted_at TEXT DEFAULT (datetime('now'))
  );

  CREATE TABLE IF NOT EXISTS activity_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    action TEXT NOT NULL,
    details TEXT,
    ip TEXT,
    created_at TEXT DEFAULT (datetime('now')),
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE SET NULL
  );

  CREATE TABLE IF NOT EXISTS server_news (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    category TEXT DEFAULT 'general' CHECK(category IN ('general','update','event','maintenance','urgent')),
    author_id INTEGER,
    pinned INTEGER DEFAULT 0,
    published INTEGER DEFAULT 1,
    created_at TEXT DEFAULT (datetime('now')),
    updated_at TEXT DEFAULT (datetime('now')),
    FOREIGN KEY(author_id) REFERENCES users(id) ON DELETE SET NULL
  );

  CREATE TABLE IF NOT EXISTS server_status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    server_name TEXT NOT NULL,
    ip TEXT NOT NULL,
    port INTEGER NOT NULL,
    max_players INTEGER DEFAULT 128,
    current_players INTEGER DEFAULT 0,
    is_online INTEGER DEFAULT 1,
    version TEXT DEFAULT '1.0',
    last_checked TEXT DEFAULT (datetime('now'))
  );
`);

// Seed initial data
const adminExists = db.prepare('SELECT id FROM users WHERE role = ?').get('owner');
if (!adminExists) {
  const bcrypt = require('bcryptjs');
  const hash = bcrypt.hashSync('Admin@Spartan123', 12);
  db.prepare(`
    INSERT INTO users (username, email, password, role, email_verified)
    VALUES (?, ?, ?, ?, ?)
  `).run('Admin', 'admin@spartanroleplay.com', hash, 'owner', 1);

  const adminId = db.prepare('SELECT id FROM users WHERE username = ?').get('Admin').id;

  db.prepare(`
    INSERT INTO server_news (title, content, category, author_id, pinned) VALUES (?, ?, ?, ?, ?)
  `).run(
    'Bem-vindo ao Spartan Roleplay!',
    'O servidor Spartan Roleplay está no ar! Venha fazer parte da melhor experiência de roleplay do Brasil. Registre-se agora e comece sua jornada.',
    'general',
    adminId,
    1
  );

  db.prepare(`
    INSERT INTO server_news (title, content, category, author_id) VALUES (?, ?, ?, ?)
  `).run(
    'Atualização v2.0 — Novo Sistema de Empregos',
    'Estamos trazendo mais de 15 novos empregos interativos para o servidor, com missões dinâmicas e recompensas exclusivas.',
    'update',
    adminId
  );

  db.prepare(`
    INSERT INTO server_news (title, content, category, author_id) VALUES (?, ?, ?, ?)
  `).run(
    'Evento de Fim de Semana — Double XP',
    'Neste fim de semana todos os jogadores terão XP dobrado em todas as atividades. Não perca!',
    'event',
    adminId
  );

  db.prepare(`
    INSERT INTO server_status (server_name, ip, port, max_players, current_players, is_online, version) VALUES (?, ?, ?, ?, ?, ?, ?)
  `).run('Spartan Roleplay', 'play.spartanroleplay.com', 30120, 128, 47, 1, '2.4.1');
}

module.exports = db;
