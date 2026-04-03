/**
 * Demonstração gravável — painel Spartan completo (Painel, Operações, CRM, etc.).
 * window.runSpartanRecordDemo() — Promise
 */

const DEMO_JOB_STATE = {
  INTAKE: "INTAKE",
  DIAGNOSTIC: "DIAGNOSTIC",
  PARTS_PULL: "PARTS_PULL",
  LABOR: "LABOR",
  QC: "QC",
  READY: "READY",
  CLOSED: "CLOSED",
};

const DEMO_CATALOG = {
  "SKU-BRK-PAD-F": { name: "Pastilha de freio dianteira (cerâmica)", reorder_point: 8, supplier: "FreioMax" },
  "SKU-BRK-ROT-F": { name: "Disco de freio ventilado 288mm", reorder_point: 4, supplier: "MetalParts" },
  "SKU-ENG-OIL5W30": { name: "Óleo sintético 5W-30 (5L)", reorder_point: 12, supplier: "Lubrificantes Sul" },
  "SKU-ENG-FILTER": { name: "Filtro de óleo spin-on premium", reorder_point: 20, supplier: "FilterCo" },
  "SKU-SUS-SHOCK-R": { name: "Amortecedor traseiro a gás", reorder_point: 6, supplier: "Suspensão Pro" },
  "SKU-ELEC-ALT-120A": { name: "Alternador 120A", reorder_point: 2, supplier: "Elétrica Central" },
  "SKU-ELEC-BAT-60AH": { name: "Bateria 60Ah AGM", reorder_point: 5, supplier: "EnergyCell" },
  "SKU-COOL-RAD": { name: "Radiador alumínio reforçado", reorder_point: 3, supplier: "Thermal Systems" },
  "SKU-DRIV-CV-JOINT": { name: "Junta homocinética lado roda", reorder_point: 6, supplier: "DriveLine" },
  "SKU-TIRE-R17-AS": { name: "Pneu 225/45R17 all-season", reorder_point: 16, supplier: "RubberWorld" },
};

const PACE = 1.55;

function wait(ms) {
  return new Promise((r) => setTimeout(r, Math.floor(ms * PACE)));
}

function narr(phase, html) {
  let el = document.getElementById("record-narrator");
  if (!el) {
    el = document.createElement("div");
    el.id = "record-narrator";
    el.style.cssText = [
      "position:fixed",
      "bottom:0",
      "left:0",
      "right:0",
      "min-height:108px",
      "background:linear-gradient(0deg,rgba(4,5,8,0.96) 0%,rgba(10,12,18,0.92) 100%)",
      "border-top:2px solid #d4af37",
      "padding:14px 48px 18px",
      "font-family:Outfit,system-ui,sans-serif",
      "z-index:100000",
      "color:#e8eaef",
      "box-shadow:0 -12px 48px rgba(0,0,0,0.5)",
    ].join(";");
    document.body.appendChild(el);
  }
  el.innerHTML =
    '<div style="color:#d4af37;font-size:10px;font-weight:800;letter-spacing:0.22em;margin-bottom:6px">' +
    phase +
    "</div>" +
    '<div style="font-size:15px;line-height:1.55;max-width:1100px">' +
    html +
    "</div>";
}

function seedInventory() {
  return Object.keys(DEMO_CATALOG).map((sku) => {
    const d = DEMO_CATALOG[sku];
    const oh = 10 + Math.floor(Math.random() * 8);
    return {
      sku,
      name: d.name,
      on_hand: oh,
      available: oh,
      reorder_point: d.reorder_point,
      supplier: d.supplier,
    };
  });
}

function logEntry(id, level, category, message) {
  return {
    id,
    ts: Math.floor(Date.now() / 1000),
    level,
    category,
    message,
  };
}

function reservePlan(inv, plan) {
  for (const line of plan) {
    const row = inv.find((r) => r.sku === line.sku);
    if (row) row.available = Math.max(0, row.available - line.qty);
  }
}

function commitPlan(inv, plan) {
  for (const line of plan) {
    const row = inv.find((r) => r.sku === line.sku);
    if (row) row.on_hand = Math.max(0, row.on_hand - line.qty);
  }
}

function distinctSuppliers(catalog) {
  const s = new Set();
  for (const def of Object.values(catalog)) {
    if (def.supplier) s.add(def.supplier);
  }
  return s.size;
}

function partsOnHandValueApprox(inv, catalog) {
  let t = 0;
  for (const row of inv) {
    const sku = row.sku;
    t += row.on_hand * (25 + (sku.length % 40));
  }
  return Math.floor(t);
}

function syncDashboard(state) {
  const jobs = state.jobs || [];
  let open = 0;
  let laborH = 0;
  let qcSum = 0;
  let qcN = 0;
  let risk = 0;
  const sla = [];
  for (const j of jobs) {
    if (j.state === DEMO_JOB_STATE.CLOSED) continue;
    open++;
    laborH += (j.hours_shop || 0) + ((j.labor_progress || 0) / 100) * 2.5;
    if (j.qc_score != null) {
      qcSum += j.qc_score;
      qcN++;
    }
    risk += Math.min(100, (j.mileage_km || 0) / 3500);
    if (j.priority === "urgent" && (j.hours_shop || 0) > 6) sla.push(j.id);
  }
  const avgQc = qcN > 0 ? Math.floor(qcSum / qcN) : null;
  const fleetRisk = open > 0 ? Math.floor(risk / open) : 0;
  let low = 0;
  for (const row of state.inventory || []) {
    if (row.available <= row.reorder_point) low++;
  }
  let inboundU = 0;
  for (const x of state.inbound || []) inboundU += x.qty || 0;
  const throughput = Math.min(100, Math.floor(open * 7 + (avgQc || 88) / 3));

  state.dashboard = {
    open_os: open,
    low_stock_lines: low,
    inventory_value: partsOnHandValueApprox(state.inventory || [], DEMO_CATALOG),
    labor_hours_open: Math.floor(laborH * 10) / 10,
    avg_qc: avgQc,
    fleet_risk: fleetRisk,
    inbound_units: inboundU,
    suppliers: distinctSuppliers(DEMO_CATALOG),
    throughput,
    sla_flags: sla,
    leaderboard: [
      { name: "Oficina Spartan", jobs_closed_week: 28, avg_qc: avgQc || 92 },
      { name: "Turno A", jobs_closed_week: 19, avg_qc: 90 },
      { name: "Turno B", jobs_closed_week: 17, avg_qc: 89 },
    ],
  };

  state.tools = {
    shortcuts: [
      { id: "note", label: "Nota rápida" },
      { id: "oil", label: "Kit óleo no plano" },
      { id: "brake", label: "Pastilhas no plano" },
      { id: "receive", label: "Dar entrada SKU" },
      { id: "qc", label: "Reinspecionar QC" },
    ],
  };
}

async function runSpartanRecordDemo() {
  window.__SPARTAN_DEMO_DONE = false;
  const R = window.__SPARTAN_RECORD__;
  if (!R) throw new Error("__SPARTAN_RECORD__ missing");
  const state = window.__SPARTAN_STATE__;
  if (!state) throw new Error("__SPARTAN_STATE__ missing");

  R.open();

  const locale = {
    brand: "SPARTAN",
    subtitle: "Motorworks Division",
    tagline: "FiveM NUI v2 — Painel estendido + 50+ funções",
  };

  let logId = 0;
  const pushLog = (lv, cat, msg) => {
    logId++;
    state.logs.unshift(logEntry(logId, lv, cat, msg));
    if (state.logs.length > 50) state.logs.pop();
  };

  const inventory = seedInventory();
  const inbound = [
    { sku: "SKU-ELEC-BAT-60AH", qty: 6, eta_sec: 42 },
    { sku: "SKU-COOL-RAD", qty: 2, eta_sec: 78 },
  ];

  state.jobs = [];
  state.selectedId = null;
  state.inventory = inventory;
  state.inbound = inbound;
  state.catalog = DEMO_CATALOG;
  state.logs = [];
  syncDashboard(state);

  R.bootstrap({
    open: true,
    locale,
    jobs: [],
    inventory,
    inbound,
    catalog: DEMO_CATALOG,
    logs: [],
    dashboard: state.dashboard,
    tools: state.tools,
  });
  pushLog(2, "SYSTEM", "NUI Spartan — tour do painel estendido (demo gravada).");
  R.refresh();

  narr(
    "SPARTAN MOTORWORKS · V2",
    "Novo rail com <strong>cinco áreas</strong>: Ordens, <strong>Painel</strong> executivo, <strong>Operações</strong> de estoque, Estoque e Auditoria. O módulo <code>server/features.lua</code> expõe mais de <strong>50 funções</strong> — CRM, tarefas, orçamento, garantia, plano de peças, inbound e export CSV."
  );
  await wait(7000);

  R.setTab("dashboard");
  narr(
    "PAINEL EXECUTIVO",
    "KPIs ao vivo: OS abertas, linhas em estoque baixo, valor aproximado do inventário, horas na oficina, QC médio, risco de frota, unidades inbound e throughput. Abaixo: alertas de <strong>SLA</strong> para OS urgentes com muitas horas e um leaderboard simulado por turno."
  );
  await wait(10000);

  R.setTab("ops");
  narr(
    "OPERAÇÕES",
    "Entrada manual de SKU, ajuste com motivo, contagem cíclica, simulação de <strong>PO</strong> com fornecedor, recebimento <strong>FIFO</strong> do inbound e ferramentas globais — popular demo, log de KPI no console e export CSV para o clipboard no FiveM."
  );
  await wait(9000);

  const rowOil = state.inventory.find((r) => r.sku === "SKU-ENG-OIL5W30");
  if (rowOil) {
    rowOil.on_hand += 5;
    rowOil.available += 5;
    pushLog(2, "INVENTORY", "Demo: entrada manual +5 SKU-ENG-OIL5W30.");
  }
  syncDashboard(state);
  R.refresh();
  narr(
    "ENTRADA SIMULADA",
    "Na demo o estoque de óleo sobe — no jogo isso vem do evento <code>feat_inv_receive</code>. O painel de Estoque reflete físico e disponível."
  );
  await wait(6500);

  R.setTab("stock");
  await wait(8000);

  R.setTab("orders");
  const now = Math.floor(Date.now() / 1000);
  const job = {
    id: "OS-2001",
    plate: "SP4RTN7",
    family: "SPORT",
    mileage_km: 168000,
    state: DEMO_JOB_STATE.INTAKE,
    labor_progress: 0,
    mechanic: "Mecânico Demo",
    customer_name: "Ricardo Alves",
    customer_phone: "(11) 98877-6655",
    priority: "high",
    bay_id: "B2",
    vin: "9BWZZZ377VT004251",
    notes: [
      { ts: now - 3600, who: "Recepção", text: "Cliente relatou ruído em frenagem forte." },
    ],
    tasks: [
      { id: "T-1", title: "Checklist recepção — fluidos", done: true, who: "Demo" },
      { id: "T-2", title: "Medir espessura disco dianteiro", done: false, who: "Demo" },
    ],
    hours_shop: 2.5,
    estimate_labor: 890,
    estimate_parts: 1240,
    paid: false,
    warranty_until: null,
    flags: { rental: false, insurance: true, fleet: false, vip: true },
    parts_plan: [],
    diagnostic: null,
    qc_score: null,
  };
  state.jobs = [job];
  state.selectedId = job.id;
  syncDashboard(state);
  pushLog(2, "WORKSHOP", "OS " + job.id + " — CRM preenchido, tarefas e orçamento visíveis no detalhe.");
  R.refresh();

  narr(
    "DETALHE ENRIQUECIDO",
    "Três colunas: <strong>Cliente e oficina</strong> (nome, telefone, VIN, prioridade, baia, flags), <strong>diagnóstico e plano</strong> com atalhos dourados, e <strong>tarefas + orçamento</strong> com horas, pagamento e garantia. Tudo espelha os campos novos do <code>jobDto</code>."
  );
  await wait(11000);

  job.state = DEMO_JOB_STATE.DIAGNOSTIC;
  job.diagnostic = {
    dtc: ["SP-HIGH-KM", "SP-PREV-OIL"],
    findings: [
      "Quilometragem elevada — inspeção de freios e fluidos prioritária.",
      "Programar troca de óleo e filtro conforme plano preventivo Spartan.",
    ],
  };
  job.parts_plan = [
    { sku: "SKU-BRK-PAD-F", qty: 1 },
    { sku: "SKU-ENG-OIL5W30", qty: 1 },
    { sku: "SKU-ENG-FILTER", qty: 1 },
  ];
  job.diagnostic.dtc.push("P0420");
  job.diagnostic.findings.push("Demo: DTC manual P0420 correlacionado ao catálogo.");
  pushLog(2, "DIAG", "Diagnóstico + achados e plano de peças.");
  syncDashboard(state);
  R.refresh();

  narr(
    "DIAGNÓSTICO & PLANO",
    "DTC e achados, edição de plano por SKU (no servidor: <code>plan_add</code>, kit óleo, pastilhas, limpar). As funções <code>feat_diag_dtc</code> e <code>feat_diag_finding</code> alimentam a mesma estrutura."
  );
  await wait(9500);

  job.state = DEMO_JOB_STATE.PARTS_PULL;
  reservePlan(state.inventory, job.parts_plan);
  pushLog(2, "INVENTORY", "Reservas atômicas — disponível recalculado.");
  syncDashboard(state);
  R.refresh();

  narr(
    "PUXADA DE PEÇAS",
    "Estado <strong>PARTS_PULL</strong>: reserva por OS. Confira a coluna Disponível na aba Estoque."
  );
  await wait(4000);
  R.setTab("stock");
  await wait(8500);

  R.setTab("orders");
  job.state = DEMO_JOB_STATE.LABOR;
  job.labor_progress = 0;
  pushLog(2, "WORKSHOP", "Labor iniciado — ticks de progresso.");
  syncDashboard(state);
  R.refresh();

  narr(
    "MÃO DE OBRA",
    "Barra de progresso na fila: nove incrementos de <strong>+12%</strong> como no evento <code>tickLabor</code>."
  );
  for (let k = 1; k <= 9; k++) {
    await wait(k === 1 ? 3500 : 2800);
    job.labor_progress = Math.min(100, job.labor_progress + 12);
    if (job.labor_progress >= 100) {
      job.state = DEMO_JOB_STATE.QC;
      commitPlan(state.inventory, job.parts_plan);
      job.qc_score = 94;
      pushLog(2, "QC", "Commit de estoque + nota QC.");
    }
    syncDashboard(state);
    R.refresh();
  }
  await wait(5000);

  narr(
    "QUALIDADE",
    "Em <strong>QC</strong> o botão <em>Reinspecionar</em> chama <code>feat_qc_reinspect</code> no servidor. Avançamos para READY e encerramos."
  );
  R.refresh();
  await wait(7500);

  job.state = DEMO_JOB_STATE.READY;
  job.paid = true;
  job.warranty_until = now + 90 * 86400;
  pushLog(2, "BILLING", "Pagamento confirmado e garantia 90 dias (simulado na demo).");
  syncDashboard(state);
  R.refresh();
  await wait(6500);

  job.state = DEMO_JOB_STATE.CLOSED;
  pushLog(2, "WORKSHOP", "OS encerrada — histórico permanece na auditoria.");
  state.jobs = [];
  state.selectedId = null;
  syncDashboard(state);
  R.refresh();

  narr(
    "PIPELINE COMPLETO",
    "FSM INTAKE → … → CLOSED integrada ao CRM e ao billing. Próximo: segunda OS com cancelamento e rollback de reserva."
  );
  await wait(8000);

  const job2 = {
    id: "OS-2002",
    plate: "XPT99K1",
    family: "COMPACT",
    mileage_km: 48000,
    state: DEMO_JOB_STATE.INTAKE,
    labor_progress: 0,
    mechanic: "Mecânico Demo",
    customer_name: "Cliente Rápido",
    customer_phone: "",
    priority: "normal",
    bay_id: "B1",
    vin: "",
    notes: [],
    tasks: [],
    hours_shop: 0,
    estimate_labor: 120,
    estimate_parts: 80,
    paid: false,
    warranty_until: null,
    flags: {},
    parts_plan: [],
    diagnostic: null,
    qc_score: null,
  };
  state.jobs = [job2];
  state.selectedId = job2.id;
  syncDashboard(state);
  pushLog(2, "WORKSHOP", "OS-2002 — fluxo até cancelamento.");
  R.refresh();
  await wait(6500);

  job2.state = DEMO_JOB_STATE.DIAGNOSTIC;
  job2.diagnostic = { dtc: ["SP-OK"], findings: ["Checklist preventivo — sem críticos."] };
  job2.parts_plan = [{ sku: "SKU-ENG-OIL5W30", qty: 1 }];
  reservePlan(state.inventory, job2.parts_plan);
  job2.state = DEMO_JOB_STATE.PARTS_PULL;
  syncDashboard(state);
  R.refresh();
  await wait(6000);

  for (const line of job2.parts_plan) {
    const row = state.inventory.find((r) => r.sku === line.sku);
    if (row) row.available += line.qty;
  }
  pushLog(3, "WORKSHOP", "OS-2002 cancelada — rollback de reservas.");
  state.jobs = [];
  state.selectedId = null;
  syncDashboard(state);
  R.refresh();

  R.setTab("audit");
  narr(
    "AUDITORIA",
    "Trilha com categorias CRM, INVENTORY, DIAG, BILLING e WORKSHOP — espelhando o módulo de auditoria do servidor."
  );
  await wait(9000);

  R.setTab("dashboard");
  narr(
    "FIM",
    "Vídeo gerado com Playwright a partir de <code>index_record.html</code> — mesmo layout do painel in-game. <strong>Spartan Motorworks</strong> — obrigado por assistir."
  );
  await wait(10000);

  const nr = document.getElementById("record-narrator");
  if (nr) nr.remove();
  window.__SPARTAN_DEMO_DONE = true;
}

window.runSpartanRecordDemo = runSpartanRecordDemo;
