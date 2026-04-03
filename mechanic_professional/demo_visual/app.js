/**
 * Simulação visual do painel MechanicProfessional (espelho do fluxo MTA).
 * window.runMechanicDemo() — Promise, duração ~5min20s
 */

const JOB_STATE = {
  INTAKE: "INTAKE",
  DIAGNOSTIC: "DIAGNOSTIC",
  PARTS_PULL: "PARTS_PULL",
  LABOR: "LABOR",
  QC: "QC",
  READY: "READY",
  CLOSED: "CLOSED",
};

const LOG_LEVEL = { DEBUG: 1, INFO: 2, WARN: 3, ERROR: 4, CRITICAL: 5 };
const LOG_NAME = { 1: "DEBUG", 2: "INFO", 3: "WARN", 4: "ERROR", 5: "CRITICAL" };

const CATALOG = {
  "SKU-BRK-PAD-F": "Pastilha de freio dianteira (cerâmica)",
  "SKU-BRK-ROT-F": "Disco de freio ventilado 288mm",
  "SKU-ENG-OIL5W30": "Óleo sintético 5W-30 (5L)",
  "SKU-ENG-FILTER": "Filtro de óleo spin-on premium",
  "SKU-SUS-SHOCK-R": "Amortecedor traseiro a gás",
  "SKU-ELEC-ALT-120A": "Alternador 120A",
  "SKU-ELEC-BAT-60AH": "Bateria 60Ah AGM",
  "SKU-COOL-RAD": "Radiador alumínio reforçado",
  "SKU-DRIV-CV-JOINT": "Junta homocinética lado roda",
  "SKU-TIRE-R17-AS": "Pneu 225/45R17 all-season",
  "SKU-GEN-000001": "Peça gerada — módulo sensor (catálogo massivo servidor)",
};

const state = {
  logId: 0,
  logs: [],
  jobs: [],
  selectedId: null,
  onHand: {},
  reserved: {},
  inbound: [],
  activeTab: "os",
};

function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms));
}

/** Multiplicador para aproximar ~5–6 min de vídeo (gravador Playwright). */
const DEMO_PACE = 1.88;
function wait(ms) {
  return sleep(Math.floor(ms * DEMO_PACE));
}

function log(level, category, message, ctx) {
  state.logId += 1;
  state.logs.unshift({
    id: state.logId,
    level,
    category,
    message,
    ctx: ctx ? JSON.stringify(ctx).slice(0, 120) : "",
  });
  if (state.logs.length > 45) state.logs.pop();
  renderLogs();
}

function initInventory() {
  for (const sku of Object.keys(CATALOG)) {
    state.onHand[sku] = 5 + Math.floor(Math.random() * 12);
  }
}

function reservedTotalForSku(sku) {
  let t = 0;
  for (const jm of Object.values(state.reserved)) {
    t += jm[sku] || 0;
  }
  return t;
}

function availableForSku(sku) {
  return (state.onHand[sku] || 0) - reservedTotalForSku(sku);
}

function snapshotInventoryRows() {
  return Object.keys(CATALOG).map((sku) => ({
    sku,
    name: CATALOG[sku],
    on_hand: state.onHand[sku] || 0,
    available: availableForSku(sku),
    reorder_point: sku.startsWith("SKU-GEN") ? 5 : 8,
  }));
}

function setTab(name) {
  state.activeTab = name;
  document.querySelectorAll(".tab").forEach((el) => {
    el.classList.toggle("active", el.dataset.tab === name);
  });
  document.getElementById("view-os").style.display = name === "os" ? "block" : "none";
  document.getElementById("view-inv").style.display = name === "inv" ? "block" : "none";
  document.getElementById("view-log").style.display = name === "log" ? "block" : "none";
}

function renderJobs() {
  const list = document.getElementById("job-list");
  list.innerHTML = "";
  for (const j of state.jobs) {
    const div = document.createElement("div");
    div.className = "job-card" + (state.selectedId === j.id ? " selected" : "");
    div.innerHTML = `<div class="line1">${j.id}  |  ${j.plate}  |  ${j.family}</div>
      <div class="line2">Estado: ${j.state}  |  KM: ${j.mileage_km}</div>
      ${j.state === JOB_STATE.LABOR ? `<div class="progress-wrap"><div class="progress-bar" style="width:${j.labor_progress}%"></div></div>` : ""}`;
    list.appendChild(div);
  }
}

function renderDetail() {
  const job = state.jobs.find((x) => x.id === state.selectedId);
  const wrap = document.getElementById("job-detail-wrap");
  const btn = document.getElementById("action-btn");
  if (!job) {
    wrap.style.display = "none";
    return;
  }
  wrap.style.display = "grid";
  document.getElementById("detail-title").textContent = "Detalhe: " + job.id;
  if (job.diagnostic) {
    document.getElementById("detail-dtc").textContent = "DTC: " + (job.diagnostic.dtc || []).join(", ");
    document.getElementById("detail-findings").textContent = (job.diagnostic.findings || []).join("\n");
  } else {
    document.getElementById("detail-dtc").textContent = "";
    document.getElementById("detail-findings").textContent = "Aguardando diagnóstico…";
  }
  const partsEl = document.getElementById("detail-parts");
  partsEl.innerHTML = "";
  for (const line of job.parts_plan || []) {
    const d = document.createElement("div");
    d.textContent = `${line.sku}  x${line.qty}  — ${CATALOG[line.sku] || line.sku}`;
    partsEl.appendChild(d);
  }
  const { label } = nextActionLabel(job.state, job.labor_progress);
  btn.textContent = label;
  btn.classList.toggle("pulse", job.state !== JOB_STATE.CLOSED);
}

function nextActionLabel(st, labor) {
  if (st === JOB_STATE.INTAKE) return { label: "Iniciar diagnóstico →" };
  if (st === JOB_STATE.DIAGNOSTIC) return { label: "Reservar peças (puxada) →" };
  if (st === JOB_STATE.PARTS_PULL) return { label: "Iniciar mão de obra →" };
  if (st === JOB_STATE.LABOR) return { label: `Trabalhar (+12%) — ${labor || 0}%` };
  if (st === JOB_STATE.QC) return { label: "Liberar veículo →" };
  if (st === JOB_STATE.READY) return { label: "Encerrar OS →" };
  return { label: "—" };
}

function renderInventory() {
  const tbody = document.getElementById("inv-body");
  tbody.innerHTML = "";
  for (const row of snapshotInventoryRows()) {
    const low = row.available <= row.reorder_point;
    const tr = document.createElement("tr");
    tr.innerHTML = `<td class="sku" title="${row.name}">${row.sku}</td>
      <td class="${low ? "av-low" : "av-ok"}">${row.available}</td>
      <td>${row.on_hand}</td>
      <td style="color:var(--muted)">${row.reorder_point}</td>`;
    tbody.appendChild(tr);
  }
  const incEl = document.getElementById("inbound-list");
  if (!state.inbound.length) {
    incEl.textContent = "Nenhum pedido pendente.";
  } else {
    incEl.innerHTML = state.inbound.map((x) => `${x.sku}  +${x.qty}  ETA ~${x.eta}s`).join("<br/>");
  }
}

function renderLogs() {
  const el = document.getElementById("log-scroll");
  el.innerHTML = "";
  for (const e of state.logs) {
    const div = document.createElement("div");
    const cls = e.level >= LOG_LEVEL.ERROR ? "log-err" : e.level >= LOG_LEVEL.WARN ? "log-warn" : "log-info";
    div.className = "log-entry " + cls;
    div.innerHTML = `<div class="head">#${e.id} [${LOG_NAME[e.level]}] ${e.category}</div>
      <div class="msg">${e.message}${e.ctx ? "<br/><span style='opacity:0.85'>" + e.ctx + "</span>" : ""}</div>`;
    el.appendChild(div);
  }
}

function setNarrator(phase, text) {
  document.getElementById("narr-phase").textContent = phase;
  document.getElementById("narr-text").textContent = text;
}

function setFsmHint(text) {
  document.getElementById("fsm-current").textContent = text;
}

function showToast(msg) {
  const t = document.getElementById("toast");
  t.textContent = msg;
  t.classList.add("show");
  setTimeout(() => t.classList.remove("show"), 3500);
}

function ensureReserved(jobId) {
  if (!state.reserved[jobId]) state.reserved[jobId] = {};
}

function reserveParts(job) {
  ensureReserved(job.id);
  for (const line of job.parts_plan || []) {
    const av = availableForSku(line.sku);
    if (av < line.qty) {
      log(LOG_LEVEL.ERROR, "WORKSHOP", "Falha reserva — rollback", { sku: line.sku, job_id: job.id });
      state.reserved[job.id] = {};
      return false;
    }
  }
  for (const line of job.parts_plan || []) {
    state.reserved[job.id][line.sku] = (state.reserved[job.id][line.sku] || 0) + line.qty;
    log(LOG_LEVEL.INFO, "INVENTORY", "Reserva criada", { sku: line.sku, qty: line.qty, job_id: job.id });
  }
  return true;
}

function commitParts(job) {
  ensureReserved(job.id);
  for (const line of job.parts_plan || []) {
    const sku = line.sku;
    const qty = line.qty;
    state.onHand[sku] = (state.onHand[sku] || 0) - qty;
    state.reserved[job.id][sku] = (state.reserved[job.id][sku] || 0) - qty;
    log(LOG_LEVEL.INFO, "INVENTORY", "Commit (baixa)", { sku, qty, job_id: job.id });
  }
}

function releaseJob(jobId) {
  state.reserved[jobId] = {};
  log(LOG_LEVEL.INFO, "INVENTORY", "Reservas liberadas (job)", { job_id: jobId });
}

function getJob(id) {
  return state.jobs.find((x) => x.id === id);
}

async function runMechanicDemo() {
  window.__MECHANIC_DEMO_DONE = false;
  state.jobs = [];
  state.logs = [];
  state.logId = 0;
  state.reserved = {};
  state.inbound = [];
  state.selectedId = null;
  initInventory();

  setNarrator("INTRO", "Bem-vindo à demonstração visual do MechanicProfessional — painel DX, FSM e estoque como no resource MTA.");
  setFsmHint("Estado inicial: sem OS ativa.");
  setTab("os");
  renderInventory();
  renderLogs();
  renderJobs();
  renderDetail();

  await wait(3500);

  setNarrator("OS · RECEPÇÃO", "Abrimos a ordem DEMO7K2 — SUV, 188000 km — equivalente a MechanicWorkshop:createJob no servidor.");
  const job = {
    id: "OS-1001",
    plate: "DEMO7K2",
    family: "SUV",
    mileage_km: 188000,
    state: JOB_STATE.INTAKE,
    labor_progress: 0,
    diagnostic: null,
    parts_plan: [],
    qc_score: null,
  };
  state.jobs = [job];
  state.selectedId = job.id;
  log(LOG_LEVEL.INFO, "WORKSHOP", "OS aberta", { job_id: job.id, plate: job.plate });
  setFsmHint("INTAKE — veículo na recepção.");
  renderJobs();
  renderDetail();
  renderInventory();

  await wait(12000);

  setNarrator("FSM", "Transição para DIAGNOSTIC: runProfile gera sensores, DTC e plano de peças (incl. SKU do catálogo massivo no servidor).");
  job.state = JOB_STATE.DIAGNOSTIC;
  job.diagnostic = {
    dtc: ["C1B4-FRONT-WEAR", "G00142"],
    findings: [
      "Desgaste elevado no eixo dianteiro; risco de metal em contato.",
      "[Registro estendido] Correlação térmica sub-sistema ABS — ver procedimento ligado ao DTC.",
    ],
  };
  job.parts_plan = [
    { sku: "SKU-BRK-PAD-F", qty: 1 },
    { sku: "SKU-ENG-OIL5W30", qty: 1 },
    { sku: "SKU-ENG-FILTER", qty: 1 },
    { sku: "SKU-GEN-000001", qty: 1 },
  ];
  log(LOG_LEVEL.INFO, "DIAG", "Diagnóstico concluído", { job_id: job.id });
  setFsmHint("DIAGNOSTIC — plano de peças visível no painel.");
  renderJobs();
  renderDetail();

  await wait(14000);
  setTab("log");
  setNarrator("AUDITORIA", "MechanicAudit registra cada passo com nível e contexto — mesma ideia do outputDebugString + eventos ao cliente.");
  await wait(3000);
  renderLogs();

  await wait(11000);
  setTab("inv");
  setNarrator("ESTOQUE", "Coluna Disponível = físico − todas as reservas ativas. PARTS_PULL chama reserve por SKU.");
  await wait(4000);

  setTab("os");
  job.state = JOB_STATE.PARTS_PULL;
  const ok = reserveParts(job);
  if (!ok) showToast("Estoque insuficiente — rollback (simulado)");
  else {
    log(LOG_LEVEL.INFO, "WORKSHOP", "Transição PARTS_PULL", { job_id: job.id });
    setFsmHint("PARTS_PULL — peças reservadas contra saldo.");
  }
  renderJobs();
  renderDetail();
  renderInventory();

  await wait(13000);

  setTab("inv");
  setNarrator("INBOUND", "Quando o físico cruza o mínimo, o motor dispara pedido simulado — fila inbound no painel.");
  state.inbound.push({ sku: "SKU-BRK-PAD-F", qty: 12, eta: 25.4 });
  renderInventory();

  await wait(12000);

  setTab("os");
  setNarrator("LABOR", "Mão de obra: nove eventos tickLabor de +12% — igual ao clique no botão cyan do painel MTA.");
  job.state = JOB_STATE.LABOR;
  job.labor_progress = 0;
  renderJobs();
  renderDetail();

  for (let k = 1; k <= 9; k++) {
    await wait(k === 1 ? 4500 : 4000);
    job.labor_progress = Math.min(100, job.labor_progress + 12);
    log(LOG_LEVEL.DEBUG, "WORKSHOP", "tickLabor", { pct: job.labor_progress, job_id: job.id });
    setNarrator("LABOR", `Progresso ${job.labor_progress}% — passo ${k}/9 (mechanic:tickLabor).`);
    renderJobs();
    renderDetail();
  }

  job.state = JOB_STATE.QC;
  job.qc_score = 91;
  commitParts(job);
  log(LOG_LEVEL.INFO, "QC", "Inspeção concluída", { score: job.qc_score, job_id: job.id });
  setFsmHint("QC — commit de estoque aplicado; nota de qualidade simulada.");
  setNarrator("QC", "Ao atingir 100% no labor, a FSM avança para QC: baixa no inventário e reservas consumidas.");
  renderJobs();
  renderDetail();
  renderInventory();

  await wait(12000);

  job.state = JOB_STATE.READY;
  log(LOG_LEVEL.INFO, "WORKSHOP", "Transição READY", { job_id: job.id });
  setFsmHint("READY — veículo liberado para retirada.");
  setNarrator("READY", "Transição validada pela máquina de estados — sem atalhos entre estados inválidos.");
  renderJobs();
  renderDetail();

  await wait(12000);

  setTab("log");
  setNarrator("ENCERRAMENTO", "CLOSED: releaseJob limpa reservas remanescentes e a OS sai da lista ativa.");
  await wait(3000);

  setTab("os");
  job.state = JOB_STATE.CLOSED;
  releaseJob(job.id);
  log(LOG_LEVEL.INFO, "WORKSHOP", "Transição CLOSED", { job_id: job.id });
  state.jobs = state.jobs.filter((x) => x.id !== job.id);
  state.selectedId = null;
  setFsmHint("OS DEMO7K2 arquivada.");
  renderJobs();
  renderDetail();
  renderInventory();
  renderLogs();

  await wait(10000);

  setNarrator("SEGUNDA OS + CANCELAR", "OS XPT0K9: fluxo até PARTS_PULL com reserva; cancelJob reproduz o F10 — rollback de reservas.");
  const j2 = {
    id: "OS-1002",
    plate: "XPT0K9",
    family: "COMPACT",
    mileage_km: 42000,
    state: JOB_STATE.INTAKE,
    labor_progress: 0,
    diagnostic: null,
    parts_plan: [],
    qc_score: null,
  };
  state.jobs = [j2];
  state.selectedId = j2.id;
  log(LOG_LEVEL.INFO, "WORKSHOP", "OS aberta", { job_id: j2.id });
  renderJobs();
  renderDetail();

  await wait(6000);
  j2.state = JOB_STATE.DIAGNOSTIC;
  j2.diagnostic = {
    dtc: ["SYS-OK-PREV"],
    findings: ["Checklist preventivo — sem anomalias críticas."],
  };
  j2.parts_plan = [{ sku: "SKU-ENG-OIL5W30", qty: 1 }];
  log(LOG_LEVEL.INFO, "DIAG", "Diagnóstico concluído", { job_id: j2.id });
  renderJobs();
  renderDetail();

  await wait(7000);
  j2.state = JOB_STATE.PARTS_PULL;
  reserveParts(j2);
  log(LOG_LEVEL.INFO, "WORKSHOP", "Transição PARTS_PULL", { job_id: j2.id });
  renderJobs();
  renderDetail();
  renderInventory();

  await wait(7000);
  releaseJob(j2.id);
  log(LOG_LEVEL.WARN, "WORKSHOP", "OS cancelada", { job_id: j2.id });
  state.jobs = [];
  state.selectedId = null;
  renderJobs();
  renderDetail();
  renderInventory();
  renderLogs();

  await wait(12000);

  setTab("inv");
  setNarrator("ESCALA", "Catálogo massivo (SKU-GEN-*) fica em server/generated; o cliente MTA recebe só snapshot enxuto + linhas ativas.");
  renderInventory();

  await wait(14000);

  setTab("log");
  setNarrator("FERRAMENTAS", "Regenerar base: node tools/gen-megadata.mjs. Vídeo técnico: node tools/record-panel-demo.mjs (Playwright).");
  renderLogs();

  await wait(14000);

  setTab("os");
  setNarrator("FIM", "No jogo real: F2 painel, F11 ou /mechanicdemo para o roteiro no servidor. Obrigado por assistir.");
  setFsmHint("Demonstração visual concluída.");

  await wait(8000);
  window.__MECHANIC_DEMO_DONE = true;
}

document.querySelectorAll(".tab").forEach((el) => {
  el.addEventListener("click", () => setTab(el.dataset.tab));
});

window.runMechanicDemo = runMechanicDemo;

if (typeof window.__MECHANIC_DEMO_READY !== "undefined") {
  window.__MECHANIC_DEMO_READY();
}

const params = new URLSearchParams(window.location.search);
if (params.get("autostart") === "1") {
  runMechanicDemo().catch(console.error);
}
