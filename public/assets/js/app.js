/* ═══════════════════════════════════════════════════════════════════════════
   SPARTAN ROLEPLAY — Client Application  v2.1
   ═══════════════════════════════════════════════════════════════════════════ */

'use strict';

// ─── State ────────────────────────────────────────────────────────────────────
const State = {
  user: null,
  serverStatus: null,
  refreshInterval: null,
  accessToken: null,
};

// ─── API Helper ───────────────────────────────────────────────────────────────
const API = {
  async request(method, endpoint, body = null, retry = true) {
    const headers = { 'Content-Type': 'application/json' };
    if (State.accessToken) headers['Authorization'] = `Bearer ${State.accessToken}`;

    const options = { method, headers, credentials: 'include' };
    if (body) options.body = JSON.stringify(body);

    try {
      const res = await fetch(endpoint, options);
      const data = await res.json();

      if (res.status === 401 && retry) {
        const refreshed = await API.refresh();
        if (refreshed) return API.request(method, endpoint, body, false);
      }

      return { ok: res.ok, status: res.status, data };
    } catch (err) {
      return { ok: false, status: 0, data: { success: false, message: 'Erro de conexão com o servidor.' } };
    }
  },

  async refresh() {
    try {
      const res = await fetch('/api/auth/refresh', { method: 'POST', credentials: 'include' });
      if (!res.ok) return false;
      const data = await res.json();
      if (data.accessToken) { State.accessToken = data.accessToken; return true; }
      return false;
    } catch { return false; }
  },

  get:    (ep)         => API.request('GET',    ep),
  post:   (ep, body)   => API.request('POST',   ep, body),
  delete: (ep)         => API.request('DELETE', ep),
};

// ─── Particle System ──────────────────────────────────────────────────────────
(function initParticles() {
  const canvas = document.getElementById('particleCanvas');
  if (!canvas) return;
  const ctx = canvas.getContext('2d');

  let W = canvas.width  = window.innerWidth;
  let H = canvas.height = window.innerHeight;

  const particles = [];
  const PARTICLE_COUNT = 80;
  const CONNECTION_DIST = 140;

  class Particle {
    constructor() { this.reset(); }

    reset() {
      this.x  = Math.random() * W;
      this.y  = Math.random() * H;
      this.vx = (Math.random() - 0.5) * 0.4;
      this.vy = (Math.random() - 0.5) * 0.4;
      this.r  = Math.random() * 1.8 + 0.5;
      this.alpha = Math.random() * 0.5 + 0.1;
      this.gold = Math.random() > 0.7;
    }

    update() {
      this.x += this.vx;
      this.y += this.vy;
      if (this.x < 0 || this.x > W) this.vx *= -1;
      if (this.y < 0 || this.y > H) this.vy *= -1;
    }

    draw() {
      ctx.beginPath();
      ctx.arc(this.x, this.y, this.r, 0, Math.PI * 2);
      ctx.fillStyle = this.gold
        ? `rgba(201,146,46,${this.alpha})`
        : `rgba(180,160,130,${this.alpha * 0.5})`;
      ctx.fill();
    }
  }

  for (let i = 0; i < PARTICLE_COUNT; i++) particles.push(new Particle());

  function drawConnections() {
    for (let i = 0; i < particles.length; i++) {
      for (let j = i + 1; j < particles.length; j++) {
        const dx = particles[i].x - particles[j].x;
        const dy = particles[i].y - particles[j].y;
        const dist = Math.sqrt(dx * dx + dy * dy);
        if (dist < CONNECTION_DIST) {
          const alpha = (1 - dist / CONNECTION_DIST) * 0.15;
          ctx.beginPath();
          ctx.moveTo(particles[i].x, particles[i].y);
          ctx.lineTo(particles[j].x, particles[j].y);
          ctx.strokeStyle = `rgba(201,146,46,${alpha})`;
          ctx.lineWidth = 0.5;
          ctx.stroke();
        }
      }
    }
  }

  function animate() {
    ctx.clearRect(0, 0, W, H);
    drawConnections();
    particles.forEach(p => { p.update(); p.draw(); });
    requestAnimationFrame(animate);
  }

  animate();

  window.addEventListener('resize', () => {
    W = canvas.width  = window.innerWidth;
    H = canvas.height = window.innerHeight;
  });
})();

// ─── Toast Notifications ──────────────────────────────────────────────────────
const toastIcons = {
  success: 'fa-circle-check',
  error:   'fa-circle-xmark',
  info:    'fa-circle-info',
  warning: 'fa-triangle-exclamation',
};
const toastTitles = {
  success: 'Sucesso',
  error:   'Erro',
  info:    'Informação',
  warning: 'Atenção',
};

function showToast(message, type = 'info', duration = 4000) {
  const container = document.getElementById('toastContainer');
  const toast = document.createElement('div');
  toast.className = `toast ${type}`;
  toast.innerHTML = `
    <i class="fas ${toastIcons[type]} toast-icon"></i>
    <div class="toast-body">
      <div class="toast-title">${toastTitles[type]}</div>
      <div class="toast-msg">${message}</div>
    </div>
    <button class="toast-close" onclick="dismissToast(this.parentElement)">
      <i class="fas fa-times"></i>
    </button>
  `;
  container.appendChild(toast);

  const timer = setTimeout(() => dismissToast(toast), duration);
  toast._timer = timer;

  return toast;
}

function dismissToast(el) {
  if (!el || el.classList.contains('removing')) return;
  clearTimeout(el._timer);
  el.classList.add('removing');
  setTimeout(() => el.remove(), 300);
}

// ─── Tab Switching ────────────────────────────────────────────────────────────
function switchTab(tab) {
  document.querySelectorAll('.auth-panel').forEach(p => p.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  clearAllErrors();

  const panel = document.getElementById(`panel-${tab}`);
  if (panel) panel.classList.add('active');

  const tabsEl = document.getElementById('authTabs');
  if (tab === 'login' || tab === 'register') {
    if (tabsEl) tabsEl.style.display = '';
    document.querySelector(`[data-tab="${tab}"]`)?.classList.add('active');
  } else {
    if (tabsEl) tabsEl.style.display = 'none';
  }
}

function clearAllErrors() {
  document.querySelectorAll('.field-error').forEach(el => el.textContent = '');
  document.querySelectorAll('.input-wrap input').forEach(el => {
    el.classList.remove('error', 'success');
  });
}

function setFieldError(id, msg) {
  const errEl = document.getElementById(`err-${id}`);
  const input = document.getElementById(id.replace(/^(fg-|err-)/, '').replace(/-/g, '-'));
  if (errEl) errEl.textContent = msg;
  // Try to find input by part of the id
  const possibleInput = document.querySelector(`[name="${id.split('-').slice(1).join('_')}"], #${id.split('-').slice(1).join('')}, #${id.split('-').slice(1).join('-')}`);
  if (possibleInput) possibleInput.classList.add('error');
}

function setFieldSuccess(inputId) {
  const el = document.getElementById(inputId);
  if (el) { el.classList.remove('error'); el.classList.add('success'); }
}

function clearFieldError(errId) {
  const el = document.getElementById(errId);
  if (el) el.textContent = '';
}

// ─── Toggle Password Visibility ───────────────────────────────────────────────
function togglePassword(inputId, btn) {
  const input = document.getElementById(inputId);
  if (!input) return;
  const isHidden = input.type === 'password';
  input.type = isHidden ? 'text' : 'password';
  const icon = btn.querySelector('i');
  icon.className = isHidden ? 'fas fa-eye-slash' : 'fas fa-eye';
}

// ─── Password Strength (bound in DOMContentLoaded) ───────────────────────────
function handlePasswordStrength() {
  const val = this.value;
  let score = 0;
  if (val.length >= 8) score++;
  if (/[A-Z]/.test(val)) score++;
  if (/[0-9]/.test(val)) score++;
  if (/[^a-zA-Z0-9]/.test(val)) score++;

  const bars    = ['sb1', 'sb2', 'sb3', 'sb4'];
  const classes = ['active-weak', 'active-fair', 'active-good', 'active-strong'];
  const labels  = ['Fraca', 'Razoável', 'Boa', 'Forte'];
  const colors  = ['#f87171', '#fbbf24', '#84cc16', '#4ade80'];

  bars.forEach((id, i) => {
    const el = document.getElementById(id);
    if (!el) return;
    el.className = 'strength-bar';
    if (i < score) el.classList.add(classes[score - 1]);
  });

  const label = document.getElementById('strengthLabel');
  if (!label) return;
  if (val.length === 0) { label.textContent = ''; return; }
  label.textContent = labels[score - 1] || 'Fraca';
  label.style.color = colors[score - 1] || '#f87171';
}

// ─── Button Loading State ─────────────────────────────────────────────────────
function setButtonLoading(btnId, loading) {
  const btn = document.getElementById(btnId);
  if (!btn) return;
  const text   = btn.querySelector('.btn-text');
  const loader = btn.querySelector('.btn-loader');
  btn.disabled = loading;
  // Use explicit values instead of '' to avoid computed-style fallbacks
  if (text)   text.style.display   = loading ? 'none' : 'flex';
  if (loader) loader.style.display = loading ? 'flex' : 'none';
}

// ─── AUTH SUBMIT HANDLERS (bound inside DOMContentLoaded at the bottom) ───────

async function handleLoginSubmit(e) {
  e.preventDefault();
  clearAllErrors();

  const identifier = document.getElementById('loginIdentifier').value.trim();
  const password   = document.getElementById('loginPassword').value;
  const remember   = document.getElementById('rememberMe').checked;

  let valid = true;
  if (!identifier) {
    document.getElementById('err-login-identifier').textContent = 'Campo obrigatório.';
    document.getElementById('loginIdentifier').classList.add('error');
    valid = false;
  }
  if (!password) {
    document.getElementById('err-login-password').textContent = 'Campo obrigatório.';
    document.getElementById('loginPassword').classList.add('error');
    valid = false;
  }
  if (!valid) { shakeCard(); return; }

  setButtonLoading('loginBtn', true);
  try {
    const { ok, data } = await API.post('/api/auth/login', { identifier, password, remember });
    if (ok && data.success) {
      State.user = data.user;
      State.accessToken = data.accessToken;
      showLoginSuccess(data.user, data.message);
    } else {
      showToast(data.message || 'Credenciais inválidas.', 'error');
      document.getElementById('loginIdentifier').classList.add('error');
      document.getElementById('loginPassword').classList.add('error');
      shakeCard();
    }
  } catch (err) {
    showToast('Erro de conexão. Tente novamente.', 'error');
  } finally {
    setButtonLoading('loginBtn', false);
  }
}

async function handleRegisterSubmit(e) {
  e.preventDefault();
  clearAllErrors();

  const username        = document.getElementById('regUsername').value.trim();
  const email           = document.getElementById('regEmail').value.trim();
  const password        = document.getElementById('regPassword').value;
  const confirmPassword = document.getElementById('regConfirm').value;
  const acceptTerms     = document.getElementById('acceptTerms').checked;

  let valid = true;
  const errList = [];

  if (!username) {
    setError('reg-username', 'regUsername', 'Campo obrigatório.'); valid = false;
  } else if (username.length < 3) {
    setError('reg-username', 'regUsername', 'Mínimo 3 caracteres.'); valid = false;
  } else if (username.length > 20) {
    setError('reg-username', 'regUsername', 'Máximo 20 caracteres.'); valid = false;
  } else if (!/^[a-zA-Z0-9_]+$/.test(username)) {
    setError('reg-username', 'regUsername', 'Apenas letras, números e _.'); valid = false;
  }

  if (!email) {
    setError('reg-email', 'regEmail', 'Campo obrigatório.'); valid = false;
  } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    setError('reg-email', 'regEmail', 'Email inválido.'); valid = false;
  }

  if (!password) {
    setError('reg-password', 'regPassword', 'Campo obrigatório.'); valid = false;
  } else if (password.length < 8) {
    setError('reg-password', 'regPassword', 'Mínimo 8 caracteres.'); valid = false;
  } else if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/.test(password)) {
    setError('reg-password', 'regPassword', 'Requer maiúscula, minúscula e número.'); valid = false;
  }

  if (!confirmPassword) {
    setError('reg-confirm', 'regConfirm', 'Campo obrigatório.'); valid = false;
  } else if (password !== confirmPassword) {
    setError('reg-confirm', 'regConfirm', 'As senhas não coincidem.'); valid = false;
  }

  if (!acceptTerms) {
    const termsErr = document.getElementById('err-reg-terms');
    if (termsErr) termsErr.textContent = 'Você deve aceitar os Termos de Uso.';
    valid = false;
  }

  if (!valid) { shakeCard(); return; }

  setButtonLoading('registerBtn', true);
  try {
    const { ok, data } = await API.post('/api/auth/register', {
      username, email, password, confirmPassword,
    });
    if (ok && data.success) {
      State.user = data.user;
      State.accessToken = data.accessToken;
      showLoginSuccess(data.user, data.message);
    } else {
      showToast(data.message || 'Erro ao criar conta. Tente novamente.', 'error');
      shakeCard();
    }
  } catch (err) {
    showToast('Erro de conexão. Tente novamente.', 'error');
    shakeCard();
  } finally {
    setButtonLoading('registerBtn', false);
  }
}

function setError(errId, inputId, msg) {
  const errEl = document.getElementById(`err-${errId}`);
  const inputEl = document.getElementById(inputId);
  if (errEl) errEl.textContent = msg;
  if (inputEl) inputEl.classList.add('error');
}

async function handleForgotSubmit(e) {
  e.preventDefault();
  clearAllErrors();

  const email = document.getElementById('forgotEmail').value.trim();
  if (!email) {
    document.getElementById('err-forgot-email').textContent = 'Campo obrigatório.';
    document.getElementById('forgotEmail').classList.add('error');
    return;
  }
  if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    document.getElementById('err-forgot-email').textContent = 'Email inválido.';
    document.getElementById('forgotEmail').classList.add('error');
    return;
  }

  setButtonLoading('forgotBtn', true);
  try {
    const { ok, data } = await API.post('/api/auth/forgot-password', { email });
    if (data.success || ok) {
      showToast('Se o email estiver cadastrado, você receberá as instruções em breve.', 'success', 6000);
      setTimeout(() => switchTab('login'), 3000);
    } else {
      showToast(data.message || 'Erro ao processar solicitação.', 'error');
    }
  } catch {
    showToast('Erro de conexão. Tente novamente.', 'error');
  } finally {
    setButtonLoading('forgotBtn', false);
  }
}

// ─── Show Login Success ───────────────────────────────────────────────────────
function showLoginSuccess(user, message) {
  document.getElementById('authTabs').style.display = 'none';
  document.querySelectorAll('.auth-panel').forEach(p => p.classList.remove('active'));
  document.getElementById('panel-success').classList.add('active');

  document.getElementById('successTitle').textContent = message || 'Login Realizado!';
  document.getElementById('successMsg').textContent   = `Bem-vindo ao Spartan Roleplay, ${user.username}!`;
  document.getElementById('welcomeName').textContent  = user.username;
  document.getElementById('welcomeRole').textContent  = formatRole(user.role);

  showToast(`Bem-vindo, ${user.username}!`, 'success');
  animateSuccessEntry();
}

function animateSuccessEntry() {
  const block = document.querySelector('.success-block');
  if (!block) return;
  block.style.opacity = '0';
  block.style.transform = 'scale(0.9)';
  requestAnimationFrame(() => {
    block.style.transition = 'opacity 0.5s ease, transform 0.5s cubic-bezier(.4,0,.2,1)';
    block.style.opacity = '1';
    block.style.transform = 'scale(1)';
  });
}

function shakeCard() {
  const card = document.getElementById('authCard');
  if (!card) return;
  // Remove and force reflow to restart animation cleanly
  card.classList.remove('shake');
  void card.offsetWidth; // trigger reflow
  card.classList.add('shake');
  setTimeout(() => card.classList.remove('shake'), 600);
}

// ─── Go to Dashboard ──────────────────────────────────────────────────────────
function goToDashboard() {
  const overlay = document.getElementById('dashboardOverlay');
  overlay.style.display = 'block';

  if (State.user) {
    populateDashboard(State.user);
  } else {
    loadUserData();
  }

  loadDashboardNews();
  startServerRefresh();
}

async function loadUserData() {
  const { ok, data } = await API.get('/api/user/me');
  if (ok && data.user) {
    State.user = data.user;
    populateDashboard(data.user);
  }
}

function populateDashboard(user) {
  document.getElementById('dashUsername').textContent    = user.username;
  document.getElementById('dashUserRole').textContent    = formatRole(user.role);
  document.getElementById('dashWelcomeName').textContent = user.username;
  document.getElementById('dshPlaytime').textContent     = formatPlaytime(user.playtime);
  document.getElementById('dshChars').textContent        = user.characters || 0;
  document.getElementById('dshMember').textContent       = formatDate(user.created_at);
  document.getElementById('dshWarnings').textContent     = user.warnings || 0;

  document.getElementById('diUsername').textContent  = user.username;
  document.getElementById('diEmail').textContent     = user.email;
  document.getElementById('diRole').innerHTML        = `<span class="role-badge role-${user.role}">${formatRole(user.role)}</span>`;
  document.getElementById('diLastLogin').textContent = user.last_login ? formatDateTime(user.last_login) : 'Primeiro acesso';
}

async function loadDashboardNews() {
  const { ok, data } = await API.get('/api/news');
  const container = document.getElementById('dashNewsList');
  if (!container) return;

  if (!ok || !data.news?.length) {
    container.innerHTML = '<p style="color:var(--text-muted);font-size:.82rem;">Nenhuma notícia disponível.</p>';
    return;
  }

  const catColors = { general: '#c9922e', update: '#4c9fff', event: '#22c55e', maintenance: '#f59e0b', urgent: '#f04040' };

  container.innerHTML = data.news.slice(0, 4).map(n => `
    <div class="dash-news-item">
      <div class="dni-badge" style="background:${catColors[n.category] || '#c9922e'}"></div>
      <div>
        <div class="dni-title">${escHtml(n.title)}</div>
        <div class="dni-date">${formatDate(n.created_at)} · Por ${escHtml(n.author_name || 'Admin')}</div>
      </div>
    </div>
  `).join('');
}

// ─── Logout ───────────────────────────────────────────────────────────────────
async function handleLogout() {
  await API.post('/api/auth/logout');
  State.user = null;
  State.accessToken = null;
  clearInterval(State.refreshInterval);

  const overlay = document.getElementById('dashboardOverlay');
  overlay.style.display = 'none';

  document.getElementById('authTabs').style.display = '';
  switchTab('login');
  document.getElementById('loginIdentifier').value = '';
  document.getElementById('loginPassword').value = '';

  showToast('Logout realizado com sucesso.', 'info');
}

// ─── Server Status ────────────────────────────────────────────────────────────
async function loadServerStatus() {
  const { ok, data } = await API.get('/api/server/status');
  if (!ok || !data.servers?.length) {
    updateStatusUI(null);
    return;
  }

  const server = data.servers[0];
  State.serverStatus = server;
  updateStatusUI(server);
  updateSidebarStats(server);
}

function updateStatusUI(server) {
  const dot   = document.getElementById('statusDot');
  const label = document.getElementById('statusLabel');

  if (!server) {
    dot.className   = 'status-dot offline';
    label.textContent = 'Offline';
    return;
  }

  const isOnline = server.is_online === 1;
  dot.className   = `status-dot ${isOnline ? 'online' : 'offline'}`;
  label.textContent = isOnline ? 'Online' : 'Offline';

  document.getElementById('serverName').textContent    = server.server_name;
  document.getElementById('serverIP').textContent      = `${server.ip}:${server.port}`;
  document.getElementById('serverVersion').textContent = `FiveM v${server.version}`;
  document.getElementById('currentPlayers').textContent = server.current_players;
  document.getElementById('maxPlayers').textContent     = server.max_players;

  const pct = Math.round((server.current_players / server.max_players) * 100);
  document.getElementById('playerBarFill').style.width = `${pct}%`;
}

function updateSidebarStats(server) {
  const count = server?.current_players ?? 0;
  const statEl = document.getElementById('statPlayers');
  if (statEl) statEl.textContent = count + ' online';
  const quickStats = document.getElementById('quickStats');
  if (quickStats) quickStats.style.display = '';
}

function startServerRefresh() {
  clearInterval(State.refreshInterval);
  State.refreshInterval = setInterval(loadServerStatus, 30000);
}

// ─── Leaderboard ──────────────────────────────────────────────────────────────
async function loadLeaderboard() {
  const { ok, data } = await API.get('/api/leaderboard');
  const container = document.getElementById('leaderboardList');
  if (!container) return;

  if (!ok || !data.players?.length) {
    container.innerHTML = '<p style="color:var(--text-muted);font-size:.82rem;padding:8px;">Nenhum dado disponível.</p>';
    return;
  }

  const rankClass = i => i === 0 ? 'r1' : i === 1 ? 'r2' : i === 2 ? 'r3' : 'rn';
  const rankMedal = i => i === 0 ? '🥇' : i === 1 ? '🥈' : i === 2 ? '🥉' : `#${i+1}`;

  container.innerHTML = data.players.map((p, i) => `
    <div class="lb-item">
      <span class="lb-rank ${rankClass(i)}">${rankMedal(i)}</span>
      <div class="lb-avatar"><i class="fas fa-user"></i></div>
      <div class="lb-info">
        <div class="lb-name">${escHtml(p.username)}</div>
        <div class="lb-sub"><span class="role-badge role-${p.role}">${formatRole(p.role)}</span></div>
      </div>
      <span class="lb-time">${formatPlaytime(p.playtime)}</span>
    </div>
  `).join('');
}

// ─── News ─────────────────────────────────────────────────────────────────────
async function loadNews() {
  const { ok, data } = await API.get('/api/news');
  const container = document.getElementById('newsList');
  if (!container) return;

  if (!ok || !data.news?.length) {
    container.innerHTML = '<p style="color:var(--text-muted);font-size:.82rem;padding:8px;">Sem notícias no momento.</p>';
    return;
  }

  container.innerHTML = data.news.map(n => `
    <div class="news-item cat-${n.category}" onclick="showToast('${escHtml(n.title)}','info')">
      <div class="news-item-header">
        <span class="news-badge ${n.category}">${categoryLabel(n.category)}</span>
        ${n.pinned ? '<i class="fas fa-thumbtack news-pinned" title="Fixado"></i>' : ''}
      </div>
      <div class="news-item-title">${escHtml(n.title)}</div>
      <div class="news-item-date"><i class="far fa-clock"></i> ${formatDate(n.created_at)}</div>
    </div>
  `).join('');
}

// ─── Stats Animation ──────────────────────────────────────────────────────────
function animateCounter(id, target, duration = 1800) {
  const el = document.getElementById(id);
  if (!el) return;
  const start = 0;
  const startTime = performance.now();

  function update(now) {
    const elapsed = now - startTime;
    const progress = Math.min(elapsed / duration, 1);
    const eased = 1 - Math.pow(1 - progress, 3);
    el.textContent = Math.round(start + (target - start) * eased).toLocaleString('pt-BR');
    if (progress < 1) requestAnimationFrame(update);
  }
  requestAnimationFrame(update);
}

function loadRightPanelStats() {
  const cards = document.querySelectorAll('.stat-card[data-value]');
  const observer = new IntersectionObserver(entries => {
    entries.forEach(e => {
      if (e.isIntersecting) {
        const id  = e.target.querySelector('.stat-number')?.id;
        const val = parseInt(e.target.dataset.value, 10);
        if (id && val) animateCounter(id, val);
        observer.unobserve(e.target);
      }
    });
  }, { threshold: 0.3 });

  cards.forEach(card => observer.observe(card));
}

// ─── Copy Server IP ───────────────────────────────────────────────────────────
async function copyServerIP() {
  const ip = State.serverStatus?.ip
    ? `${State.serverStatus.ip}:${State.serverStatus.port}`
    : 'play.spartanroleplay.com:30120';

  try {
    await navigator.clipboard.writeText(ip);
  } catch {
    // fallback
    const ta = document.createElement('textarea');
    ta.value = ip;
    ta.style.position = 'fixed';
    ta.style.opacity = '0';
    document.body.appendChild(ta);
    ta.focus();
    ta.select();
    document.execCommand('copy');
    document.body.removeChild(ta);
  }

  const tooltip = document.getElementById('copyTooltip');
  tooltip.classList.add('show');
  setTimeout(() => tooltip.classList.remove('show'), 2500);
  showToast(`IP copiado: ${ip}`, 'success', 3000);
}

// ─── Terms Modal ──────────────────────────────────────────────────────────────
function showTermsModal() {
  const modal = document.getElementById('termsModal');
  modal.style.display = 'flex';
}

function closeTermsModal(e) {
  if (!e || e.target === document.getElementById('termsModal') || !e.target) {
    document.getElementById('termsModal').style.display = 'none';
  }
}

function acceptTerms() {
  document.getElementById('acceptTerms').checked = true;
  document.getElementById('err-reg-terms').textContent = '';
  document.getElementById('termsModal').style.display = 'none';
  showToast('Termos aceitos.', 'success', 2000);
}

// ─── Helpers ──────────────────────────────────────────────────────────────────
function escHtml(str) {
  const d = document.createElement('div');
  d.appendChild(document.createTextNode(str || ''));
  return d.innerHTML;
}

function formatRole(role) {
  const map = { owner: 'Dono', admin: 'Admin', moderator: 'Moderador', vip: 'VIP', player: 'Jogador' };
  return map[role] || role;
}

function formatPlaytime(minutes) {
  if (!minutes) return '0h';
  const h = Math.floor(minutes / 60);
  const m = minutes % 60;
  return h > 0 ? `${h}h${m > 0 ? ` ${m}m` : ''}` : `${m}m`;
}

function formatDate(dateStr) {
  if (!dateStr) return '—';
  try {
    return new Date(dateStr).toLocaleDateString('pt-BR', { day: '2-digit', month: '2-digit', year: 'numeric' });
  } catch { return dateStr; }
}

function formatDateTime(dateStr) {
  if (!dateStr) return '—';
  try {
    return new Date(dateStr).toLocaleString('pt-BR', { day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit' });
  } catch { return dateStr; }
}

function categoryLabel(cat) {
  const map = { general: 'Geral', update: 'Update', event: 'Evento', maintenance: 'Manutenção', urgent: 'Urgente' };
  return map[cat] || cat;
}

// ─── CSS shake animation ──────────────────────────────────────────────────────
const shakeStyle = document.createElement('style');
shakeStyle.textContent = `
  @keyframes shakeAnim {
    0%,100% { transform: translateX(0); }
    15%,45%,75% { transform: translateX(-8px); }
    30%,60%,90% { transform: translateX(8px); }
  }
  .shake { animation: shakeAnim 0.5s cubic-bezier(.36,.07,.19,.97) forwards !important; }
`;
document.head.appendChild(shakeStyle);

// ─── Check existing session on load ──────────────────────────────────────────
async function checkExistingSession() {
  const refreshed = await API.refresh();
  if (!refreshed) return;

  const { ok, data } = await API.get('/api/user/me');
  if (ok && data.user) {
    State.user = data.user;
    showToast(`Sessão restaurada — Olá, ${data.user.username}!`, 'info', 3000);
  }
}

// ─── Init ─────────────────────────────────────────────────────────────────────
document.addEventListener('DOMContentLoaded', async () => {
  // Attach form handlers (safe, DOM is guaranteed ready here)
  const loginForm    = document.getElementById('loginForm');
  const registerForm = document.getElementById('registerForm');
  const forgotForm   = document.getElementById('forgotForm');

  if (loginForm)    loginForm.addEventListener('submit',    handleLoginSubmit);
  if (registerForm) registerForm.addEventListener('submit', handleRegisterSubmit);
  if (forgotForm)   forgotForm.addEventListener('submit',   handleForgotSubmit);

  // Attach password strength listener
  const regPasswordEl = document.getElementById('regPassword');
  if (regPasswordEl) {
    regPasswordEl.addEventListener('input', handlePasswordStrength);
  }

  // Attach refresh button
  const refreshBtn = document.getElementById('refreshBtn');
  if (refreshBtn) {
    refreshBtn.addEventListener('click', function () {
      this.style.animation = 'none';
      void this.offsetWidth;
      this.style.animation = 'spin 0.5s linear';
      setTimeout(() => { this.style.animation = ''; }, 500);
      loadServerStatus();
      showToast('Status atualizado.', 'info', 2000);
    });
  }

  // Load initial data in parallel
  await Promise.all([
    loadServerStatus(),
    loadNews(),
    loadLeaderboard(),
  ]);

  loadRightPanelStats();
  startServerRefresh();

  // Auto-refresh on visibility change
  document.addEventListener('visibilitychange', () => {
    if (document.visibilityState === 'visible') loadServerStatus();
  });

  // Auto-refresh every 30s
  setInterval(() => {
    if (document.visibilityState === 'visible') loadServerStatus();
  }, 30000);

  // Restore session silently
  checkExistingSession();
});

// Keyboard shortcuts
document.addEventListener('keydown', e => {
  if (e.key === 'Escape') {
    const modal = document.getElementById('termsModal');
    if (modal.style.display !== 'none') closeTermsModal();
  }
});

// Make functions globally accessible
window.switchTab      = switchTab;
window.togglePassword = togglePassword;
window.showToast      = showToast;
window.copyServerIP   = copyServerIP;
window.showTermsModal = showTermsModal;
window.closeTermsModal= closeTermsModal;
window.acceptTerms    = acceptTerms;
window.goToDashboard  = goToDashboard;
window.handleLogout   = handleLogout;
window.dismissToast   = dismissToast;
