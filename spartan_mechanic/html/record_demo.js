/**
 * Demonstração gravável do painel NUI Spartan (sem FiveM).
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

const PACE = 1.65;

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
    tagline: "FiveM NUI — Spartan Roleplay · tour completo",
  };

  let logId = 0;
  const pushLog = (lv, cat, msg) => {
    logId++;
    state.logs.unshift(logEntry(logId, lv, cat, msg));
    if (state.logs.length > 40) state.logs.pop();
  };

  const inventory = seedInventory();
  const inbound = [
    { sku: "SKU-ELEC-BAT-60AH", qty: 6, eta_sec: 42 },
    { sku: "SKU-COOL-RAD", qty: 2, eta_sec: 78 },
  ];

  R.bootstrap({
    open: true,
    locale,
    jobs: [],
    inventory,
    inbound,
    catalog: DEMO_CATALOG,
    logs: [],
  });
  pushLog(2, "SYSTEM", "Resource spartan_mechanic — NUI carregada (modo demonstração).");
  R.refresh();

  narr(
    "SPARTAN MOTORWORKS",
    "Painel profissional em HTML para <strong>FiveM</strong>: rail lateral dourada, três abas — <strong>Ordens</strong>, <strong>Estoque</strong>, <strong>Auditoria</strong> — e pipeline FSM completo no servidor Lua."
  );
  await wait(5500);

  narr(
    "ESTOQUE INICIAL",
    "A tabela reflete <strong>disponível = físico − reservas</strong>. Chips de inbound simulam reposição do fornecedor — igual à lógica do <code>workshop.lua</code>."
  );
  R.setTab("stock");
  await wait(9000);

  R.setTab("audit");
  narr(
    "AUDITORIA",
    "Cada ação no servidor gera entradas categorizadas (WORKSHOP, INVENTORY, DIAG). No jogo real, o console do FXServer complementa esta trilha."
  );
  await wait(8000);

  R.setTab("orders");
  const job = {
    id: "OS-2001",
    plate: "SP4RTN7",
    family: "SPORT",
    mileage_km: 168000,
    state: DEMO_JOB_STATE.INTAKE,
    labor_progress: 0,
    mechanic: "Mecânico Demo",
    parts_plan: [],
    diagnostic: null,
    qc_score: null,
  };
  state.jobs = [job];
  state.selectedId = job.id;
  pushLog(2, "WORKSHOP", "OS " + job.id + " aberta — placa " + job.plate + " · " + job.family);
  R.refresh();

  narr(
    "NOVA OS",
    "Recepção: ordem <strong>OS-2001</strong> em estado <strong>INTAKE</strong>. O detalhe mostra a trilha de estados e o botão de ação principal (ouro) avança a FSM."
  );
  await wait(8000);

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
  pushLog(2, "DIAG", "Diagnóstico concluído — DTC correlacionados ao plano de peças.");
  R.refresh();

  narr(
    "DIAGNÓSTICO",
    "Transição para <strong>DIAGNOSTIC</strong>: DTC, achados textuais e lista de SKUs com nomes do catálogo — o mesmo <code>PARTS_CATALOG</code> do <code>shared/config.lua</code>."
  );
  await wait(9000);

  job.state = DEMO_JOB_STATE.PARTS_PULL;
  reservePlan(state.inventory, job.parts_plan);
  pushLog(2, "INVENTORY", "Reservas criadas para OS-2001 — disponível recalculado.");
  R.refresh();

  narr(
    "PUXADA DE PEÇAS",
    "<strong>PARTS_PULL</strong> no servidor executa reserva atômica por SKU. Observe a coluna <em>Disponível</em> cair na aba Estoque."
  );
  await wait(3500);
  R.setTab("stock");
  await wait(9000);

  R.setTab("orders");
  job.state = DEMO_JOB_STATE.LABOR;
  job.labor_progress = 0;
  pushLog(2, "WORKSHOP", "Mão de obra iniciada — eventos tickLabor +12%.");
  R.refresh();

  narr(
    "MÃO DE OBRA",
    "Nove cliques em <strong>Trabalhar (+12%)</strong> reproduzem o <code>RegisterNetEvent('spartan_mechanic:tickLabor')</code>. Barra de progresso em tempo real na fila."
  );
  for (let k = 1; k <= 9; k++) {
    await wait(k === 1 ? 3800 : 3200);
    job.labor_progress = Math.min(100, job.labor_progress + 12);
    if (job.labor_progress >= 100) {
      job.state = DEMO_JOB_STATE.QC;
      commitPlan(state.inventory, job.parts_plan);
      job.qc_score = 94;
      pushLog(2, "QC", "Labor 100% — commit de estoque e inspeção QC simulada.");
    }
    R.refresh();
  }
  await wait(5500);

  narr(
    "CONTROLE DE QUALIDADE",
    "Em <strong>QC</strong> o servidor dá baixa física (commit) e gera nota. Próximo passo: liberar veículo para <strong>READY</strong>."
  );
  R.refresh();
  await wait(8000);

  job.state = DEMO_JOB_STATE.READY;
  pushLog(2, "WORKSHOP", "Veículo liberado — estado READY.");
  R.refresh();
  await wait(6500);

  job.state = DEMO_JOB_STATE.CLOSED;
  pushLog(2, "WORKSHOP", "OS encerrada — reservas remanescentes liberadas no servidor.");
  state.jobs = [];
  state.selectedId = null;
  R.refresh();

  narr(
    "ENCERRAMENTO",
    "<strong>CLOSED</strong> remove a OS da fila ativa. O painel Spartan permanece pronto para nova recepção via <code>/oficina</code> ou tecla mapeada."
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
    parts_plan: [],
    diagnostic: null,
    qc_score: null,
  };
  state.jobs = [job2];
  state.selectedId = job2.id;
  pushLog(2, "WORKSHOP", "OS-2002 aberta — fluxo rápido até cancelamento.");
  R.refresh();

  narr(
    "CENÁRIO EXTRA",
    "Segunda OS para demonstrar <strong>Cancelar OS</strong> — equivalente ao evento <code>spartan_mechanic:cancelJob</code> com rollback de reservas."
  );
  await wait(6500);

  job2.state = DEMO_JOB_STATE.DIAGNOSTIC;
  job2.diagnostic = { dtc: ["SP-OK"], findings: ["Checklist preventivo Spartan — sem críticos."] };
  job2.parts_plan = [{ sku: "SKU-ENG-OIL5W30", qty: 1 }];
  reservePlan(state.inventory, job2.parts_plan);
  job2.state = DEMO_JOB_STATE.PARTS_PULL;
  pushLog(2, "INVENTORY", "Reserva parcial OS-2002.");
  R.refresh();
  await wait(6500);

  for (const line of job2.parts_plan) {
    const row = state.inventory.find((r) => r.sku === line.sku);
    if (row) row.available += line.qty;
  }
  pushLog(3, "WORKSHOP", "OS-2002 cancelada — rollback de reservas.");
  state.jobs = [];
  state.selectedId = null;
  R.refresh();

  narr(
    "INTEGRAÇÃO",
    "O resource vive em <code>spartan_mechanic/</code>: <strong>fxmanifest</strong>, <strong>server/workshop.lua</strong>, <strong>client/main.lua</strong> e pasta <strong>html/</strong> com CSS premium."
  );
  await wait(9000);

  R.setTab("stock");
  narr(
    "SPARTAN ROLEPLAY",
    "Tema preto e ouro, tipografia Bebas + Outfit, cards em vidro e tabela densa — pronto para branding da sua cidade."
  );
  await wait(9000);

  R.setTab("audit");
  narr(
    "FIM",
    "Gravação gerada com Playwright. No servidor FiveM, use o mesmo painel ao vivo. <strong>Spartan Motorworks</strong> — obrigado por assistir."
  );
  await wait(11000);

  const nr = document.getElementById("record-narrator");
  if (nr) nr.remove();
  window.__SPARTAN_DEMO_DONE = true;
}

window.runSpartanRecordDemo = runSpartanRecordDemo;
