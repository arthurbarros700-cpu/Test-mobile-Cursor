const app = document.getElementById('app');
const subsystemList = document.getElementById('subsystem-list');
const partsList = document.getElementById('parts-list');
const shopLabel = document.getElementById('shop-label');
const moneyValue = document.getElementById('money-value');
const toastEl = document.getElementById('toast');
const diagTitle = document.getElementById('diag-title');
const stockTitle = document.getElementById('stock-title');

let state = {
  locale: {},
  parts: [],
  diagnostic: { subsystems: [] },
  shop: null,
  stock: {},
  money: 0,
  canUseShop: true,
};

const subsystemLabels = {
  engine: 'Motor',
  body: 'Carroçaria',
  tank: 'Combustível',
  tyres: 'Pneus',
  doors: 'Portas',
  windows: 'Vidros',
  exhaust: 'Escape',
};

function post(name, data) {
  const rn =
    typeof GetParentResourceName === 'function'
      ? GetParentResourceName()
      : 'mechanic_pro';
  fetch(`https://${rn}/${name}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json; charset=UTF-8' },
    body: JSON.stringify(data || {}),
  }).catch(() => {});
}

function formatMoney(n) {
  const v = Number(n) || 0;
  return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'USD', maximumFractionDigits: 0 }).format(v).replace('US$', '$');
}

function showToast(message, level) {
  if (!message) return;
  toastEl.textContent = message;
  toastEl.classList.remove('hidden', 'error', 'ok');
  if (level === 'error') toastEl.classList.add('error');
  if (level === 'ok') toastEl.classList.add('ok');
  clearTimeout(showToast._t);
  showToast._t = setTimeout(() => {
    toastEl.classList.add('hidden');
  }, 4200);
}

function renderDiagnostics() {
  subsystemList.innerHTML = '';
  const subs = state.diagnostic.subsystems || [];
  subs.forEach((s) => {
    const row = document.createElement('div');
    row.className = `sub-row ${s.status || ''}`;
    const left = document.createElement('div');
    const name = document.createElement('div');
    name.className = 'sub-name';
    name.textContent = s.label || subsystemLabels[s.id] || s.id;
    const meta = document.createElement('div');
    meta.className = 'sub-meta';
    meta.textContent = `${s.pct ?? 0}% · ${s.statusLabel || ''}`;
    left.appendChild(name);
    left.appendChild(meta);
    const right = document.createElement('div');
    right.className = 'sub-bar-wrap';
    const bar = document.createElement('div');
    bar.className = `sub-bar ${s.status || ''}`;
    const fill = document.createElement('i');
    fill.style.width = `${Math.max(0, Math.min(100, s.pct || 0))}%`;
    bar.appendChild(fill);
    const pill = document.createElement('span');
    pill.className = `status-pill ${s.status || ''}`;
    pill.textContent = s.statusLabel || '';
    right.appendChild(bar);
    right.appendChild(pill);
    row.appendChild(left);
    row.appendChild(right);
    subsystemList.appendChild(row);
  });
}

function partDisabled(part) {
  if (part.requiresShop && !state.shop) return true;
  if (part.requiresShop && state.shop && !state.canUseShop) return true;
  if (state.shop && (state.stock[part.id] ?? 0) < 1) return true;
  return false;
}

function partStockLabel(part) {
  if (!state.shop) return 'Campo · sem consumo de estoque';
  const n = state.stock[part.id] ?? 0;
  const low = n <= 3;
  return low ? `Estoque: ${n} (baixo)` : `Estoque: ${n}`;
}

function renderParts() {
  partsList.innerHTML = '';
  state.parts.forEach((part) => {
    const row = document.createElement('div');
    const disabled = partDisabled(part);
    row.className = 'part-row' + (disabled ? ' disabled' : '');

    const left = document.createElement('div');
    const title = document.createElement('div');
    title.className = 'part-title';
    title.textContent = part.label || part.id;
    const tags = document.createElement('div');
    tags.className = 'part-tags';
    if (part.requiresShop) {
      const t = document.createElement('span');
      t.className = 'tag warn';
      t.textContent = 'Oficina';
      tags.appendChild(t);
    }
    if (part.isExhaustJob) {
      const t = document.createElement('span');
      t.className = 'tag';
      t.textContent = 'Tubagem multi-etapa';
      tags.appendChild(t);
    }
    (part.healthKeys || []).forEach((k) => {
      const t = document.createElement('span');
      t.className = 'tag';
      t.textContent = subsystemLabels[k] || k;
      tags.appendChild(t);
    });
    left.appendChild(title);
    left.appendChild(tags);

    const right = document.createElement('div');
    right.className = 'part-side';
    const price = document.createElement('div');
    price.className = 'price';
    price.textContent = formatMoney(part.basePrice);
    const stock = document.createElement('div');
    stock.className = 'stock-line';
    stock.textContent = partStockLabel(part);
    const btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'btn-repair';
    btn.textContent = 'Reparar';
    btn.disabled = disabled || (state.money < (part.basePrice || 0));
    btn.addEventListener('click', () => {
      post('repair', { partId: part.id });
    });
    right.appendChild(price);
    right.appendChild(stock);
    right.appendChild(btn);

    row.appendChild(left);
    row.appendChild(right);
    partsList.appendChild(row);
  });
}

function applyLocale() {
  const L = state.locale;
  if (L.diagnostic_title) diagTitle.textContent = L.diagnostic_title;
  if (L.stock_title) stockTitle.textContent = L.stock_title;
}

function renderAll() {
  applyLocale();
  shopLabel.textContent = state.shop ? state.shop.label : 'Fora da oficina · apenas peças de campo';
  moneyValue.textContent = formatMoney(state.money);
  renderDiagnostics();
  renderParts();
}

window.addEventListener('message', (event) => {
  const msg = event.data;
  if (!msg || !msg.action) return;
  if (msg.action === 'open') {
    state.locale = msg.locale || {};
    state.parts = msg.parts || [];
    state.diagnostic = msg.diagnostic || { subsystems: [] };
    state.shop = null;
    state.stock = {};
    state.money = 0;
    state.canUseShop = true;
    app.classList.remove('hidden');
    renderAll();
  }
  if (msg.action === 'close') {
    app.classList.add('hidden');
  }
  if (msg.action === 'diagnostic') {
    state.diagnostic = msg.diagnostic || state.diagnostic;
    renderDiagnostics();
  }
  if (msg.action === 'panelData') {
    state.shop = msg.shop;
    state.stock = msg.stock || {};
    state.money = msg.money ?? state.money;
    state.canUseShop = msg.canUseShop !== false;
    renderParts();
    moneyValue.textContent = formatMoney(state.money);
    shopLabel.textContent = state.shop ? state.shop.label : 'Fora da oficina · apenas peças de campo';
  }
  if (msg.action === 'toast') {
    showToast(msg.message, msg.level);
  }
});

document.getElementById('btn-close').addEventListener('click', () => post('close'));
document.getElementById('btn-refresh').addEventListener('click', () => post('refresh'));

window.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') post('close');
});
