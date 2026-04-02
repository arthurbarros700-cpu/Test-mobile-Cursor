const resourceName = typeof GetParentResourceName === 'function'
  ? GetParentResourceName()
  : 'vx_mechanic_pro';

const state = {
  visible: false,
  activeTab: 'overview',
  workshop: null,
  vehicle: null,
  stock: {},
  history: [],
  serviceQuotes: [],
  tuningPresets: [],
  filterCategory: 'all',
};

const tabs = [
  { id: 'overview', label: 'Visao geral' },
  { id: 'components', label: 'Componentes' },
  { id: 'services', label: 'Servicos' },
  { id: 'tuning', label: 'Tunagem' },
  { id: 'stock', label: 'Estoque' },
  { id: 'history', label: 'Historico' },
];

const el = {
  app: document.getElementById('app'),
  workshopName: document.getElementById('workshopName'),
  serviceStatus: document.getElementById('serviceStatus'),
  vehicleTitle: document.getElementById('vehicleTitle'),
  vehiclePlate: document.getElementById('vehiclePlate'),
  vehicleClass: document.getElementById('vehicleClass'),
  healthScore: document.getElementById('healthScore'),
  navTabs: document.getElementById('navTabs'),
  closeBtn: document.getElementById('closeBtn'),
  overview: document.getElementById('tab-overview'),
  components: document.getElementById('tab-components'),
  services: document.getElementById('tab-services'),
  tuning: document.getElementById('tab-tuning'),
  stock: document.getElementById('tab-stock'),
  history: document.getElementById('tab-history'),
  componentTemplate: document.getElementById('template-component-card'),
};

function api(eventName, payload = {}) {
  return fetch(`https://${resourceName}/${eventName}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(payload),
  }).catch(() => undefined);
}

function money(value) {
  return new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
    maximumFractionDigits: 0,
  }).format(Number(value || 0));
}

function percent(value) {
  return `${Math.round(Number(value || 0))}%`;
}

function text(value, fallback = '---') {
  return value === undefined || value === null || value === '' ? fallback : String(value);
}

function badgeClass(value) {
  const numeric = Number(value || 0);
  if (numeric >= 80) return 'good';
  if (numeric >= 50) return 'warning';
  return 'bad';
}

function categoryLabel(category) {
  const map = {
    powertrain: 'Powertrain',
    cooling: 'Arrefecimento',
    transmission: 'Transmissao',
    braking: 'Freios',
    handling: 'Dinamica',
    electrical: 'Eletrica',
    bodywork: 'Carroceria',
  };
  return map[category] || category;
}

function setVisible(visible) {
  state.visible = visible;
  el.app.classList.toggle('hidden', !visible);
}

function switchTab(tabId) {
  state.activeTab = tabId;
  renderTabs();
  tabs.forEach((tab) => {
    const tabEl = document.getElementById(`tab-${tab.id}`);
    tabEl.classList.toggle('active', tab.id === tabId);
  });
}

function renderTabs() {
  el.navTabs.innerHTML = tabs.map((tab) => `
    <button class="nav-button ${state.activeTab === tab.id ? 'active' : ''}" data-tab="${tab.id}">
      ${tab.label}
    </button>
  `).join('');
}

function renderHeader() {
  const vehicle = state.vehicle;
  const workshop = state.workshop;
  const summary = vehicle && vehicle.summary;

  el.workshopName.textContent = workshop
    ? `${workshop.label} • ${text(workshop.specialty, '')}`
    : 'Oficina indisponivel';
  el.serviceStatus.textContent = summary
    ? `${text(summary.stageLabel)} • ${text(summary.riskLabel)}`
    : 'Aguardando veiculo';
  el.vehicleTitle.textContent = vehicle
    ? `${text(vehicle.displayName)}`
    : 'Sem veiculo conectado';
  el.vehiclePlate.textContent = vehicle ? text(vehicle.plate) : '---';
  el.vehicleClass.textContent = vehicle ? text(vehicle.classLabel) : '---';
  el.healthScore.textContent = summary ? percent(summary.healthScore) : '0%';
}

function renderOverview() {
  const vehicle = state.vehicle;
  if (!vehicle || !vehicle.summary) {
    el.overview.innerHTML = '<div class="empty-state">Aproxime-se de um veiculo ou entre na baia da oficina para iniciar o diagnostico.</div>';
    return;
  }

  const summary = vehicle.summary;
  const flags = (summary.flags || []).slice(0, 6).map((flag) => `
    <span class="tag ${flag.severity === 'critical' || flag.severity === 'extreme' ? 'bad' : 'warning'}">${text(flag.label)}</span>
  `).join('') || '<span class="tag good">Sem alertas relevantes</span>';

  el.overview.innerHTML = `
    <div class="split-layout">
      <section class="section-block">
        <div class="section-header">
          <div>
            <p class="eyebrow">Diagnostico central</p>
            <h3>Saude veicular consolidada</h3>
          </div>
          <div class="pill-row">${flags}</div>
        </div>

        <div class="grid-3">
          <div class="stat-card">
            <span>Score geral</span>
            <strong>${percent(summary.healthScore)}</strong>
          </div>
          <div class="stat-card">
            <span>Orcamento estimado</span>
            <strong>${money(summary.estimatedRepairCost)}</strong>
          </div>
          <div class="stat-card">
            <span>Horas tecnicas</span>
            <strong>${Number(summary.totalRepairHours || 0).toFixed(1)}h</strong>
          </div>
        </div>

        <div class="grid-2">
          <div class="section-block">
            <div class="section-header">
              <h4>Leituras criticas</h4>
            </div>
            <div class="metrics-list">
              <div class="keyvalue"><span>Motor</span><strong>${percent(vehicle.engineHealth)}</strong></div>
              <div class="keyvalue"><span>Carroceria</span><strong>${percent(vehicle.bodyHealth)}</strong></div>
              <div class="keyvalue"><span>Tanque</span><strong>${percent(vehicle.tankHealth)}</strong></div>
              <div class="keyvalue"><span>Odometro</span><strong>${Number(vehicle.odometerKm || 0).toFixed(1)} km</strong></div>
              <div class="keyvalue"><span>Temperatura</span><strong>${Math.round(Number(vehicle.telemetry?.engineTemp || 0))} C</strong></div>
              <div class="keyvalue"><span>Uso agressivo</span><strong>${Math.round(Number(vehicle.telemetry?.aggressiveUsage || 0))}</strong></div>
            </div>
          </div>
          <div class="section-block" style="place-items:center; align-content:center;">
            <div class="health-ring" style="--fill:${summary.healthScore}%">
              <div class="inner">
                <span>Integridade</span>
                <strong>${percent(summary.healthScore)}</strong>
                <small class="muted">${text(summary.stageLabel)}</small>
              </div>
            </div>
          </div>
        </div>

        <div class="notice">
          Operacao atual: <strong>${text(summary.riskLabel)}</strong>.
          Recomendacao: <strong>${text(summary.stageLabel)}</strong>.
        </div>
      </section>

      <section class="section-block">
        <div class="section-header">
          <div>
            <p class="eyebrow">Fila sugerida</p>
            <h3>Servicos prioritarios</h3>
          </div>
          <button class="primary-button" data-action="request-diagnostic">Atualizar diagnostico</button>
        </div>

        <div class="service-grid">
          ${(state.serviceQuotes || []).slice(0, 4).map((quote) => `
            <article class="service-card">
              <span>${text(quote.label)}</span>
              <h3>${money(quote.price)}</h3>
              <p class="muted">Modo ${text(quote.mode)} • ${Math.round((Number(quote.durationMs || 0)) / 1000)}s</p>
              <div class="pill-row">
                <span class="pill ${quote.stockAvailable ? 'good' : 'bad'}">${quote.stockAvailable ? 'Peca disponivel' : 'Sem estoque'}</span>
                <span class="pill">Mao de obra ${money(quote.laborCost)}</span>
              </div>
              <div class="service-actions">
                <button class="primary-button" data-action="perform-service" data-service="${quote.service}" data-component="${quote.componentId}" data-mode="${quote.mode}">Executar</button>
                <button class="secondary-button" data-action="order-part" data-part="${quote.requiredItem}">Comprar peca</button>
              </div>
            </article>
          `).join('') || '<div class="empty-state">Nenhum servico sugerido no momento.</div>'}
        </div>
      </section>
    </div>
  `;
}

function renderComponents() {
  const vehicle = state.vehicle;
  if (!vehicle || !vehicle.components) {
    el.components.innerHTML = '<div class="empty-state">Diagnostico indisponivel.</div>';
    return;
  }

  const allComponents = Object.values(vehicle.components);
  const categories = ['all', ...new Set(allComponents.map((component) => component.category))];
  const filtered = state.filterCategory === 'all'
    ? allComponents
    : allComponents.filter((component) => component.category === state.filterCategory);

  el.components.innerHTML = `
    <div class="section-block">
      <div class="section-header">
        <div>
          <p class="eyebrow">Mapa tecnico</p>
          <h3>Componentes monitorados</h3>
        </div>
        <div class="button-row">
          ${categories.map((category) => `
            <button class="secondary-button ${state.filterCategory === category ? 'active' : ''}" data-action="filter-category" data-category="${category}">
              ${category === 'all' ? 'Todas as areas' : categoryLabel(category)}
            </button>
          `).join('')}
        </div>
      </div>
    </div>
  `;

  const grid = document.createElement('div');
  grid.className = 'component-grid';

  filtered.sort((a, b) => Number(a.health || 0) - Number(b.health || 0)).forEach((component) => {
    const fragment = el.componentTemplate.content.cloneNode(true);
    fragment.querySelector('.component-category').textContent = categoryLabel(component.category);
    fragment.querySelector('.component-name').textContent = text(component.label);

    const stateNode = fragment.querySelector('.component-state');
    stateNode.textContent = `${percent(component.health)} • ${text(component.healthStateLabel)}`;
    stateNode.classList.add(badgeClass(component.health));

    fragment.querySelector('.progress-bar span').style.width = `${Math.max(0, Math.min(100, Number(component.health || 0)))}%`;
    fragment.querySelector('.component-meta').innerHTML = `
      <div class="keyvalue"><span>Reparo</span><strong>${money(component.repairCost)}</strong></div>
      <div class="keyvalue"><span>Troca</span><strong>${money(component.replaceCost)}</strong></div>
      <div class="keyvalue"><span>Tempo tecnico</span><strong>${Number(component.baseRepairHours || 0).toFixed(1)}h</strong></div>
    `;
    fragment.querySelector('.component-actions').innerHTML = `
      <button class="primary-button" data-action="perform-service" data-service="repair" data-component="${component.id}" data-mode="premium">Reparar</button>
      <button class="secondary-button" data-action="perform-service" data-service="replace" data-component="${component.id}" data-mode="restoration">Substituir</button>
      <button class="inline-button" data-action="order-part" data-part="${component.replacementItem || component.id}">Estocar peca</button>
    `;

    grid.appendChild(fragment);
  });

  el.components.appendChild(grid);
}

function renderServices() {
  if (!(state.serviceQuotes || []).length) {
    el.services.innerHTML = '<div class="empty-state">Nenhum orcamento disponivel. Rode um diagnostico para gerar servicos.</div>';
    return;
  }

  el.services.innerHTML = `
    <div class="section-block">
      <div class="section-header">
        <div>
          <p class="eyebrow">Orcamentos</p>
          <h3>Ordens tecnicas recomendadas</h3>
        </div>
      </div>
      <div class="service-grid">
        ${state.serviceQuotes.map((quote) => `
          <article class="service-card">
            <span>${text(quote.label)}</span>
            <h3>${money(quote.price)}</h3>
            <div class="keyvalue-list">
              <div class="keyvalue"><span>Mao de obra</span><strong>${money(quote.laborCost)}</strong></div>
              <div class="keyvalue"><span>Materiais</span><strong>${money(quote.partsCost)}</strong></div>
              <div class="keyvalue"><span>Duracao</span><strong>${Math.round((Number(quote.durationMs || 0)) / 1000)}s</strong></div>
            </div>
            <div class="service-actions">
              <button class="primary-button" data-action="perform-service" data-service="${quote.service}" data-component="${quote.componentId}" data-mode="${quote.mode}">Autorizar</button>
              <button class="secondary-button" data-action="order-part" data-part="${quote.requiredItem}">Comprar peca</button>
            </div>
          </article>
        `).join('')}
      </div>
    </div>
  `;
}

function renderTuning() {
  if (!(state.tuningPresets || []).length) {
    el.tuning.innerHTML = '<div class="empty-state">Nenhum pacote de tunagem configurado.</div>';
    return;
  }

  el.tuning.innerHTML = `
    <div class="section-block">
      <div class="section-header">
        <div>
          <p class="eyebrow">Pacotes premium</p>
          <h3>Preparacao e tunagem</h3>
        </div>
      </div>
      <div class="upgrade-grid">
        ${state.tuningPresets.map((preset) => `
          <article class="upgrade-card">
            <span>${text(preset.label)}</span>
            <h3>${money(preset.quote ? preset.quote.price : 0)}</h3>
            <p class="muted">${text(preset.description)}</p>
            <div class="pill-row">
              <span class="pill good">Motor +${Math.round((Number(preset.modifiers?.enginePower || 0)) * 100)}%</span>
              <span class="pill">Freio +${Math.round((Number(preset.modifiers?.brakeForce || 0)) * 100)}%</span>
              <span class="pill ${Number(preset.modifiers?.suspensionDrop || 0) < 0 ? 'warning' : 'good'}">Suspensao ${Number(preset.modifiers?.suspensionDrop || 0).toFixed(2)}</span>
            </div>
            <div class="upgrade-actions">
              <button class="primary-button" data-action="apply-upgrade" data-upgrade="${preset.id}">Aplicar pacote</button>
            </div>
          </article>
        `).join('')}
      </div>
    </div>
  `;
}

function renderStock() {
  const items = Object.values(state.stock || {});
  if (!items.length) {
    el.stock.innerHTML = '<div class="empty-state">Estoque vazio.</div>';
    return;
  }

  el.stock.innerHTML = `
    <div class="split-layout">
      <section class="section-block">
        <div class="section-header">
          <div>
            <p class="eyebrow">Armazem</p>
            <h3>Pecas e consumiveis</h3>
          </div>
        </div>
        <div class="stock-grid">
          ${items.map((item) => `
            <article class="stock-card">
              <span>${text(item.label)}</span>
              <h3>${text(item.item)}</h3>
              <div class="stock-meta">
                <div class="keyvalue"><span>Quantidade</span><strong>${Number(item.quantity || 0)}</strong></div>
                <div class="keyvalue"><span>Custo medio</span><strong>${money(item.averageCost)}</strong></div>
                <div class="keyvalue"><span>Minimo</span><strong>${Number(item.minimumStock || 0)}</strong></div>
              </div>
              <div class="stock-actions">
                <button class="primary-button" data-action="order-part" data-part="${item.item}">Repor estoque</button>
              </div>
            </article>
          `).join('')}
        </div>
      </section>

      <section class="section-block">
        <div class="section-header">
          <div>
            <p class="eyebrow">Pedido rapido</p>
            <h3>Reposicao programada</h3>
          </div>
        </div>
        <form id="stockOrderForm" class="section-block">
          <div class="field">
            <label for="stockItem">Item</label>
            <select id="stockItem">
              ${items.map((item) => `<option value="${item.item}">${text(item.label)} (${item.item})</option>`).join('')}
            </select>
          </div>
          <div class="field">
            <label for="stockAmount">Quantidade</label>
            <input id="stockAmount" type="number" min="1" max="50" value="1" />
          </div>
          <button class="primary-button" type="submit">Solicitar compra</button>
        </form>
      </section>
    </div>
  `;
}

function renderHistory() {
  if (!(state.history || []).length) {
    el.history.innerHTML = '<div class="empty-state">Nenhum historico tecnico registrado para este veiculo.</div>';
    return;
  }

  el.history.innerHTML = `
    <div class="section-block">
      <div class="section-header">
        <div>
          <p class="eyebrow">Prontuario tecnico</p>
          <h3>Ultimos atendimentos</h3>
        </div>
      </div>
      <div class="history-grid">
        ${state.history.map((entry) => `
          <article class="history-card">
            <span>${text(entry.actionLabel || entry.action)}</span>
            <h3>${text(entry.componentLabel || entry.upgradeLabel || entry.itemLabel || 'Registro')}</h3>
            <p class="muted">${text(entry.dateLabel)}</p>
            <div class="history-list">
              <div class="keyvalue"><span>Tecnico</span><strong>${text(entry.actorName, 'Sistema')}</strong></div>
              <div class="keyvalue"><span>Valor</span><strong>${money(entry.price)}</strong></div>
              <div class="keyvalue"><span>Observacao</span><strong>${text(entry.notes, 'Sem observacoes')}</strong></div>
            </div>
          </article>
        `).join('')}
      </div>
    </div>
  `;
}

function renderAll() {
  renderHeader();
  renderTabs();
  renderOverview();
  renderComponents();
  renderServices();
  renderTuning();
  renderStock();
  renderHistory();
  switchTab(state.activeTab);
}

function applyPayload(payload = {}) {
  state.workshop = payload.workshop || state.workshop;
  state.vehicle = payload.vehicle || state.vehicle;
  state.stock = payload.stock || state.stock || {};
  state.history = payload.history || state.history || [];
  state.serviceQuotes = payload.serviceQuotes || state.serviceQuotes || [];
  state.tuningPresets = payload.tuningPresets || state.tuningPresets || [];
  renderAll();
}

window.addEventListener('message', (event) => {
  const { action, payload } = event.data || {};
  if (action === 'open') {
    setVisible(true);
    applyPayload(payload);
  } else if (action === 'update') {
    applyPayload(payload);
  } else if (action === 'close') {
    setVisible(false);
  }
});

document.addEventListener('click', (event) => {
  const button = event.target.closest('button');
  if (!button) return;

  if (button.id === 'closeBtn') {
    api('closePanel');
    return;
  }

  if (button.dataset.tab) {
    switchTab(button.dataset.tab);
    return;
  }

  const action = button.dataset.action;
  if (!action) return;

  if (action === 'perform-service') {
    api('performService', {
      componentId: button.dataset.component,
      service: button.dataset.service,
      mode: button.dataset.mode || 'premium',
    });
  } else if (action === 'order-part') {
    api('orderStock', {
      item: button.dataset.part,
      amount: 1,
    });
  } else if (action === 'apply-upgrade') {
    api('applyUpgrade', {
      upgradeId: button.dataset.upgrade,
    });
  } else if (action === 'request-diagnostic') {
    api('requestDiagnostic');
  } else if (action === 'filter-category') {
    state.filterCategory = button.dataset.category || 'all';
    renderComponents();
  }
});

document.addEventListener('submit', (event) => {
  if (event.target.id !== 'stockOrderForm') return;
  event.preventDefault();

  const item = document.getElementById('stockItem').value;
  const amount = Number(document.getElementById('stockAmount').value || 1);
  api('orderStock', { item, amount });
});

document.addEventListener('keydown', (event) => {
  if (event.key === 'Escape') {
    api('closePanel');
  }
});

renderTabs();
switchTab(state.activeTab);
