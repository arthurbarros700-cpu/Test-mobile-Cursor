/**
 * Simulação visual — apresentação completa: FSM, estoque, auditoria,
 * megabase em 258 scripts (8×32 chunks + bootstrap/finalize), MechanicReference.
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

/** Ritmo do vídeo (Playwright). Aumente para trailer mais longo. */
const DEMO_PACE = 2.45;
function wait(ms) {
  return sleep(Math.floor(ms * DEMO_PACE));
}

function setArchDomain(hotKey, line) {
  document.querySelectorAll(".arch-domains li").forEach((li) => li.classList.remove("hot"));
  if (hotKey) {
    const el = document.querySelector(`.arch-domains li[data-d="${hotKey}"]`);
    if (el) el.classList.add("hot");
  }
  const act = document.getElementById("arch-active");
  if (act) act.textContent = line || "—";
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
  const refEl = document.getElementById("ref-cross");
  if (job.ref_context && refEl) {
    const rc = job.ref_context;
    const lines = [];
    if (rc.tsb && rc.tsb.title) lines.push("TSB: " + rc.tsb.title);
    if (rc.torque && rc.torque.torque_nm != null) {
      lines.push(`Torque: ${rc.torque.torque_nm} Nm · ${rc.torque.assembly || ""}`);
    }
    if (rc.flat_labor && rc.flat_labor.flat_hours) {
      lines.push(`Flat-rate: ${rc.flat_labor.flat_hours} h · ${rc.flat_labor.op_family || ""}`);
    }
    if (rc.vehicle_ref && rc.vehicle_ref.label) lines.push("Perfil: " + rc.vehicle_ref.label);
    if (lines.length) {
      refEl.style.display = "block";
      refEl.innerHTML = "<strong>ReferenceLibrary · contexto cruzado</strong>" + lines.map((l) => "<div>" + l + "</div>").join("");
    } else {
      refEl.style.display = "none";
    }
  } else if (refEl) {
    refEl.style.display = "none";
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

  setNarrator(
    "APRESENTAÇÃO",
    "MechanicProfessional — tour completo: 258 scripts de dados no servidor, oito domínios em chunks de 32 arquivos, bootstrap e finalize, mais lógica audit_log, inventory, diagnostics, workshop FSM, demo_mode e core."
  );
  setFsmHint("Resource MTA — carregamento sequencial no meta.xml.");
  setArchDomain(null, "Ordem: bootstrap → chunks part_001…torque_032 → finalize");
  setTab("os");
  renderInventory();
  renderLogs();
  renderJobs();
  renderDetail();

  await wait(5000);

  const scan = ["parts", "dtc", "proc", "veh", "sup", "labor", "tsb", "torque"];
  for (const d of scan) {
    setArchDomain(d, `Carregando domínio · chunks/${d}_*.lua → tabela global`);
    setNarrator(
      "MEGABASE",
      `Cada pasta chunks contém 32 arquivos. Exemplo: server/generated/chunks/${d}/ — preenche uma tabela mestre sem monolito único; meta.xml lista todos os scripts na ordem correta.`
    );
    await wait(4200);
  }
  setArchDomain("parts", "Catálogo SKU-GEN-* com supplier SUP-****** alinhado a SUPPLIERS_MASTER.");
  setNarrator(
    "INTEGRAÇÃO",
    "Peças referenciam fornecedores por código. DTCs e TSBs apontam SKUs e procedimentos. O cliente não baixa esses 250k+ de linhas — só snapshots enxutos no bootstrap do painel."
  );
  await wait(14000);

  setNarrator("PAINEL DX", "Agora o fluxo operacional: FSM, reservas, commit no QC, logs correlacionados a job_id — igual ao Lua do cliente MTA.");
  setArchDomain(null, "—");
  setFsmHint("Estado inicial: sem OS ativa.");

  await wait(6000);

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
  job.ref_context = {
    tsb: { title: "TSB-000847 — chunk tsb_027.lua · calibração / torque" },
    torque: { torque_nm: 112, assembly: "Freio" },
    flat_labor: { flat_hours: "1.85", op_family: "BRK" },
    vehicle_ref: { label: "AstraMotors modelo 2412 série K · VP-002400" },
  };
  log(LOG_LEVEL.INFO, "DIAG", "Diagnóstico concluído", { job_id: job.id });
  log(LOG_LEVEL.INFO, "REFERENCE", "MechanicReference:snapshotForJob", { job_id: job.id });
  setFsmHint("DIAGNOSTIC — plano + ref_context (TSB, torque, flat-rate, VP).");
  setArchDomain("tsb", "DTC correlaciona TSB e SKU em chunks distintos.");
  renderJobs();
  renderDetail();

  await wait(16000);
  setTab("log");
  setNarrator(
    "AUDITORIA",
    "MechanicAudit: níveis DEBUG a CRITICAL, contexto JSON no servidor, fatias enviadas ao cliente. Cada reserva e commit de estoque gera rastreabilidade."
  );
  await wait(3000);
  renderLogs();

  await wait(12000);
  setTab("inv");
  setNarrator(
    "ESTOQUE",
    "Motor de inventário: on_hand, reserved por OS, inbound simulado, lazy init para SKU-GEN quando a peça entra no fluxo — mesmo comportamento do inventory_engine.lua."
  );
  setArchDomain("parts", "Reserva consulta PARTS_CATALOG carregado pelos 32 chunks de peças.");
  await wait(6000);

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

  await wait(14000);

  setTab("inv");
  setNarrator(
    "PROCUREMENT",
    "Pedido automático quando o saldo cruza reorder_point — lead time dos chunks de catálogo alimenta a fila inbound exibida aqui."
  );
  setArchDomain("sup", "Fornecedor SUP-****** resolvível em SUPPLIERS_MASTER (32× chunks).");
  state.inbound.push({ sku: "SKU-BRK-PAD-F", qty: 12, eta: 25.4 });
  renderInventory();

  await wait(14000);

  setTab("os");
  setNarrator(
    "LABOR + FLAT-RATE",
    "tickLabor no servidor nove vezes (+12%). Paralelamente, LABOR_FLAT_RATE nos chunks define horas-padrão por família de operação — referência para orçamento."
  );
  setArchDomain("labor", "Chunks labor_flat/*.lua — L-FLT-* por família BRK/ENG/…");
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

  await wait(14000);

  job.state = JOB_STATE.READY;
  log(LOG_LEVEL.INFO, "WORKSHOP", "Transição READY", { job_id: job.id });
  setFsmHint("READY — veículo liberado para retirada.");
  setNarrator("READY", "Transição validada pela máquina de estados — sem atalhos entre estados inválidos.");
  renderJobs();
  renderDetail();

  await wait(14000);

  setTab("log");
  setNarrator(
    "ENCERRAMENTO",
    "CLOSED: releaseJob no inventário; finalize_megabase.lua já definiu MECHANIC_GEN_*_COUNT após o último chunk — painel remove a OS da lista ativa."
  );
  setArchDomain(null, "Ciclo de OS encerrado — dados mestres permanecem em memória no servidor.");
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

  await wait(12000);

  setNarrator(
    "SEGUNDA OS + CANCELAR",
    "OS XPT0K9: createJob → diagnóstico → PARTS_PULL com reserva; cancelJob como F10 — rollback atômico das reservas dessa OS."
  );
  setArchDomain("dtc", "DTC_REGISTRY em 32 chunks — correlação com procedimentos em procedures/*");
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

  await wait(14000);

  setTab("inv");
  setNarrator(
    "ESCALA & SEGURANÇA",
    "~253 mil linhas Lua só no servidor; 258 entradas no meta.xml. Para produção, avalie CHUNK_FILES menor ou carregamento sob demanda — aqui priorizamos transparência e modularidade."
  );
  setArchDomain("torque", "TORQUE_SPECS — 32 chunks, cruzamento com TSB e procedimentos.");
  renderInventory();

  await wait(16000);

  setTab("log");
  setNarrator(
    "TOOLCHAIN",
    "Regenerar megabase: node tools/gen-megadata.mjs (TARGET_LINES, CHUNK_FILES). Demo in-game: /mechanicdemo ou F11. Este vídeo: npm run record-demo (Playwright + ffmpeg)."
  );
  renderLogs();

  await wait(16000);

  setTab("os");
  setNarrator(
    "ENCERRAMENTO",
    "Resumo: oito bibliotecas em chunks, reference_library, painel DX com ref_context, FSM, estoque com reserva/commit, demo_mode e core RPC — stack completa MechanicProfessional."
  );
  setFsmHint("Demonstração visual concluída.");
  setArchDomain(null, "Obrigado — MechanicProfessional.");

  await wait(12000);
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
