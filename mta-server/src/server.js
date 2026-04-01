const express    = require('express');
const http       = require('http');
const WebSocket  = require('ws');
const path       = require('path');
const compression = require('compression');
const { state, addLog, addActivity, makePlayer, serial, ip } = require('./data');

const app    = express();
const server = http.createServer(app);
const wss    = new WebSocket.Server({ server });

app.use(compression());
app.use(express.json());
app.use(express.static(path.join(__dirname, '../public')));

// ── REST API ────────────────────────────────────────────────────

// Full snapshot
app.get('/api/state', (_, res) => {
  res.json({
    players:    state.players,
    resources:  state.resources,
    bans:       state.bans,
    cpu:        Math.round(state.cpu),
    ram:        Math.round(state.ram),
    dl:         Math.round(state.dl),
    ul:         Math.round(state.ul),
    ping:       Math.round(state.ping),
    uptimeSec:  state.uptimeSec,
    serverName: state.serverName,
    gameMode:   state.gameMode,
    maxSlots:   state.maxSlots,
    port:       state.port,
    logs:       state.logs.slice(-80),
    activity:   state.activity.slice(0, 20),
  });
});

// Kick player
app.post('/api/players/:id/kick', (req, res) => {
  const id = parseInt(req.params.id);
  const idx = state.players.findIndex(p => p.id === id);
  if (idx === -1) return res.status(404).json({ error: 'Player not found' });
  const p = state.players.splice(idx, 1)[0];
  addLog(`${p.name} foi kickado pelo admin`, 'warn');
  addActivity('leave', `<strong>${p.name}</strong> foi kickado`);
  broadcast({ type: 'kick', player: p });
  res.json({ ok: true, player: p });
});

// Ban player
app.post('/api/bans', (req, res) => {
  const { name, reason, duration, serial: ser, playerIp } = req.body;
  if (!name) return res.status(400).json({ error: 'Name required' });
  const ban = {
    id:      state.bans.length + 1,
    name,
    serial:  (ser || serial()).slice(0, 16) + '...',
    ip:      playerIp || ip(),
    reason:  reason || 'Sem motivo',
    by:      'Admin',
    date:    new Date().toLocaleDateString('pt-BR'),
    expires: duration || 'Permanente',
  };
  state.bans.push(ban);
  state.players = state.players.filter(p => p.name !== name);
  addLog(`${name} foi banido: ${ban.reason}`, 'error');
  addActivity('ban', `<strong>${name}</strong> foi banido — ${ban.reason}`);
  broadcast({ type: 'ban', ban });
  res.json({ ok: true, ban });
});

// Unban
app.delete('/api/bans/:id', (req, res) => {
  const id = parseInt(req.params.id);
  const idx = state.bans.findIndex(b => b.id === id);
  if (idx === -1) return res.status(404).json({ error: 'Ban not found' });
  const ban = state.bans.splice(idx, 1)[0];
  addLog(`Banimento de ${ban.name} removido pelo admin`, 'ok');
  res.json({ ok: true });
});

// Resource action
app.post('/api/resources/:name/:action', (req, res) => {
  const { name, action } = req.params;
  const r = state.resources.find(x => x.name === name);
  if (!r) return res.status(404).json({ error: 'Resource not found' });
  if (action === 'start') {
    r.status = 'running';
    r.cpu    = Math.floor(Math.random() * 15) + 1;
    r.ram    = Math.floor(Math.random() * 30) + 4;
    addLog(`Recurso "${name}" iniciado`, 'ok');
  } else if (action === 'stop') {
    r.status = 'stopped';
    r.cpu    = 0; r.ram = 0;
    addLog(`Recurso "${name}" parado`, 'warn');
  } else if (action === 'restart') {
    r.cpu = Math.floor(Math.random() * 15) + 1;
    r.ram = Math.floor(Math.random() * 30) + 4;
    addLog(`Recurso "${name}" reiniciado`, 'ok');
  }
  res.json({ ok: true, resource: r });
});

// Add resource
app.post('/api/resources', (req, res) => {
  const { name, ver, author } = req.body;
  if (!name) return res.status(400).json({ error: 'Name required' });
  state.resources.push({ name, ver: ver || '1.0.0', author: author || 'Uploaded', status: 'stopped', cpu: 0, ram: 0 });
  addLog(`Recurso "${name}" adicionado`, 'ok');
  res.json({ ok: true });
});

// Console command
app.post('/api/console', (req, res) => {
  const { cmd } = req.body;
  if (!cmd) return res.status(400).json({ error: 'Command required' });
  addLog('> ' + cmd, 'cmd');
  const parts = cmd.trim().toLowerCase().split(' ');
  const c = parts[0];
  let output = [];

  if (c === 'players') {
    output.push({ msg: `Jogadores online: ${state.players.length}`, type: 'ok' });
    state.players.forEach(p => output.push({ msg: `  #${p.id} ${p.name} [${p.ping}ms] [${p.role}]`, type: 'info' }));
  } else if (c === 'say') {
    const msg = parts.slice(1).join(' ');
    output.push({ msg: `[GLOBAL] Admin: ${msg}`, type: 'ok' });
    addActivity('cmd', `Admin anunciou: <em>${msg}</em>`);
  } else if (c === 'kick') {
    const id = parseInt(parts[1]);
    const p  = state.players.find(x => x.id === id);
    if (p) {
      state.players = state.players.filter(x => x.id !== id);
      addLog(`${p.name} foi kickado via console`, 'warn');
      output.push({ msg: `${p.name} kickado`, type: 'ok' });
    } else {
      output.push({ msg: `Jogador #${id} não encontrado`, type: 'error' });
    }
  } else if (c === 'resources' || c === 'res') {
    const run = state.resources.filter(r => r.status === 'running').length;
    output.push({ msg: `Recursos rodando: ${run}/${state.resources.length}`, type: 'ok' });
  } else if (c === 'status') {
    const h = Math.floor(state.uptimeSec/3600);
    const m = Math.floor((state.uptimeSec%3600)/60);
    const s = state.uptimeSec%60;
    output.push({ msg: `CPU: ${Math.round(state.cpu)}% | RAM: ${Math.round(state.ram)}MB | Players: ${state.players.length} | Uptime: ${String(h).padStart(2,'0')}:${String(m).padStart(2,'0')}:${String(s).padStart(2,'0')}`, type: 'ok' });
  } else if (c === 'uptime') {
    const h = Math.floor(state.uptimeSec/3600);
    const m = Math.floor((state.uptimeSec%3600)/60);
    output.push({ msg: `Uptime: ${h}h ${m}m`, type: 'ok' });
  } else if (c === 'clear') {
    output.push({ msg: '__CLEAR__', type: 'system' });
  } else if (c === 'help') {
    output.push({ msg: 'Comandos: help, players, say <msg>, kick <id>, resources, status, uptime, clear', type: 'info' });
  } else {
    output.push({ msg: `Comando desconhecido: "${cmd}". Digite "help".`, type: 'warn' });
  }

  output.forEach(o => { if (o.type !== 'system') addLog(o.msg, o.type); });
  broadcast({ type: 'console', lines: output });
  res.json({ ok: true, output });
});

// Settings update
app.patch('/api/settings', (req, res) => {
  const { serverName, gameMode, maxSlots, port } = req.body;
  if (serverName) state.serverName = serverName;
  if (gameMode)   state.gameMode   = gameMode;
  if (maxSlots)   state.maxSlots   = parseInt(maxSlots);
  if (port)       state.port       = parseInt(port);
  addLog('Configurações atualizadas pelo Admin', 'ok');
  res.json({ ok: true });
});

// ── WebSocket broadcast live stats ─────────────────────────────
function broadcast(msg) {
  const data = JSON.stringify(msg);
  wss.clients.forEach(ws => {
    if (ws.readyState === WebSocket.OPEN) ws.send(data);
  });
}

wss.on('connection', ws => {
  ws.send(JSON.stringify({ type: 'connected', msg: 'WebSocket OK' }));
});

// Push live stats every second via WS
setInterval(() => {
  broadcast({
    type:      'stats',
    cpu:       Math.round(state.cpu),
    ram:       Math.round(state.ram),
    dl:        Math.round(state.dl),
    ul:        Math.round(state.ul),
    ping:      Math.round(state.ping),
    players:   state.players.length,
    maxSlots:  state.maxSlots,
    uptimeSec: state.uptimeSec,
    logs:      state.logs.slice(-5),
    activity:  state.activity.slice(0, 5),
  });
}, 1000);

// ── Start server ────────────────────────────────────────────────
const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
  console.log(`[MTA Panel] Server running on http://localhost:${PORT}`);
});
