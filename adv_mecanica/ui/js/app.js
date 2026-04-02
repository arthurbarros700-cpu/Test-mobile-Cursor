/* ════════════════════════════════════════════════════════════════════════════
   ADV Mecânica – NUI Application
   ════════════════════════════════════════════════════════════════════════════ */

'use strict';

const UI = (() => {

  /* ─── State ─────────────────────────────────────────────────────────────── */
  let _state = {
    damage:       {},
    stock:        {},
    parts:        {},
    partGroups:   [],
    selectedParts:new Set(),
    activeTab:    null,
    locale:       {},
    player:       { xp: 0, level: 1, name: 'Aprendiz', discount: 0 },
    workshop:     null,
    stats:        null,
  };

  /* ─── Condition helpers ─────────────────────────────────────────────────── */
  const conditionOf = (val) => {
    if (val >= 950) return { label: 'PERFEITO', cls: 'perfect' };
    if (val >= 800) return { label: 'BOM',      cls: 'good'    };
    if (val >= 500) return { label: 'GASTO',    cls: 'worn'    };
    if (val >= 200) return { label: 'DANO',     cls: 'damaged' };
    return               { label: 'CRÍTICO',    cls: 'critical' };
  };

  const fluidColor = (pct) => {
    if (pct >= 0.70) return '#27ae60';
    if (pct >= 0.40) return '#f1c40f';
    if (pct >= 0.15) return '#e67e22';
    return '#e74c3c';
  };

  /* ─── Locale ────────────────────────────────────────────────────────────── */
  const t = (key, ...args) => {
    let str = _state.locale[key] || key;
    args.forEach((a, i) => { str = str.replace('{' + i + '}', a); });
    return str;
  };

  /* ─── nuiFetch helper ───────────────────────────────────────────────────── */
  const nui = (event, data = {}) =>
    fetch(`https://adv_mecanica/${event}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    }).then(r => r.json()).catch(() => ({}));

  /* ─── DOM shortcuts ─────────────────────────────────────────────────────── */
  const $  = (sel, ctx = document) => ctx.querySelector(sel);
  const $$ = (sel, ctx = document) => [...ctx.querySelectorAll(sel)];

  /* ══════════════════════════════════════════════════════════════════════════
     RENDER FUNCTIONS
     ══════════════════════════════════════════════════════════════════════════ */

  /* ─── Tabs ──────────────────────────────────────────────────────────────── */
  function renderTabs() {
    const list = $('#tab-list');
    list.innerHTML = '';
    _state.partGroups.forEach(grp => {
      const badgeCount = grp.parts.filter(pk => {
        const v = _state.damage[pk];
        return v !== undefined && v < 500;
      }).length;

      const el = document.createElement('div');
      el.className = 'tab-item' + (grp.id === _state.activeTab ? ' active' : '');
      el.dataset.tab = grp.id;
      el.innerHTML = `
        <i class="fa-solid ${grp.icon}"></i>
        <span>${grp.label}</span>
        ${badgeCount > 0 ? `<span class="badge">${badgeCount}</span>` : ''}
      `;
      el.addEventListener('click', () => switchTab(grp.id));
      list.appendChild(el);
    });
  }

  function switchTab(id) {
    _state.activeTab = id;
    $$('.tab-item').forEach(el => el.classList.toggle('active', el.dataset.tab === id));
    renderParts();
  }

  /* ─── Parts ─────────────────────────────────────────────────────────────── */
  function renderParts() {
    const container = $('#parts-container');
    container.innerHTML = '';

    const grp = _state.partGroups.find(g => g.id === _state.activeTab);
    if (!grp) return;

    grp.parts.forEach(partKey => {
      const cfg   = _state.parts[partKey];
      const val   = _state.damage[partKey] ?? 1000;
      const cond  = conditionOf(val);
      const pct   = Math.round(val / 10);
      const sel   = _state.selectedParts.has(partKey);
      const label = partKey.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());

      const card = document.createElement('div');
      card.className = `part-card ${sel ? 'selected' : ''} ${cond.cls === 'critical' ? 'critical' : ''}`;
      card.dataset.part = partKey;
      card.innerHTML = `
        <div class="part-header">
          <span class="part-name">${label}</span>
          <span class="part-cond cond-${cond.cls}">${cond.label}</span>
        </div>
        <div class="part-bar-wrap">
          <div class="part-bar-fill fill-${cond.cls}" style="width:${pct}%"></div>
        </div>
        <div class="part-meta">
          <span>${cfg ? cfg.item : '—'}</span>
          ${cfg ? `<span>R$ ${cfg.cost.toLocaleString('pt-BR')}</span>` : ''}
        </div>
        <div class="part-select-mark"><i class="fa-solid fa-check"></i></div>
      `;
      card.addEventListener('click', () => togglePart(partKey));
      container.appendChild(card);
    });

    updateSummary();
  }

  function togglePart(partKey) {
    if (_state.selectedParts.has(partKey)) {
      _state.selectedParts.delete(partKey);
    } else {
      _state.selectedParts.add(partKey);
    }
    renderParts();
  }

  /* ─── Summary Bar ───────────────────────────────────────────────────────── */
  function updateSummary() {
    const selected = [..._state.selectedParts];
    const summary  = $('#repair-summary');
    if (!summary) return;

    if (selected.length === 0) {
      summary.classList.add('hidden');
      return;
    }
    summary.classList.remove('hidden');

    let totalTime = 0, totalCost = 0, totalXP = 0;
    selected.forEach(pk => {
      const cfg = _state.parts[pk];
      if (cfg) {
        totalTime += cfg.time;
        totalCost += cfg.cost * (1 - _state.player.discount);
        totalXP   += cfg.exp;
      }
    });

    $('#sum-time').textContent = totalTime + 's';
    $('#sum-cost').textContent = 'R$ ' + Math.floor(totalCost).toLocaleString('pt-BR');
    $('#sum-xp').textContent   = Math.round(totalXP);
  }

  /* ─── Fluids Panel ──────────────────────────────────────────────────────── */
  function renderFluids() {
    const panel = $('#fluids-panel');
    if (!panel) return;

    const items = [
      { key: 'oil',         label: 'Óleo Motor',    isFluid: true },
      { key: 'coolant',     label: 'Arrefecimento',  isFluid: true },
      { key: 'brake_fluid', label: 'Fluido de Freio',isFluid: true },
      { key: 'engine',      label: 'Motor',          isFluid: false },
      { key: 'gearbox',     label: 'Câmbio',         isFluid: false },
    ];

    panel.innerHTML = items.map(item => {
      const rawVal = _state.damage[item.key];
      const pct    = item.isFluid ? (rawVal ?? 1) * 100 : (rawVal ?? 1000) / 10;
      const color  = item.isFluid ? fluidColor(rawVal ?? 1) : (pct >= 50 ? '#27ae60' : '#e74c3c');
      return `
        <div class="fluid-row">
          <div class="fluid-label">
            <span>${item.label}</span>
            <span class="fluid-pct">${Math.round(pct)}%</span>
          </div>
          <div class="fluid-bar-wrap">
            <div class="fluid-bar-fill" style="width:${pct}%;background:${color}"></div>
          </div>
        </div>
      `;
    }).join('');
  }

  /* ─── Body Diagram ──────────────────────────────────────────────────────── */
  function renderBodyDiagram() {
    const panel = $('#body-panel');
    if (!panel) return;

    const cells = [
      { key: 'windshield',   label: 'Vidro F' },
      { key: 'bonnet',       label: 'Capô'    },
      { key: 'body_front',   label: 'Frente'  },
      { key: 'body_left',    label: 'Esq.'    },
      { key: null,           label: '●'       },
      { key: 'body_right',   label: 'Dir.'    },
      { key: 'trunk',        label: 'Porta-M' },
      { key: 'bumper_rear',  label: 'P. Tras' },
      { key: 'body_rear',    label: 'Traseira'},
    ];

    panel.innerHTML = cells.map(c => {
      if (!c.key) return `<div class="body-cell" style="background:#2a2e38">${c.label}</div>`;
      const val  = _state.damage[c.key] ?? 1000;
      const cond = conditionOf(val);
      return `<div class="body-cell b-${cond.cls}" title="${c.key}: ${Math.round(val/10)}%">${c.label}</div>`;
    }).join('');
  }

  /* ─── XP Display ────────────────────────────────────────────────────────── */
  function renderXP() {
    const p = _state.player;
    const xpEl  = $('#xp-display');
    const lvlEl = $('#level-display');
    if (xpEl)  xpEl.textContent  = p.xp + ' XP';
    if (lvlEl) lvlEl.textContent = `Nível ${p.level} – ${p.name}`;
  }

  /* ─── Stock Table ───────────────────────────────────────────────────────── */
  function renderStockTable(filter = '') {
    const tbody = $('#stock-tbody');
    if (!tbody) return;

    tbody.innerHTML = '';
    const lf = filter.toLowerCase();

    const partMap = {};
    Object.entries(_state.parts).forEach(([key, cfg]) => {
      if (!partMap[cfg.item]) partMap[cfg.item] = key;
    });

    Object.entries(_state.stock).forEach(([item, qty]) => {
      if (lf && !item.toLowerCase().includes(lf)) return;

      const partKey = partMap[item] || '';
      const label   = partKey.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase()) || item;
      const max     = 50;
      let stCls, stLbl;
      if (qty <= 0)  { stCls = 'st-empty'; stLbl = 'Sem Estoque'; }
      else if (qty <= 5) { stCls = 'st-low';   stLbl = 'Baixo';      }
      else               { stCls = 'st-ok';    stLbl = 'Normal';     }

      const tr = document.createElement('tr');
      tr.innerHTML = `
        <td>${label}</td>
        <td style="color:#8b93a5;font-size:11px">${item}</td>
        <td><b>${qty}</b> / ${max}</td>
        <td><span class="stock-status ${stCls}">${stLbl}</span></td>
        <td>
          <button class="btn-sm" onclick="UI.quickBuy('${item}',1)">
            <i class="fa-solid fa-cart-plus"></i> Comprar
          </button>
        </td>
      `;
      tbody.appendChild(tr);
    });
  }

  /* ─── Inspection Panel ──────────────────────────────────────────────────── */
  function renderInspection(damage, vehicleName) {
    const body = $('#inspection-body');
    if (!body) return;

    const groups = [
      { title: 'Motor & Transmissão', keys: ['engine','radiator','turbo','gearbox','clutch','driveshaft','alternator','battery'] },
      { title: 'Suspensão',           keys: ['suspension_fl','suspension_fr','suspension_rl','suspension_rr'] },
      { title: 'Freios',              keys: ['brakes_fl','brakes_fr','brakes_rl','brakes_rr','brake_fluid'] },
      { title: 'Rodas & Pneus',       keys: ['tyre_fl','tyre_fr','tyre_rl','tyre_rr','rim_fl','rim_fr','rim_rl','rim_rr'] },
      { title: 'Carroceria',          keys: ['body_front','body_rear','body_left','body_right','bumper_front','bumper_rear','bonnet','trunk','windshield'] },
      { title: 'Fluidos',             keys: ['oil','coolant','brake_fluid','fuel_filter'] },
    ];

    body.innerHTML = groups.map(grp => {
      const rows = grp.keys.map(k => {
        const rawVal = damage[k];
        if (rawVal === undefined) return '';
        let pct, isFluid = ['oil','coolant','brake_fluid'].includes(k);
        pct = isFluid ? Math.round(rawVal * 100) : Math.round(rawVal / 10);
        const cond = conditionOf(isFluid ? rawVal * 1000 : rawVal);
        const label = k.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
        return `
          <div class="insp-row">
            <span class="insp-key">${label}</span>
            <span class="insp-val cond-${cond.cls}" style="color:var(--text-primary)">${pct}% <small style="color:var(--text-muted)">${cond.label}</small></span>
          </div>
        `;
      }).join('');
      if (!rows) return '';
      return `
        <div class="insp-group">
          <div class="insp-group-title">${grp.title}</div>
          ${rows}
        </div>
      `;
    }).join('');
  }

  /* ═══════════════════════════════════════════════════════════════════════════
     PUBLIC API – bound to window.UI
     ═══════════════════════════════════════════════════════════════════════════ */

  function open(data) {
    _state.damage     = data.damage     || {};
    _state.stock      = data.stock      || {};
    _state.parts      = data.parts      || {};
    _state.partGroups = data.partGroups || [];
    _state.workshop   = data.workshop   || null;
    _state.player     = data.playerLevel || { level:1, name:'Aprendiz', discount:0 };
    _state.player.xp  = data.playerXP   || 0;
    _state.selectedParts.clear();

    if (!_state.activeTab && _state.partGroups.length > 0) {
      _state.activeTab = _state.partGroups[0].id;
    }

    // Update vehicle name
    const vehName = data.workshop?.name || 'Veículo';
    const vehEl   = $('#veh-name');
    if (vehEl) vehEl.textContent = vehName;

    renderXP();
    renderTabs();
    renderParts();
    renderFluids();
    renderBodyDiagram();

    $('#app').classList.remove('hidden');
    $('#panel-workshop').classList.remove('hidden');
    nui('nuiOpened');
  }

  function close() {
    $('#app').classList.add('hidden');
    $$('.panel').forEach(p => p.classList.add('hidden'));
    _state.selectedParts.clear();
    nui('closePanel');
  }

  function openStock() {
    $('#panel-workshop').classList.add('hidden');
    $('#panel-stock').classList.remove('hidden');
    renderStockTable();
  }

  function closeStock() {
    $('#panel-stock').classList.add('hidden');
    $('#panel-workshop').classList.remove('hidden');
  }

  function openStats() {
    $('#panel-workshop').classList.add('hidden');
    $('#panel-stats').classList.remove('hidden');
    renderStats();
  }

  function closeStats() {
    $('#panel-stats').classList.add('hidden');
    $('#panel-workshop').classList.remove('hidden');
  }

  function closeInspection() {
    $('#panel-inspection').classList.add('hidden');
    $('#app').classList.add('hidden');
    nui('nuiClosed');
  }

  function filterStock(val) {
    renderStockTable(val);
  }

  function startRepair() {
    if (_state.selectedParts.size === 0) return;
    const method = $('#payment-method')?.value || 'bank';
    nui('startRepair', { parts: [..._state.selectedParts], paymentMethod: method });
    _state.selectedParts.clear();
    renderParts();
    showRepairOverlay([..._state.selectedParts]);
  }

  function liftVehicle()  { nui('liftVehicle');  }
  function lowerVehicle() { nui('lowerVehicle'); }
  function towVehicle()   { nui('towVehicle');   }

  function quickBuy(item, qty) {
    nui('buyPart', { item, qty });
  }

  /* ─── Repair Overlay ────────────────────────────────────────────────────── */
  function showRepairOverlay(parts) {
    const overlay = $('#repair-overlay');
    if (!overlay) return;
    overlay.classList.remove('hidden');
  }

  function updateRepairProgress(data) {
    const overlay  = $('#repair-overlay');
    const label    = $('#repair-label');
    const stepEl   = $('#repair-step');
    const bar      = $('#repair-progress-bar');
    if (!overlay) return;

    overlay.classList.remove('hidden');
    const partLabel = data.part.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
    if (label)  label.textContent  = `Reparando: ${partLabel}`;
    if (stepEl) stepEl.textContent = `Peça ${data.step} de ${data.total}`;
    if (bar) {
      bar.style.transition = `width ${data.duration}s linear`;
      bar.style.width = '100%';
    }
  }

  function hideRepairOverlay() {
    const overlay = $('#repair-overlay');
    const bar     = $('#repair-progress-bar');
    if (bar) { bar.style.transition = 'none'; bar.style.width = '0%'; }
    if (overlay) overlay.classList.add('hidden');
  }

  /* ─── Pattern overlay ───────────────────────────────────────────────────── */
  function showPattern(sequence) {
    const overlay = $('#pattern-overlay');
    const seqEl   = $('#pattern-sequence');
    if (!overlay || !seqEl) return;

    seqEl.innerHTML = sequence.map((k, i) => `<div class="key-btn" id="key-${i}">${k}</div>`).join('');
    overlay.classList.remove('hidden');
  }

  function hidePattern() {
    $('#pattern-overlay')?.classList.add('hidden');
  }

  function patternStep(index) {
    const el = $(`#key-${index - 1}`);
    if (el) el.classList.add('correct');
  }

  function patternFail() {
    $$('.key-btn').forEach(el => el.classList.add('wrong'));
    setTimeout(() => $('#pattern-overlay')?.classList.add('hidden'), 1000);
  }

  function patternSuccess() {
    $$('.key-btn').forEach(el => el.classList.add('correct'));
    setTimeout(() => $('#pattern-overlay')?.classList.add('hidden'), 700);
  }

  /* ─── Stats ─────────────────────────────────────────────────────────────── */
  function renderStats() {
    const cards = $('#stat-cards');
    const bars  = $('#stat-bars');
    if (!cards) return;

    const p = _state.player;
    cards.innerHTML = `
      <div class="stat-card"><div class="stat-card-value">${p.level || 1}</div><div class="stat-card-label">Nível</div></div>
      <div class="stat-card"><div class="stat-card-value">${(p.xp || 0).toLocaleString('pt-BR')}</div><div class="stat-card-label">XP Total</div></div>
      <div class="stat-card"><div class="stat-card-value">${Math.round((p.discount || 0) * 100)}%</div><div class="stat-card-label">Desconto</div></div>
    `;

    if (bars && _state.stats) {
      const max = Math.max(..._state.stats.map(r => r.total), 1);
      bars.innerHTML = _state.stats.map(r => `
        <div class="stat-bar-row">
          <div class="stat-bar-label">${r.part_key}</div>
          <div class="stat-bar-wrap"><div class="stat-bar-fill" style="width:${(r.total/max)*100}%"></div></div>
          <div class="stat-bar-val">${r.total}</div>
        </div>
      `).join('');
    }
  }

  /* ═══════════════════════════════════════════════════════════════════════════
     NUI MESSAGE HANDLER
     ═══════════════════════════════════════════════════════════════════════════ */
  window.addEventListener('message', (event) => {
    const data = event.data;
    if (!data || !data.action) return;

    switch (data.action) {
      case 'openPanel':
        open(data);
        break;

      case 'closePanel':
        close();
        break;

      case 'openInspection':
        $('#app').classList.remove('hidden');
        $('#panel-inspection').classList.remove('hidden');
        renderInspection(data.damage || {}, data.vehicle || '');
        nui('nuiOpened');
        break;

      case 'updateXP':
        _state.player.xp      = data.xp;
        _state.player.level   = data.level;
        _state.player.name    = data.name;
        _state.player.discount= data.discount;
        renderXP();
        break;

      case 'updateStock':
        _state.stock = data.stock || {};
        if (!$('#panel-stock').classList.contains('hidden')) renderStockTable();
        break;

      case 'repairProgress':
        updateRepairProgress(data);
        break;

      case 'repairDone':
        hideRepairOverlay();
        // Flash success
        break;

      case 'repairError':
        hideRepairOverlay();
        break;

      case 'showPattern':
        showPattern(data.sequence);
        break;

      case 'hidePattern':
        hidePattern();
        break;

      case 'patternStep':
        patternStep(data.index);
        break;

      case 'patternFail':
        patternFail();
        break;

      case 'patternSuccess':
        patternSuccess();
        break;
    }
  });

  /* ─── ESC close ─────────────────────────────────────────────────────────── */
  window.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') close();
  });

  return {
    open, close,
    openStock, closeStock, filterStock,
    openStats, closeStats,
    closeInspection,
    startRepair,
    liftVehicle, lowerVehicle, towVehicle,
    quickBuy,
  };
})();
