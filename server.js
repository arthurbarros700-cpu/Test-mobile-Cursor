require('dotenv').config();
const express = require('express');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const helmet = require('helmet');
const morgan = require('morgan');
const cookieParser = require('cookie-parser');
const rateLimit = require('express-rate-limit');
const path = require('path');
const db = require('./database/db');

const app = express();
const PORT = process.env.PORT || 3000;

// ─── Security & Middleware ─────────────────────────────────────────────────────
app.use(helmet({
  contentSecurityPolicy: {
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ["'self'", "'unsafe-inline'", 'https://fonts.googleapis.com', 'https://cdnjs.cloudflare.com'],
      fontSrc: ["'self'", 'https://fonts.gstatic.com', 'https://cdnjs.cloudflare.com'],
      scriptSrc: ["'self'", "'unsafe-inline'"],
      imgSrc: ["'self'", 'data:', 'https:'],
      connectSrc: ["'self'"],
      mediaSrc: ["'self'", 'blob:', 'https:'],
    },
  },
  crossOriginEmbedderPolicy: false,
  crossOriginResourcePolicy: { policy: 'cross-origin' },
}));
app.use(cors({ origin: true, credentials: true }));
app.use(morgan('dev'));
app.use(express.json({ limit: '10kb' }));
app.use(express.urlencoded({ extended: true, limit: '10kb' }));
app.use(cookieParser());

// ─── Video streaming with range support ───────────────────────────────────────
app.get(/\.(mp4|webm|ogg)$/, (req, res, next) => {
  const fs = require('fs');
  const path = require('path');
  const filePath = path.join(__dirname, 'public', req.path);

  if (!fs.existsSync(filePath)) return next();

  const stat   = fs.statSync(filePath);
  const total  = stat.size;
  const range  = req.headers.range;

  res.setHeader('Accept-Ranges', 'bytes');
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Cross-Origin-Resource-Policy', 'cross-origin');
  res.setHeader('Cache-Control', 'public, max-age=86400');

  if (range) {
    const [startStr, endStr] = range.replace(/bytes=/, '').split('-');
    const start = parseInt(startStr, 10);
    const end   = endStr ? parseInt(endStr, 10) : Math.min(start + 1024 * 1024 - 1, total - 1);
    const chunkSize = end - start + 1;

    res.writeHead(206, {
      'Content-Range':  `bytes ${start}-${end}/${total}`,
      'Content-Length': chunkSize,
      'Content-Type':   'video/mp4',
    });
    fs.createReadStream(filePath, { start, end }).pipe(res);
  } else {
    res.writeHead(200, {
      'Content-Length': total,
      'Content-Type':   'video/mp4',
    });
    fs.createReadStream(filePath).pipe(res);
  }
});

app.use(express.static(path.join(__dirname, 'public'), {
  setHeaders(res, filePath) {
    if (filePath.endsWith('.mp4') || filePath.endsWith('.webm')) {
      res.setHeader('Access-Control-Allow-Origin', '*');
      res.setHeader('Cross-Origin-Resource-Policy', 'cross-origin');
      res.setHeader('Accept-Ranges', 'bytes');
      res.setHeader('Cache-Control', 'public, max-age=86400');
    }
  }
}));

// ─── Rate Limiters ─────────────────────────────────────────────────────────────
const authLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 10,
  message: { success: false, message: 'Muitas tentativas. Aguarde 15 minutos.' },
  standardHeaders: true,
  legacyHeaders: false,
});

const apiLimiter = rateLimit({
  windowMs: 60 * 1000,
  max: 60,
  message: { success: false, message: 'Muitas requisições.' },
});

app.use('/api/auth', authLimiter);
app.use('/api', apiLimiter);

// ─── Auth Helpers ──────────────────────────────────────────────────────────────
function generateTokens(user) {
  const payload = { id: user.id, username: user.username, role: user.role };
  const accessToken = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: process.env.SESSION_EXPIRES_IN || '24h' });
  const refreshToken = jwt.sign({ id: user.id }, process.env.JWT_REFRESH_SECRET, { expiresIn: process.env.REFRESH_EXPIRES_IN || '7d' });
  return { accessToken, refreshToken };
}

function setAuthCookies(res, accessToken, refreshToken) {
  res.cookie('spartan_token', accessToken, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    sameSite: 'lax',
    maxAge: 24 * 60 * 60 * 1000,
  });
  res.cookie('spartan_refresh', refreshToken, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    sameSite: 'lax',
    maxAge: 7 * 24 * 60 * 60 * 1000,
    path: '/api/auth/refresh',
  });
}

function authenticate(req, res, next) {
  const token = req.cookies.spartan_token || (req.headers.authorization || '').replace('Bearer ', '');
  if (!token) return res.status(401).json({ success: false, message: 'Não autenticado.' });
  try {
    req.user = jwt.verify(token, process.env.JWT_SECRET);
    next();
  } catch {
    return res.status(401).json({ success: false, message: 'Token inválido ou expirado.' });
  }
}

function logActivity(userId, action, details, ip) {
  try {
    db.prepare('INSERT INTO activity_log (user_id, action, details, ip) VALUES (?, ?, ?, ?)').run(userId, action, details, ip);
  } catch {}
}

function getClientIP(req) {
  return req.headers['x-forwarded-for']?.split(',')[0] || req.socket.remoteAddress || 'unknown';
}

// ─── AUTH ROUTES ───────────────────────────────────────────────────────────────

// POST /api/auth/register
app.post('/api/auth/register', async (req, res) => {
  try {
    const { username, email, password, confirmPassword } = req.body;

    if (!username || !email || !password || !confirmPassword)
      return res.status(400).json({ success: false, message: 'Todos os campos são obrigatórios.' });

    if (password !== confirmPassword)
      return res.status(400).json({ success: false, message: 'As senhas não coincidem.' });

    if (username.length < 3 || username.length > 20)
      return res.status(400).json({ success: false, message: 'Username deve ter entre 3 e 20 caracteres.' });

    if (!/^[a-zA-Z0-9_]+$/.test(username))
      return res.status(400).json({ success: false, message: 'Username pode conter apenas letras, números e _.' });

    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email))
      return res.status(400).json({ success: false, message: 'Email inválido.' });

    if (password.length < 8)
      return res.status(400).json({ success: false, message: 'Senha deve ter pelo menos 8 caracteres.' });

    if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/.test(password))
      return res.status(400).json({ success: false, message: 'Senha deve conter maiúscula, minúscula e número.' });

    const existingUser = db.prepare('SELECT id FROM users WHERE username = ? OR email = ?').get(username, email);
    if (existingUser)
      return res.status(409).json({ success: false, message: 'Username ou email já cadastrado.' });

    const hashedPassword = await bcrypt.hash(password, 12);
    const result = db.prepare(`
      INSERT INTO users (username, email, password, email_verified) VALUES (?, ?, ?, 1)
    `).run(username, email.toLowerCase(), hashedPassword);

    const user = db.prepare('SELECT * FROM users WHERE id = ?').get(result.lastInsertRowid);
    const { accessToken, refreshToken } = generateTokens(user);

    db.prepare(`
      INSERT INTO refresh_tokens (user_id, token, expires_at)
      VALUES (?, ?, datetime('now', '+7 days'))
    `).run(user.id, refreshToken);

    setAuthCookies(res, accessToken, refreshToken);
    logActivity(user.id, 'register', `Novo registro: ${username}`, getClientIP(req));

    res.status(201).json({
      success: true,
      message: 'Conta criada com sucesso! Bem-vindo ao Spartan Roleplay!',
      user: { id: user.id, username: user.username, email: user.email, role: user.role, avatar: user.avatar },
      accessToken,
    });
  } catch (err) {
    console.error('Register error:', err);
    res.status(500).json({ success: false, message: 'Erro interno do servidor.' });
  }
});

// POST /api/auth/login
app.post('/api/auth/login', async (req, res) => {
  try {
    const { identifier, password, remember } = req.body;
    const ip = getClientIP(req);

    if (!identifier || !password)
      return res.status(400).json({ success: false, message: 'Usuário/email e senha são obrigatórios.' });

    // Check lockout
    const recentFails = db.prepare(`
      SELECT COUNT(*) as count FROM login_attempts
      WHERE identifier = ? AND success = 0 AND attempted_at > datetime('now', '-15 minutes')
    `).get(identifier);

    if (recentFails.count >= 5)
      return res.status(429).json({ success: false, message: 'Conta bloqueada temporariamente. Tente novamente em 15 minutos.' });

    const user = db.prepare('SELECT * FROM users WHERE username = ? OR email = ?').get(identifier, identifier.toLowerCase());

    if (!user || !(await bcrypt.compare(password, user.password))) {
      db.prepare('INSERT INTO login_attempts (identifier, ip, success) VALUES (?, ?, 0)').run(identifier, ip);
      const remaining = 5 - (recentFails.count + 1);
      return res.status(401).json({
        success: false,
        message: `Credenciais inválidas. ${remaining > 0 ? `${remaining} tentativa(s) restante(s).` : 'Conta bloqueada por 15 minutos.'}`,
      });
    }

    if (user.is_banned) {
      const banMsg = user.ban_expires
        ? `Banido até ${new Date(user.ban_expires).toLocaleDateString('pt-BR')}: ${user.ban_reason}`
        : `Banido permanentemente: ${user.ban_reason}`;
      return res.status(403).json({ success: false, message: banMsg, banned: true });
    }

    db.prepare('INSERT INTO login_attempts (identifier, ip, success) VALUES (?, ?, 1)').run(identifier, ip);
    db.prepare(`UPDATE users SET last_login = datetime('now'), last_ip = ?, updated_at = datetime('now') WHERE id = ?`).run(ip, user.id);

    const { accessToken, refreshToken } = generateTokens(user);

    db.prepare(`
      INSERT INTO refresh_tokens (user_id, token, expires_at)
      VALUES (?, ?, datetime('now', '+7 days'))
    `).run(user.id, refreshToken);

    setAuthCookies(res, accessToken, refreshToken);
    logActivity(user.id, 'login', `Login via ${ip}`, ip);

    res.json({
      success: true,
      message: `Bem-vindo de volta, ${user.username}!`,
      user: {
        id: user.id,
        username: user.username,
        email: user.email,
        role: user.role,
        avatar: user.avatar,
        playtime: user.playtime,
        characters: user.characters,
        last_login: user.last_login,
      },
      accessToken,
    });
  } catch (err) {
    console.error('Login error:', err);
    res.status(500).json({ success: false, message: 'Erro interno do servidor.' });
  }
});

// POST /api/auth/logout
app.post('/api/auth/logout', authenticate, (req, res) => {
  const refreshToken = req.cookies.spartan_refresh;
  if (refreshToken) db.prepare('DELETE FROM refresh_tokens WHERE token = ?').run(refreshToken);

  res.clearCookie('spartan_token');
  res.clearCookie('spartan_refresh', { path: '/api/auth/refresh' });
  logActivity(req.user.id, 'logout', 'Logout', getClientIP(req));
  res.json({ success: true, message: 'Logout realizado com sucesso.' });
});

// POST /api/auth/refresh
app.post('/api/auth/refresh', (req, res) => {
  try {
    const token = req.cookies.spartan_refresh;
    if (!token) return res.status(401).json({ success: false, message: 'Refresh token não encontrado.' });

    const stored = db.prepare('SELECT * FROM refresh_tokens WHERE token = ?').get(token);
    if (!stored) return res.status(401).json({ success: false, message: 'Token inválido.' });

    const payload = jwt.verify(token, process.env.JWT_REFRESH_SECRET);
    const user = db.prepare('SELECT * FROM users WHERE id = ?').get(payload.id);
    if (!user) return res.status(401).json({ success: false, message: 'Usuário não encontrado.' });

    const { accessToken, refreshToken: newRefresh } = generateTokens(user);

    db.prepare('DELETE FROM refresh_tokens WHERE token = ?').run(token);
    db.prepare(`INSERT INTO refresh_tokens (user_id, token, expires_at) VALUES (?, ?, datetime('now', '+7 days'))`).run(user.id, newRefresh);

    setAuthCookies(res, accessToken, newRefresh);
    res.json({ success: true, accessToken });
  } catch {
    res.status(401).json({ success: false, message: 'Token expirado. Faça login novamente.' });
  }
});

// POST /api/auth/forgot-password
app.post('/api/auth/forgot-password', (req, res) => {
  const { email } = req.body;
  if (!email) return res.status(400).json({ success: false, message: 'Email obrigatório.' });

  const user = db.prepare('SELECT id FROM users WHERE email = ?').get(email.toLowerCase());
  if (user) {
    const token = require('crypto').randomBytes(32).toString('hex');
    db.prepare(`UPDATE users SET reset_token = ?, reset_token_expires = datetime('now', '+1 hour') WHERE id = ?`).run(token, user.id);
  }

  // Always return success to prevent user enumeration
  res.json({ success: true, message: 'Se o email estiver cadastrado, você receberá as instruções em breve.' });
});

// ─── USER ROUTES ───────────────────────────────────────────────────────────────

// GET /api/user/me
app.get('/api/user/me', authenticate, (req, res) => {
  const user = db.prepare('SELECT id, username, email, role, avatar, playtime, characters, warnings, bans, last_login, created_at, discord_id, steam_id FROM users WHERE id = ?').get(req.user.id);
  if (!user) return res.status(404).json({ success: false, message: 'Usuário não encontrado.' });
  res.json({ success: true, user });
});

// GET /api/user/stats
app.get('/api/user/stats', authenticate, (req, res) => {
  const user = db.prepare('SELECT playtime, characters, warnings, bans, created_at FROM users WHERE id = ?').get(req.user.id);
  res.json({ success: true, stats: user });
});

// ─── PUBLIC ROUTES ─────────────────────────────────────────────────────────────

// GET /api/server/status
app.get('/api/server/status', (req, res) => {
  const servers = db.prepare('SELECT * FROM server_status ORDER BY id').all();

  // Simulate dynamic player count fluctuation
  servers.forEach(s => {
    const delta = Math.floor(Math.random() * 7) - 3;
    const newCount = Math.min(Math.max(s.current_players + delta, 5), s.max_players);
    db.prepare('UPDATE server_status SET current_players = ?, last_checked = datetime(\'now\') WHERE id = ?').run(newCount, s.id);
  });

  const updated = db.prepare('SELECT * FROM server_status ORDER BY id').all();
  res.json({ success: true, servers: updated });
});

// GET /api/news
app.get('/api/news', (req, res) => {
  const news = db.prepare(`
    SELECT n.*, u.username as author_name
    FROM server_news n
    LEFT JOIN users u ON n.author_id = u.id
    WHERE n.published = 1
    ORDER BY n.pinned DESC, n.created_at DESC
    LIMIT 10
  `).all();
  res.json({ success: true, news });
});

// GET /api/leaderboard
app.get('/api/leaderboard', (req, res) => {
  const players = db.prepare(`
    SELECT username, role, playtime, characters, created_at
    FROM users
    WHERE is_banned = 0
    ORDER BY playtime DESC
    LIMIT 10
  `).all();
  res.json({ success: true, players });
});

// ─── Serve SPA ─────────────────────────────────────────────────────────────────
app.get(/.*/, (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// ─── Start ─────────────────────────────────────────────────────────────────────
app.listen(PORT, () => {
  console.log(`\n🏛️  Spartan Roleplay Panel running on http://localhost:${PORT}\n`);
});

module.exports = app;
