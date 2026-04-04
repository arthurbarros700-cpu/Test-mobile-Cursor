/**
 * Demonstração gravável — tour completo: 6 abas, fiscal/NF-e, 159 OPS, FSM.
 * Cada bloco principal: ≥12s de tela. Requer extended_ops_demo.js no index_record.html.
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

/** Duração mínima por cena principal (≥10s; 18s × ~17 blocos ≈ 5+ min de narração) */
const SEG = 18000;
/** 1 = tempo real nos waits */
const PACE = 1;

const DEMO_FISCAL_SHOP = {
  legal_name: "Spartan Motorworks Ltda",
  trade_name: "Spartan Motorworks",
  cnpj: "12.345.678/0001-90",
  ie: "123.456.789.110",
  address: "Av. Industrial, 1500 — Los Santos",
  city: "Los Santos",
  uf: "SP",
  cep: "01310-100",
};

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
      "min-height:120px",
      "max-height:32vh",
      "overflow-y:auto",
      "background:linear-gradient(0deg,rgba(4,5,8,0.97) 0%,rgba(10,12,18,0.94) 100%)",
      "border-top:2px solid #d4af37",
      "padding:16px 48px 20px",
      "font-family:Outfit,system-ui,sans-serif",
      "z-index:100000",
      "color:#e8eaef",
      "box-shadow:0 -12px 48px rgba(0,0,0,0.55)",
    ].join(";");
    document.body.appendChild(el);
  }
  el.innerHTML =
    '<div style="color:#d4af37;font-size:10px;font-weight:800;letter-spacing:0.22em;margin-bottom:8px">' +
    phase +
    "</div>" +
    '<div style="font-size:15px;line-height:1.6;max-width:1180px">' +
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
  return { id, ts: Math.floor(Date.now() / 1000), level, category, message };
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

function partsOnHandValueApprox(inv) {
  let t = 0;
  for (const row of inv) {
    t += row.on_hand * (25 + (row.sku.length % 40));
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
    inventory_value: partsOnHandValueApprox(state.inventory || []),
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

function extendedOpsList() {
  if (typeof window.DEMO_EXTENDED_OPS !== "undefined" && window.DEMO_EXTENDED_OPS.length) {
    return window.DEMO_EXTENDED_OPS;
  }
  return ["nfIssue", "exportJobSummaryText", "shopShiftHandover", "diagBatteryHealthSim"];
}

async function scrollFiscalPreviewDuringSegment() {
  const el = document.getElementById("fiscal-preview");
  if (!el) return;
  const steps = 24;
  const stepMs = Math.floor(SEG / steps);
  el.scrollTop = 0;
  for (let i = 0; i < steps; i++) {
    el.scrollTop = Math.min(el.scrollHeight - el.clientHeight, el.scrollTop + 14);
    await wait(stepMs);
  }
}

async function animateExtendedOpsSelect() {
  const sel = document.getElementById("ext-op-select");
  if (!sel || !sel.options.length) return;
  const n = sel.options.length;
  const steps = 30;
  const stepMs = Math.floor(SEG / steps);
  for (let i = 0; i < steps; i++) {
    sel.selectedIndex = Math.min(n - 1, Math.floor((i / steps) * n));
    await wait(stepMs);
  }
}

function buildDemoInvoiceDraftFromPlan(job) {
  const lines = [];
  let sub = 0;
  for (const line of job.parts_plan || []) {
    const def = DEMO_CATALOG[line.sku];
    if (!def) continue;
    const unit = 25 + (line.sku.length % 80) + def.reorder_point * 2;
    const q = line.qty || 1;
    sub += q * unit;
    lines.push({
      kind: "part",
      sku: line.sku,
      description: def.name,
      ncm: "8708.29.99",
      qty: q,
      unit_price: unit,
    });
  }
  const mo = Number(job.estimate_labor) || 0;
  if (mo > 0) {
    lines.push({
      kind: "service",
      description: "Mão de obra — orçamento OS",
      ncm: "9985.00.00",
      qty: 1,
      unit_price: mo,
    });
    sub += mo;
  }
  job.invoice_draft = {
    lines,
    cfop: "5933",
    notes: "Demonstração gravada — NF-e simulada para roleplay.",
    discount: 50,
  };
}

function attachDemoIssuedInvoice(job) {
  const draft = job.invoice_draft || { lines: [], discount: 0 };
  const lines = draft.lines || [];
  let sub = 0;
  for (const ln of lines) {
    sub += (ln.qty || 0) * (ln.unit_price || 0);
  }
  const disc = Math.max(0, draft.discount || 0);
  const base = Math.max(0, sub - disc);
  const regime = job.tax_regime || "simples";
  const icmsR = regime === "normal" ? 0.18 : regime === "presumido" ? 0.12 : 0;
  const icms = Math.round(base * icmsR * 100) / 100;
  const pis = Math.round(base * 0.0065 * 100) / 100;
  const cofins = Math.round(base * 0.03 * 100) / 100;
  const total = Math.round((base + icms + pis + cofins) * 100) / 100;
  let ak = "3521";
  for (let i = 0; i < 40; i++) ak += String(Math.floor(Math.random() * 10));
  job.invoices = [
    {
      number: 88101,
      series: 1,
      cfop: draft.cfop || "5933",
      ts: Math.floor(Date.now() / 1000),
      lines: JSON.parse(JSON.stringify(lines)),
      subtotal: sub,
      discount: disc,
      icms,
      pis,
      cofins,
      total,
      notes: draft.notes || "",
      access_key: ak.slice(0, 44),
      status: "authorized",
      issuer: "Demo Recorder",
    },
  ];
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
    tagline: "Tour completo — FSM + Fiscal + 159 operações servidor (feat_extended)",
  };

  let logId = 0;
  const pushLog = (lv, cat, msg) => {
    logId++;
    state.logs.unshift(logEntry(logId, lv, cat, msg));
    if (state.logs.length > 80) state.logs.pop();
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
  state.fiscal_shop = DEMO_FISCAL_SHOP;
  state.extended_ops = extendedOpsList();
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
    fiscal_shop: DEMO_FISCAL_SHOP,
    extended_ops: state.extended_ops,
  });
  pushLog(2, "SYSTEM", "Gravação: tour profissional — todas as áreas do painel NUI.");
  R.refresh();

  narr(
    "VISÃO GERAL · SPARTAN MOTORWORKS",
    "<strong>Seis abas</strong> no rail: Ordens, Painel, Operações, Estoque, <strong>Fiscal</strong> (NF-e simulada) e Auditoria. Stack servidor: <code>workshop.lua</code> (FSM + estoque), <code>features.lua</code> (50+ eventos), <code>feat_extended.lua</code> (<strong>159 operações</strong> nomeadas via <code>spartanExtended</code>). Áudio phonk procedural no pós-produção."
  );
  await wait(SEG);

  R.setTab("dashboard");
  narr(
    "PAINEL EXECUTIVO",
    "KPIs: OS abertas, linhas abaixo do mínimo, valor aproximado do inventário, horas na oficina, QC médio, <strong>índice de risco de frota</strong>, unidades em inbound, throughput e fornecedores. Bloco <strong>SLA</strong> marca OS urgentes com excesso de horas; <strong>leaderboard</strong> simula turnos."
  );
  await wait(SEG);

  R.setTab("ops");
  narr(
    "OPERAÇÕES · ESTOQUE & COMPRAS",
    "<strong>Entrada manual</strong>, ajuste com motivo, <strong>contagem cíclica</strong>, PO simulado, recebimento <strong>FIFO</strong> inbound, limpeza de fila. Ferramentas globais: seed demo, log KPI no console FXServer, <strong>export CSV</strong> → clipboard do cliente. Cada ação gera trilha na auditoria."
  );
  await wait(SEG);

  const rowOil = state.inventory.find((r) => r.sku === "SKU-ENG-OIL5W30");
  if (rowOil) {
    rowOil.on_hand += 8;
    rowOil.available += 8;
    pushLog(2, "INVENTORY", "Demo: +8 unidades SKU-ENG-OIL5W30 (entrada simulada).");
  }
  syncDashboard(state);
  R.refresh();
  narr(
    "MOVIMENTO DE ESTOQUE",
    "Observe o reflexo na aba <strong>Estoque</strong>: colunas Disponível e Físico; disponível desce quando há <strong>reserva atômica</strong> por OS em PARTS_PULL."
  );
  await wait(SEG);

  R.setTab("stock");
  narr(
    "INVENTÁRIO EM TEMPO REAL",
    "Tabela densa: SKU, nome, <strong>disponível = físico − reservas</strong>, mínimo e fornecedor. Chips de <strong>inbound</strong> mostram SKU, quantidade e ETA simulado — espelha <code>Inventory.inbound</code> no servidor."
  );
  await wait(SEG);

  R.setTab("orders");
  narr(
    "ORDENS · RECEPÇÃO",
    "Formulário: placa, família do veículo, quilometragem, botão <strong>Registrar OS</strong>. No servidor, <code>createJob</code> abre INTAKE com CRM, tarefas, orçamento, rascunho fiscal e flags. A seguir abrimos uma OS demo já preenchida."
  );
  await wait(SEG);

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
    customer_document: "123.456.789-00",
    customer_email: "ricardo.cliente@email.com",
    payment_terms: "Cartão em 3x",
    tax_regime: "simples",
    priority: "high",
    bay_id: "B2",
    vin: "9BWZZZ377VT004251",
    notes: [{ ts: now - 3600, who: "Recepção", text: "Ruído em frenagem forte — prioridade alta." }],
    tasks: [
      { id: "T-1", title: "Checklist fluidos", done: true, who: "Demo" },
      { id: "T-2", title: "Medir disco dianteiro", done: false, who: "Demo" },
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
    invoices: [],
    invoice_draft: { lines: [], cfop: "5933", notes: "", discount: 0 },
  };
  state.jobs = [job];
  state.selectedId = job.id;
  syncDashboard(state);
  pushLog(2, "WORKSHOP", "OS-2001 aberta — CRM, VIN, prioridade, tarefas e orçamento.");
  R.refresh();

  narr(
    "DETALHE DA OS · CRM & FLAGS",
    "Três colunas: <strong>Cliente e oficina</strong> (nome, telefone, VIN, prioridade, baia, flags rental/insurance/fleet/vip), <strong>notas</strong> com carimbo de tempo, <strong>diagnóstico e plano</strong> (DTC manual, achados, SKU), <strong>tarefas</strong>, orçamento MO+peças, horas, pagamento, garantia. Atalhos dourados espelham <code>tools.shortcuts</code> do servidor."
  );
  await wait(SEG);

  job.state = DEMO_JOB_STATE.DIAGNOSTIC;
  job.diagnostic = {
    dtc: ["SP-HIGH-KM", "SP-PREV-OIL"],
    findings: [
      "Quilometragem elevada — revisão de freios prioritária.",
      "Programar óleo e filtro conforme preventiva Spartan.",
    ],
  };
  job.parts_plan = [
    { sku: "SKU-BRK-PAD-F", qty: 1 },
    { sku: "SKU-ENG-OIL5W30", qty: 1 },
    { sku: "SKU-ENG-FILTER", qty: 1 },
  ];
  job.diagnostic.dtc.push("P0420");
  job.diagnostic.findings.push("DTC P0420 — correlacionar com catalisador / mistura.");
  pushLog(2, "DIAG", "Diagnóstico registrado — plano de peças compatível com família SPORT.");
  syncDashboard(state);
  R.refresh();

  narr(
    "DIAGNÓSTICO & PLANO DE PEÇAS",
    "Transição para <strong>DIAGNOSTIC</strong>. No jogo, <code>feat_plan_add</code>, kit óleo, pastilhas e <code>plan_clear</code> alteram o plano; <code>feat_diag_dtc</code> e <code>feat_diag_finding</code> alimentam esta vista. Próximo passo: <strong>PARTS_PULL</strong> com reserva atômica."
  );
  await wait(SEG);

  job.state = DEMO_JOB_STATE.PARTS_PULL;
  reservePlan(state.inventory, job.parts_plan);
  pushLog(2, "INVENTORY", "Reserva atômica — rollback automático se faltar SKU.");
  syncDashboard(state);
  R.refresh();

  narr(
    "PUXADA DE PEÇAS (PARTS_PULL)",
    "Cada linha do plano consome <strong>disponível</strong> até o commit no fim do labor. Volte ao Estoque para ver a coluna Disponível; no cancelamento da OS, <code>releaseJobReserves</code> devolve as quantidades."
  );
  await wait(SEG);

  R.setTab("stock");
  await wait(SEG);

  R.setTab("orders");
  job.state = DEMO_JOB_STATE.LABOR;
  job.labor_progress = 0;
  pushLog(2, "WORKSHOP", "LABOR — eventos tickLabor +12% até 100%.");
  syncDashboard(state);
  R.refresh();

  narr(
    "MÃO DE OBRA (LABOR)",
    "Botão dourado <strong>Trabalhar (+12%)</strong> dispara <code>spartan_mechanic:tickLabor</code>. A fila mostra barra de progresso. Ao atingir 100%, o servidor faz <strong>commit</strong> das peças e move para QC com nota simulada."
  );
  for (let k = 1; k <= 9; k++) {
    await wait(2800);
    job.labor_progress = Math.min(100, job.labor_progress + 12);
    if (job.labor_progress >= 100) {
      job.state = DEMO_JOB_STATE.QC;
      commitPlan(state.inventory, job.parts_plan);
      job.qc_score = 94;
      pushLog(2, "QC", "Commit + inspeção QC — score " + job.qc_score);
    }
    syncDashboard(state);
    R.refresh();
  }
  await wait(6000);

  narr(
    "CONTROLE DE QUALIDADE",
    "Estado <strong>QC</strong>: <code>feat_qc_reinspect</code> recalcula nota. Transição para <strong>READY</strong> libera retirada; encerrar vai para <strong>CLOSED</strong> e limpa reservas remanescentes."
  );
  await wait(SEG);

  job.state = DEMO_JOB_STATE.READY;
  job.paid = true;
  job.warranty_until = now + 90 * 86400;
  buildDemoInvoiceDraftFromPlan(job);
  attachDemoIssuedInvoice(job);
  pushLog(2, "FISCAL", "NF-e simulada 88101 — texto disponível para clipboard no FiveM.");
  pushLog(2, "BILLING", "Pago + garantia 90 dias.");
  syncDashboard(state);
  R.refresh();

  R.setTab("fiscal");
  narr(
    "ABA FISCAL · NF-E SIMULADA",
    "Cartão da loja (<code>Config.FiscalShop</code>), CPF/CNPJ e e-mail do cliente, regime <strong>simples/presumido/normal</strong> (muda cálculo de ICMS no preview), rascunho com CFOP, desconto, linhas de peça e serviço, importação do plano/orçamento. <strong>Emitir</strong> grava histórico na OS e copia documento completo (chave fictícia, itens, totais PIS/COFINS) — <em>sem SEFAZ</em>, apenas RP."
  );
  await Promise.all([wait(SEG), scrollFiscalPreviewDuringSegment()]);

  narr(
    "159 OPERAÇÕES · feat_extended.lua",
    "Cada nome na lista é uma função <code>OPS.nome</code> no servidor. O cliente chama <code>spartanExtended</code> com <code>op</code> e <code>args</code> (normalmente <code>jobId</code>). Famílias: <strong>nf*</strong> fiscal, <strong>bill*</strong> cobrança, <strong>diag*</strong>, <strong>shop*</strong> compliance, <strong>inv*</strong> estoque, <strong>metrics*</strong>, <strong>export*</strong>, etc. A animação percorre o seletor — todas as entradas estão no repositório."
  );
  await Promise.all([wait(SEG), animateExtendedOpsSelect()]);

  R.setTab("audit");
  narr(
    "AUDITORIA",
    "Entradas com nível, categoria (WORKSHOP, INVENTORY, DIAG, FISCAL, BILLING…) e mensagem — mesma estrutura <code>Audit.entries</code> do FXServer. Ideal para staff e reconciliação de reservas/commits."
  );
  await wait(SEG);

  narr(
    "ACESSO, PERMISSÕES E COMANDOS",
    "Resource <code>spartan_mechanic</code>: comando <strong>/oficina</strong> (configurável) e mapeamento de tecla sugerido <strong>F6</strong>. O servidor valida <code>canOpen</code> com ACE <code>spartan_mechanic</code> ou job configurável — pronto para plugar ESX/QBCore no mesmo gancho."
  );
  await wait(SEG);

  narr(
    "CATÁLOGO, DADOS E ROADMAP",
    "<code>PARTS_CATALOG</code> em <code>shared/config.lua</code> alimenta preços simulados da NF e compatibilidade por família de veículo. As <strong>159 operações</strong> cobrem compliance, compras, diagnóstico stub, cobrança e exportações — cada uma auditada. Próximo passo no seu servidor: disparar item de NF para o inventário do jogador ou webhook externo, se desejar."
  );
  await wait(SEG);

  job.state = DEMO_JOB_STATE.CLOSED;
  pushLog(2, "WORKSHOP", "OS-2001 encerrada.");
  state.jobs = [];
  state.selectedId = null;

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
    customer_document: "",
    customer_email: "",
    payment_terms: "À vista",
    tax_regime: "simples",
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
    invoices: [],
    invoice_draft: { lines: [], cfop: "5933", notes: "", discount: 0 },
  };
  state.jobs = [job2];
  state.selectedId = job2.id;
  syncDashboard(state);
  pushLog(2, "WORKSHOP", "OS-2002 — cenário cancelamento.");
  R.setTab("orders");
  R.refresh();

  narr(
    "CANCELAMENTO & ROLLBACK",
    "<strong>Cancelar OS</strong> chama <code>cancelJob</code>: estado CLOSED, <code>releaseJobReserves</code> devolve disponível. Útil quando o cliente desiste após puxada de peças."
  );
  await wait(SEG);

  job2.state = DEMO_JOB_STATE.DIAGNOSTIC;
  job2.diagnostic = { dtc: ["SP-OK"], findings: ["Checklist OK."] };
  job2.parts_plan = [{ sku: "SKU-ENG-OIL5W30", qty: 1 }];
  reservePlan(state.inventory, job2.parts_plan);
  job2.state = DEMO_JOB_STATE.PARTS_PULL;
  syncDashboard(state);
  R.refresh();
  await wait(12000);

  for (const line of job2.parts_plan) {
    const row = state.inventory.find((r) => r.sku === line.sku);
    if (row) row.available += line.qty;
  }
  pushLog(3, "WORKSHOP", "OS-2002 cancelada — reservas estornadas.");
  state.jobs = [];
  state.selectedId = null;
  syncDashboard(state);
  R.refresh();

  R.setTab("dashboard");
  narr(
    "ENCERRAMENTO",
    "Vídeo <strong>1080p</strong> gerado com Playwright + <code>record-spartan-demo.mjs</code>, áudio <strong>phonk/funk procedural</strong> (FFmpeg). Painel = mesmo <code>html/</code> do resource FiveM. <strong>Spartan Motorworks</strong> — obrigado."
  );
  await wait(SEG + 10000);

  const nr = document.getElementById("record-narrator");
  if (nr) nr.remove();
  window.__SPARTAN_DEMO_DONE = true;
}

window.runSpartanRecordDemo = runSpartanRecordDemo;
