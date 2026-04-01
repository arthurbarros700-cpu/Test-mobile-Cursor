// ════════════════════════════════════════════════════════════
//  MTA:SA Control Panel — Frontend App
// ════════════════════════════════════════════════════════════

// ── History buffers ──────────────────────────────────────────
const MAX_HIST = 60;
const hist = {
  players: Array(MAX_HIST).fill(0),
  cpu:     Array(MAX_HIST).fill(0),
  ram:     Array(MAX_HIST).fill(0),
};

// ── Shared state cache ───────────────────────────────────────
let cache = {
  players:   [],
  resources: [],
  bans:      [],
  maxSlots:  100,
};

let scrollLocked = false;
let cmdHistory   = [];
let cmdIdx       = -1;

// ── WebSocket ────────────────────────────────────────────────
let ws;

function connectWS() {
  const proto = location.protocol === 'https:' ? 'wss:' : 'ws:';
  ws = new WebSocket(`${proto}//${location.host}`);

  ws.onopen = () => {
    setWsStatus(true);
    addConsoleLog('WebSocket conectado — feed ao vivo ativo', 'ok');
  };
  ws.onclose = () => {
    setWsStatus(false);
    setTimeout(connectWS, 3000);
  };
  ws.onerror = () => setWsStatus(false);

  ws.onmessage = e => {
    const msg = JSON.parse(e.data);
    handleWS(msg);
  };
}

function handleWS(msg) {
  if (msg.type === 'stats') {
    applyStats(msg);
    // Append new logs from server
    if (msg.logs) {
      msg.logs.forEach(l => {
        if (!document.querySelector(`[data-logid="${l.t}-${l.msg.slice(0,10)}"]`)) {
          addConsoleLog(l.msg, l.type, l.t);
        }
      });
    }
    if (msg.activity) renderActivity(msg.activity);
  }
  if (msg.type === 'kick' || msg.type === 'ban') loadPlayers();
  if (msg.type === 'console') {
    msg.lines.forEach(l => {
      if (l.type === 'system' && l.msg === '__CLEAR__') {
        document.getElementById('console-output').innerHTML = '';
      } else {
        addConsoleLog(l.msg, l.type);
      }
    });
  }
}

function setWsStatus(online) {
  const dot   = document.getElementById('ws-dot');
  const label = document.getElementById('ws-label');
  if (online) {
    dot.classList.remove('red'); dot.style.background = '';
    label.textContent = 'ONLINE';
    label.style.color = '';
  } else {
    dot.classList.add('red');
    label.textContent = 'OFFLINE';
    label.style.color = 'var(--danger)';
  }
}

// ── Stats update ─────────────────────────────────────────────
function formatUptime(s) {
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = s % 60;
  return `${String(h).padStart(2,'0')}:${String(m).padStart(2,'0')}:${String(sec).padStart(2,'0')}`;
}

function applyStats(s) {
  cache.maxSlots = s.maxSlots || 100;

  // Header
  g('hdr-players').textContent = `${s.players}/${s.maxSlots}`;
  g('hdr-uptime').textContent  = formatUptime(s.uptimeSec);
  g('hdr-cpu').textContent     = s.cpu + '%';
  g('hdr-ram').textContent     = s.ram + ' MB';
  g('hdr-ping').textContent    = s.ping + ' ms';

  // Dashboard cards
  g('sc-players').textContent  = s.players;
  g('sc-players-sub').textContent = `de ${s.maxSlots} slots`;
  g('sc-cpu').textContent      = s.cpu + '%';
  g('sc-ram').textContent      = s.ram + ' MB';
  g('sc-uptime').textContent   = formatUptime(s.uptimeSec);

  // Gauges
  const cpuPct = s.cpu;
  const ramPct = Math.round((s.ram / 4096) * 100);
  const dlPct  = Math.round((s.dl / 980) * 100);
  const ulPct  = Math.round((s.ul / 500) * 100);

  setGauge('cpu', cpuPct, `${s.cpu}%`);
  setGauge('ram', ramPct, `${s.ram} MB`);
  setGauge('dl',  dlPct,  `${s.dl} KB/s`);
  setGauge('ul',  ulPct,  `${s.ul} KB/s`);

  // Running resources count
  const runCount = cache.resources.filter(r => r.status === 'running').length;
  const resPct   = cache.resources.length ? Math.round((runCount / cache.resources.length) * 100) : 0;
  g('g-res').textContent   = runCount;
  g('gf-res').style.width  = resPct + '%';
  g('nav-res-count').textContent = runCount;

  // Nav badge players
  g('nav-player-count').textContent = s.players;

  // History
  hist.players.push(s.players); hist.players.shift();
  hist.cpu.push(s.cpu);         hist.cpu.shift();
  hist.ram.push(ramPct);        hist.ram.shift();

  // Charts
  Charts.draw('chart-players', hist.players, null, 'Jogadores', null, cache.maxSlots || 100);
  Charts.draw('chart-cpuram',  hist.cpu, hist.ram, 'CPU', 'RAM', 100);
  Charts.draw('chart-cpu-full', hist.cpu, null, 'CPU %', null, 100);
  Charts.draw('chart-ram-full', hist.ram, null, 'RAM %', null, 100);

  // Rings (circumference = 2π×42 ≈ 263.89)
  setRing('ring-cpu',  cpuPct, 'rv-cpu', s.cpu + '%');
  setRing('ring-ram',  ramPct, 'rv-ram', ramPct + '%');
  setRing('ring-pl',   Math.round((s.players/s.maxSlots)*100), 'rv-pl', Math.round((s.players/s.maxSlots)*100) + '%');
  setRing('ring-ping', Math.min(Math.round((s.ping/200)*100), 100), 'rv-ping', s.ping + 'ms');
}

function setGauge(key, pct, label) {
  const cap = Math.min(pct, 100);
  g(`g-${key}`).textContent    = label;
  g(`gf-${key}`).style.width   = cap + '%';
  g(`gf-${key}`).style.background = pct > 85 ? 'var(--danger)' : pct > 65 ? 'var(--warn)' : undefined;
}

function setRing(ringId, pct, labelId, labelText) {
  const el = document.getElementById(ringId);
  if (el) el.style.strokeDashoffset = 263.89 * (1 - Math.min(pct,100) / 100);
  if (labelId) g(labelId).textContent = labelText;
}

// ── Navigation ───────────────────────────────────────────────
function navigate(page) {
  document.querySelectorAll('.page').forEach(p => p.classList.remove('active'));
  document.querySelectorAll('.nav-item').forEach(n => n.classList.remove('active'));
  const pg = document.getElementById('page-' + page);
  const ni = document.querySelector(`.nav-item[data-page="${page}"]`);
  if (pg) pg.classList.add('active');
  if (ni) ni.classList.add('active');

  if (page === 'players')   loadPlayers();
  if (page === 'resources') loadResources();
  if (page === 'bans')      loadBans();
  if (page === 'settings')  loadSettings();
}

// ── API helpers ──────────────────────────────────────────────
async function api(method, path, body) {
  const opts = { method, headers: { 'Content-Type': 'application/json' } };
  if (body) opts.body = JSON.stringify(body);
  const res = await fetch(path, opts);
  return res.json();
}

// ── Full state snapshot ──────────────────────────────────────
async function loadState() {
  const data = await api('GET', '/api/state');
  cache.players   = data.players   || [];
  cache.resources = data.resources || [];
  cache.bans      = data.bans      || [];
  cache.maxSlots  = data.maxSlots  || 100;

  applyStats(data);
  renderActivity(data.activity || []);

  // Pre-fill console logs
  (data.logs || []).forEach(l => addConsoleLog(l.msg, l.type, l.t));

  // Settings form pre-fill
  g('set-name').value = data.serverName || '';
  g('set-mode').value = data.gameMode   || '';
  g('set-maxp').value = data.maxSlots   || 100;
  g('set-port').value = data.port       || 22003;

  // Monitor info
  g('mi-name').textContent  = data.serverName || '—';
  g('mi-port').textContent  = data.port        || '—';
  g('mi-mode').textContent  = data.gameMode    || '—';
  g('mi-slots').textContent = data.maxSlots    || '—';

  // Bans nav count
  g('nav-ban-count').textContent = (data.bans || []).length;
}

// ── Players ──────────────────────────────────────────────────
async function loadPlayers() {
  const data = await api('GET', '/api/state');
  cache.players = data.players || [];
  renderPlayers(cache.players);
}

function renderPlayers(list) {
  list = list || cache.players;
  g('players-subtitle').textContent = `${list.length} jogador(es) online`;
  g('nav-player-count').textContent = list.length;

  const tbody = g('players-tbody');
  if (list.length === 0) {
    tbody.innerHTML = `<tr><td colspan="8" class="empty-row">Nenhum jogador online</td></tr>`;
    return;
  }
  tbody.innerHTML = list.map(p => {
    const pingClass = p.ping < 80 ? 'ping-good' : p.ping < 150 ? 'ping-medium' : 'ping-bad';
    return `<tr>
      <td style="color:var(--text-3)">${p.id}</td>
      <td><strong>${esc(p.name)}</strong></td>
      <td style="font-family:monospace;font-size:.7rem;color:var(--text-3)">${p.serial.slice(0,10)}…</td>
      <td style="color:var(--text-3)">${p.ip}</td>
      <td><span class="ping-dot ${pingClass}"></span>${p.ping}ms</td>
      <td><span class="tag ${p.role}">${p.role}</span></td>
      <td style="color:var(--text-3)">${p.time}min</td>
      <td style="display:flex;gap:4px">
        <button class="btn btn-ghost btn-sm" onclick="pmPlayer(${p.id},'${esc(p.name)}')">✉</button>
        <button class="btn btn-ghost btn-sm" onclick="kickPlayer(${p.id},'${esc(p.name)}')">Kick</button>
        <button class="btn btn-danger btn-sm" onclick="openBanForPlayer('${esc(p.name)}')">Ban</button>
      </td>
    </tr>`;
  }).join('');
}

function filterPlayers() {
  const q    = g('player-search').value.toLowerCase();
  const role = g('player-role-filter').value;
  const filtered = cache.players.filter(p =>
    (!q    || p.name.toLowerCase().includes(q) || p.serial.includes(q) || p.ip.includes(q)) &&
    (!role || p.role === role)
  );
  renderPlayers(filtered);
}

async function kickPlayer(id, name) {
  confirm2(`Kickar ${name}?`, `O jogador ${name} será desconectado.`, async () => {
    await api('POST', `/api/players/${id}/kick`);
    showToast(`${name} kickado`, 'success');
    loadPlayers();
  });
}

function openBanForPlayer(name) {
  g('ban-nick').value = name;
  openModal('modal-ban');
}

function pmPlayer(id, name) {
  const msg = prompt(`Mensagem privada para ${name}:`);
  if (!msg) return;
  api('POST', '/api/console', { cmd: `say [PM para ${name}] ${msg}` });
  showToast(`Mensagem enviada para ${name}`, 'success');
}

// ── Resources ────────────────────────────────────────────────
async function loadResources() {
  const data = await api('GET', '/api/state');
  cache.resources = data.resources || [];
  renderResources(cache.resources);
}

function renderResources(list) {
  list = list || cache.resources;
  const tbody = g('resources-tbody');
  if (list.length === 0) {
    tbody.innerHTML = `<tr><td colspan="7" class="empty-row">Nenhum recurso</td></tr>`;
    return;
  }
  tbody.innerHTML = list.map(r => `<tr>
    <td><strong>${esc(r.name)}</strong></td>
    <td style="color:var(--text-3)">${r.ver}</td>
    <td style="color:var(--text-3)">${r.author}</td>
    <td><span class="tag ${r.status}">${r.status === 'running' ? 'Rodando' : 'Parado'}</span></td>
    <td>
      <div style="font-size:.7rem;color:var(--text-3)">${r.cpu}%</div>
      <div class="res-bar"><div class="res-bar-fill" style="width:${r.cpu}%;background:var(--accent2)"></div></div>
    </td>
    <td>
      <div style="font-size:.7rem;color:var(--text-3)">${r.ram} MB</div>
      <div class="res-bar"><div class="res-bar-fill" style="width:${Math.min(r.ram,100)}%;background:var(--accent3)"></div></div>
    </td>
    <td style="display:flex;gap:4px">
      ${r.status === 'running'
        ? `<button class="btn btn-danger btn-sm" onclick="resAction('${r.name}','stop')">■ Parar</button>
           <button class="btn btn-ghost btn-sm" onclick="resAction('${r.name}','restart')">↺</button>`
        : `<button class="btn btn-green btn-sm" onclick="resAction('${r.name}','start')">▶ Iniciar</button>`
      }
    </td>
  </tr>`).join('');
}

function filterResources() {
  const q  = g('res-search').value.toLowerCase();
  const st = g('res-status-filter').value;
  renderResources(cache.resources.filter(r =>
    (!q  || r.name.includes(q) || r.author.toLowerCase().includes(q)) &&
    (!st || r.status === st)
  ));
}

async function resAction(name, action) {
  await api('POST', `/api/resources/${encodeURIComponent(name)}/${action}`);
  showToast(`${name}: ${action}`, 'success');
  loadResources();
}

async function startAllRes() {
  const stopped = cache.resources.filter(r => r.status === 'stopped');
  for (const r of stopped) await api('POST', `/api/resources/${encodeURIComponent(r.name)}/start`);
  showToast('Todos os recursos iniciados', 'success');
  loadResources();
}

async function stopAllRes() {
  confirm2('Parar Todos', 'Isso irá parar TODOS os recursos ativos. Continuar?', async () => {
    const running = cache.resources.filter(r => r.status === 'running');
    for (const r of running) await api('POST', `/api/resources/${encodeURIComponent(r.name)}/stop`);
    showToast('Todos os recursos parados', 'info');
    loadResources();
  });
}

async function uploadResource() {
  const name   = g('up-name').value.trim();
  const ver    = g('up-ver').value.trim();
  const author = g('up-author').value.trim();
  if (!name) { showToast('Informe o nome do recurso', 'error'); return; }
  await api('POST', '/api/resources', { name, ver, author });
  closeModal('modal-upload');
  showToast(`Recurso ${name} adicionado`, 'success');
  loadResources();
  g('up-name').value = ''; g('up-ver').value = ''; g('up-author').value = '';
}

// ── Bans ─────────────────────────────────────────────────────
async function loadBans() {
  const data = await api('GET', '/api/state');
  cache.bans = data.bans || [];
  renderBans(cache.bans);
}

function renderBans(list) {
  list = list || cache.bans;
  g('bans-subtitle').textContent  = `${list.length} banimento(s) ativo(s)`;
  g('nav-ban-count').textContent  = list.length;
  const tbody = g('bans-tbody');
  if (list.length === 0) {
    tbody.innerHTML = `<tr><td colspan="8" class="empty-row">Nenhum banimento</td></tr>`;
    return;
  }
  tbody.innerHTML = list.map(b => `<tr>
    <td style="color:var(--text-3)">${b.id}</td>
    <td><strong>${esc(b.name)}</strong></td>
    <td style="font-family:monospace;font-size:.7rem;color:var(--text-3)">${b.serial}<br>${b.ip}</td>
    <td>${esc(b.reason)}</td>
    <td style="color:var(--text-3)">${b.by}</td>
    <td style="color:var(--text-3)">${b.date}</td>
    <td>${b.expires === 'Permanente' ? '<span class="tag banned">Permanente</span>' : esc(b.expires)}</td>
    <td><button class="btn btn-ghost btn-sm" onclick="unban(${b.id},'${esc(b.name)}')">Desbanir</button></td>
  </tr>`).join('');
}

function filterBans() {
  const q = g('ban-search').value.toLowerCase();
  renderBans(cache.bans.filter(b =>
    !q || b.name.toLowerCase().includes(q) || b.serial.includes(q) ||
    b.ip.includes(q) || b.reason.toLowerCase().includes(q)
  ));
}

async function addBan() {
  const nick   = g('ban-nick').value.trim();
  const serial = g('ban-serial').value.trim();
  const reason = g('ban-reason').value.trim();
  const dur    = g('ban-dur').value;
  if (!nick) { showToast('Informe o nick', 'error'); return; }
  await api('POST', '/api/bans', { name: nick, serial, reason, duration: dur });
  closeModal('modal-ban');
  showToast(`${nick} banido`, 'success');
  g('ban-nick').value = ''; g('ban-serial').value = ''; g('ban-reason').value = '';
  loadBans(); loadPlayers();
}

async function unban(id, name) {
  confirm2('Desbanir', `Remover banimento de ${name}?`, async () => {
    await api('DELETE', `/api/bans/${id}`);
    showToast(`${name} desbanido`, 'success');
    loadBans();
  });
}

// ── Console ──────────────────────────────────────────────────
function addConsoleLog(msg, type, time) {
  if (!time) {
    const now = new Date();
    time = `${String(now.getHours()).padStart(2,'0')}:${String(now.getMinutes()).padStart(2,'0')}:${String(now.getSeconds()).padStart(2,'0')}`;
  }
  const out  = g('console-output');
  const line = document.createElement('div');
  line.className = 'log-line';
  const key = `${time}-${msg.slice(0,10)}`;
  line.setAttribute('data-logid', key);
  line.innerHTML = `<span class="log-time">[${time}]</span><span class="log-${type}">${esc(msg)}</span>`;
  out.appendChild(line);
  if (out.children.length > 600) out.removeChild(out.firstChild);
  if (!scrollLocked) out.scrollTop = out.scrollHeight;
}

function consoleClear() {
  g('console-output').innerHTML = '';
  addConsoleLog('Console limpo pelo Admin', 'info');
}

function toggleScroll() {
  scrollLocked = !scrollLocked;
  g('scroll-toggle-btn').textContent = scrollLocked ? '▶ Retomar scroll' : '⏸ Pausar scroll';
  showToast(scrollLocked ? 'Scroll pausado' : 'Scroll retomado', 'info');
}

function consoleSend() {
  const inp = g('console-input');
  const cmd = inp.value.trim();
  if (!cmd) return;
  cmdHistory.unshift(cmd);
  cmdIdx = -1;
  inp.value = '';
  api('POST', '/api/console', { cmd });
}

function consoleKey(e) {
  if (e.key === 'Enter') { consoleSend(); return; }
  const inp = g('console-input');
  if (e.key === 'ArrowUp') {
    e.preventDefault();
    cmdIdx = Math.min(cmdIdx + 1, cmdHistory.length - 1);
    inp.value = cmdHistory[cmdIdx] || '';
  } else if (e.key === 'ArrowDown') {
    e.preventDefault();
    cmdIdx = Math.max(cmdIdx - 1, -1);
    inp.value = cmdIdx < 0 ? '' : cmdHistory[cmdIdx];
  }
}

// ── Settings ─────────────────────────────────────────────────
function loadSettings() {
  api('GET', '/api/state').then(data => {
    g('set-name').value = data.serverName || '';
    g('set-mode').value = data.gameMode   || '';
    g('set-maxp').value = data.maxSlots   || 100;
    g('set-port').value = data.port       || 22003;
  });
}

async function saveSettings() {
  await api('PATCH', '/api/settings', {
    serverName: g('set-name').value,
    gameMode:   g('set-mode').value,
    maxSlots:   g('set-maxp').value,
    port:       g('set-port').value,
  });
  showToast('Configurações salvas!', 'success');
  // Update monitor info
  g('mi-name').textContent  = g('set-name').value;
  g('mi-port').textContent  = g('set-port').value;
  g('mi-mode').textContent  = g('set-mode').value;
  g('mi-slots').textContent = g('set-maxp').value;
}

// ── Activity feed ────────────────────────────────────────────
function renderActivity(list) {
  const icons = { join:'↗', leave:'↙', ban:'⊘', cmd:'⌨' };
  const el = g('activity-feed');
  if (!el) return;
  el.innerHTML = list.map(f => `
    <div class="feed-item">
      <div class="feed-icon ${f.type}">${icons[f.type] || '•'}</div>
      <div>
        <div class="feed-text">${f.text}</div>
        <div class="feed-time">${f.t}</div>
      </div>
    </div>`).join('') || '<div style="color:var(--text-3);font-size:.78rem;padding:8px 0">Nenhuma atividade ainda...</div>';
}

// ── Server actions ────────────────────────────────────────────
function serverRestart() {
  confirm2('Reiniciar Servidor', 'Tem certeza que deseja reiniciar o servidor?', () => {
    api('POST', '/api/console', { cmd: 'status' });
    showToast('Servidor reiniciando...', 'warn');
    setTimeout(() => { addConsoleLog('Servidor reiniciado com sucesso!', 'ok'); showToast('Servidor online!', 'success'); }, 2500);
  });
}
function serverStop() {
  confirm2('Parar Servidor', 'Isso irá desconectar todos os jogadores!', () => {
    showToast('Servidor parando...', 'error');
    addConsoleLog('Servidor encerrado pelo Admin', 'error');
  });
}

async function broadcast() {
  const msg = g('bc-msg').value.trim();
  if (!msg) { showToast('Digite uma mensagem', 'error'); return; }
  await api('POST', '/api/console', { cmd: `say ${msg}` });
  closeModal('modal-broadcast');
  showToast('Anúncio enviado!', 'success');
  g('bc-msg').value = '';
}

// ── Toast ────────────────────────────────────────────────────
function showToast(msg, type = 'info') {
  const el  = document.createElement('div');
  el.className = `toast ${type}`;
  const icons = { success:'✓', error:'✗', info:'ℹ', warn:'⚠' };
  el.innerHTML = `<span>${icons[type] || 'ℹ'}</span><span>${esc(msg)}</span>`;
  g('toast-container').appendChild(el);
  setTimeout(() => el.remove(), 3200);
}

// ── Modal ─────────────────────────────────────────────────────
function openModal(id)  { document.getElementById(id).classList.add('open'); }
function closeModal(id) { document.getElementById(id).classList.remove('open'); }

document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.modal-overlay').forEach(o => {
    o.addEventListener('click', e => { if (e.target === o) o.classList.remove('open'); });
  });
});

function confirm2(title, msg, fn) {
  g('mc-title').textContent = title;
  g('mc-msg').textContent   = msg;
  const btn = g('mc-btn');
  btn.onclick = () => { fn(); closeModal('modal-confirm'); };
  openModal('modal-confirm');
}

// ── Helpers ───────────────────────────────────────────────────
function g(id) { return document.getElementById(id); }
function esc(s) {
  return String(s)
    .replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;')
    .replace(/"/g,'&quot;').replace(/'/g,'&#39;');
}

// ── Init ─────────────────────────────────────────────────────
window.addEventListener('DOMContentLoaded', () => {
  Charts.init('chart-players', '#00d4ff');
  Charts.init('chart-cpuram',  '#7c3aed', '#10b981');
  Charts.init('chart-cpu-full','#7c3aed');
  Charts.init('chart-ram-full','#10b981');

  // Pre-fill history with realistic values
  for (let i = 0; i < MAX_HIST; i++) {
    hist.players[i] = 8  + Math.floor(Math.random() * 10);
    hist.cpu[i]     = 25 + Math.floor(Math.random() * 35);
    hist.ram[i]     = 22 + Math.floor(Math.random() * 28);
  }

  loadState().then(() => connectWS());

  // Refresh tables every 5s if on those pages
  setInterval(() => {
    const active = document.querySelector('.page.active');
    if (!active) return;
    const id = active.id;
    if (id === 'page-players')   loadPlayers();
    if (id === 'page-resources') loadResources();
    if (id === 'page-bans')      loadBans();
  }, 5000);
});
