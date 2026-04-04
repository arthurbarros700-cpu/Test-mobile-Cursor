/**
 * Spartan Motorworks — NUI
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

const STATE_ORDER = [
  JOB_STATE.INTAKE,
  JOB_STATE.DIAGNOSTIC,
  JOB_STATE.PARTS_PULL,
  JOB_STATE.LABOR,
  JOB_STATE.QC,
  JOB_STATE.READY,
  JOB_STATE.CLOSED,
];

const FAMILIES = ["COMPACT", "SEDAN", "SUV", "SPORT", "COMMERCIAL", "MOTORCYCLE"];

window.__SPARTAN_STATE__ = {
  jobs: [],
  inventory: [],
  inbound: [],
  catalog: {},
  logs: [],
  selectedId: null,
  locale: {},
  dashboard: null,
  tools: null,
  fiscal_shop: null,
  extended_ops: null,
};
const state = window.__SPARTAN_STATE__;

const FALLBACK_EXTENDED_OPS = [
  "nfIssue",
  "nfDraftImportFromPartsPlan",
  "nfDraftImportLaborFromEstimate",
  "exportJobSummaryText",
  "exportFiscalShopCard",
  "qcRoadtestFlag",
  "shopShiftHandover",
  "billPixRefGenerate",
  "policyPrivacyAck",
  "courtesyWashAdd",
  "diagBatteryHealthSim",
  "planMergeDuplicateSku",
  "laborClockStart",
  "invBinLocationSet",
  "reportDailyFlash",
];

const FLAG_PRESETS = ["rental", "insurance", "fleet", "vip"];

function spartanAction(type, extra) {
  const p = Object.assign({ type }, extra || {});
  post("spartanAction", p);
}

function requireSelectedJob() {
  const id = state.selectedId;
  if (!id) {
    showToast("error", "Selecione uma OS na fila.");
    return null;
  }
  return id;
}

function formatMoney(n) {
  const x = Number(n) || 0;
  return x.toLocaleString("pt-BR", { style: "currency", currency: "BRL", maximumFractionDigits: 0 });
}

function formatTs(ts) {
  if (!ts) return "—";
  return new Date(ts * 1000).toLocaleString("pt-BR", { dateStyle: "short", timeStyle: "short" });
}

function GetParentResourceName() {
  try {
    return window.GetParentResourceName ? window.GetParentResourceName() : "spartan_mechanic";
  } catch {
    return "spartan_mechanic";
  }
}

function post(name, data) {
  fetch(`https://${GetParentResourceName()}/${name}`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data || {}),
  }).catch(() => {});
}

function postExtended(op, args) {
  fetch(`https://${GetParentResourceName()}/spartanExtended`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ op, args: args || {} }),
  }).catch(() => {});
}

function showToast(kind, message) {
  const el = document.getElementById("toast");
  el.className = "toast " + (kind === "error" ? "error" : "success") + " show";
  el.textContent = message;
  clearTimeout(showToast._t);
  showToast._t = setTimeout(() => {
    el.classList.remove("show");
  }, 3200);
}

function setTab(id) {
  document.querySelectorAll(".nav-btn").forEach((b) => b.classList.toggle("active", b.dataset.tab === id));
  document.querySelectorAll(".tab-panel").forEach((p) => p.classList.toggle("active", p.id === "tab-" + id));
  const titles = {
    orders: ["Ordens de serviço", "FSM, CRM, tarefas, orçamento e plano de peças em um só fluxo."],
    dashboard: ["Painel executivo", "KPIs, throughput, SLA e performance do turno."],
    ops: ["Operações", "Entradas, ajustes, inbound, PO simulado e ferramentas globais."],
    stock: ["Estoque Spartan", "Disponibilidade em tempo real após reservas por OS."],
    audit: ["Auditoria", "Rastreabilidade servidor — reservas, commits e transições."],
    fiscal: ["Fiscal & NF-e", "Documento simulado para o jogador, rascunho CFOP/itens e 150+ operações nomeadas."],
  };
  const t = titles[id] || titles.orders;
  document.getElementById("page-title").textContent = t[0];
  document.getElementById("page-desc").textContent = t[1];
}

function jobById(id) {
  return state.jobs.find((j) => String(j.id) === String(id));
}

function mergeJobs(incoming) {
  if (!incoming || !incoming.length) return;
  for (const dto of incoming) {
    const i = state.jobs.findIndex((j) => j.id === dto.id);
    if (i >= 0) state.jobs[i] = dto;
    else state.jobs.push(dto);
  }
  state.jobs.sort((a, b) => (a.id < b.id ? 1 : -1));
}

function renderJobs() {
  const el = document.getElementById("job-list");
  el.innerHTML = "";
  const open = state.jobs.filter((j) => j.state !== JOB_STATE.CLOSED);
  document.getElementById("job-count").textContent = open.length + " abertas";
  for (const j of open) {
    const div = document.createElement("div");
    div.className = "job-item" + (state.selectedId === j.id ? " selected" : "");
    div.dataset.id = j.id;
    div.innerHTML = `<div class="j1">${j.id} · ${j.plate} · ${j.family}</div>
      <div class="j2">KM ${j.mileage_km} · ${j.mechanic || "—"}</div>
      <span class="state-pill">${j.state}</span>
      ${
        j.state === JOB_STATE.LABOR
          ? `<div class="progress-bar-wrap"><div class="progress-bar-fill" style="width:${j.labor_progress || 0}%"></div></div>`
          : ""
      }`;
    div.addEventListener("click", () => {
      state.selectedId = j.id;
      renderJobs();
      renderDetail();
    });
    el.appendChild(div);
  }
}

function renderStateTrack(st) {
  const el = document.getElementById("state-track");
  el.innerHTML = "";
  const idx = STATE_ORDER.indexOf(st);
  STATE_ORDER.slice(0, -1).forEach((s, i) => {
    const span = document.createElement("span");
    span.className = "st-dot";
    span.textContent = s;
    if (i < idx) span.classList.add("done");
    if (i === idx) span.classList.add("current");
    el.appendChild(span);
  });
}

function nextAction(job) {
  if (!job || job.state === JOB_STATE.CLOSED) return null;
  const st = job.state;
  if (st === JOB_STATE.INTAKE) return { label: "Iniciar diagnóstico", next: JOB_STATE.DIAGNOSTIC };
  if (st === JOB_STATE.DIAGNOSTIC) return { label: "Reservar peças (puxada)", next: JOB_STATE.PARTS_PULL };
  if (st === JOB_STATE.PARTS_PULL) return { label: "Iniciar mão de obra", next: JOB_STATE.LABOR };
  if (st === JOB_STATE.LABOR) return { label: "Trabalhar (+12%)", tick: true };
  if (st === JOB_STATE.QC) return { label: "Liberar veículo", next: JOB_STATE.READY };
  if (st === JOB_STATE.READY) return { label: "Encerrar OS", next: JOB_STATE.CLOSED };
  return null;
}

function renderShortcuts(job) {
  const bar = document.getElementById("shortcut-bar");
  bar.innerHTML = "";
  const sc = (state.tools && state.tools.shortcuts) || [];
  for (const s of sc) {
    const b = document.createElement("button");
    b.type = "button";
    b.className = "btn-chip";
    b.textContent = s.label || s.id;
    b.addEventListener("click", () => {
      const jid = job.id;
      if (s.id === "note") {
        const ta = document.getElementById("crm-note");
        if (ta) ta.focus();
        return;
      }
      if (s.id === "oil") spartanAction("plan_oil", { jobId: jid });
      else if (s.id === "brake") spartanAction("plan_brake", { jobId: jid });
      else if (s.id === "receive") setTab("ops");
      else if (s.id === "qc") spartanAction("qc_reinspect", { jobId: jid });
    });
    bar.appendChild(b);
  }
}

function renderMeta(job) {
  const el = document.getElementById("detail-meta");
  el.innerHTML = "";
  const add = (text, cls) => {
    const span = document.createElement("span");
    span.className = "pill" + (cls ? " " + cls : "");
    span.textContent = text;
    el.appendChild(span);
  };
  add("Prioridade: " + (job.priority || "normal"), job.priority === "urgent" ? "danger" : "");
  if (job.bay_id) add("Baia " + job.bay_id, "gold");
  add(job.paid ? "Pago" : "Pagamento pendente", job.paid ? "ok" : "danger");
  if (job.qc_score != null) add("QC " + job.qc_score, "gold");
  add("Horas oficina: " + (job.hours_shop || 0), "");
  if (job.warranty_until) add("Garantia até " + formatTs(job.warranty_until), "ok");
}

function renderNotes(job) {
  const box = document.getElementById("note-list");
  box.innerHTML = "";
  const notes = job.notes || [];
  if (!notes.length) {
    box.innerHTML = '<span class="pill">Sem notas</span>';
    return;
  }
  for (const n of notes) {
    const div = document.createElement("div");
    div.className = "note-item";
    div.innerHTML = `<strong>${escapeHtml(n.who || "—")}</strong> · ${formatTs(n.ts)}<br/>${escapeHtml(n.text || "")}`;
    box.appendChild(div);
  }
}

function renderTasks(job) {
  const box = document.getElementById("task-list");
  box.innerHTML = "";
  const tasks = job.tasks || [];
  if (!tasks.length) {
    box.innerHTML = '<span class="pill">Nenhuma tarefa</span>';
    return;
  }
  for (const t of tasks) {
    const row = document.createElement("div");
    row.className = "task-row" + (t.done ? " done" : "");
    row.innerHTML = `<span>${escapeHtml(t.title || "")}</span>`;
    if (!t.done) {
      const b = document.createElement("button");
      b.type = "button";
      b.className = "btn-sm";
      b.textContent = "OK";
      b.addEventListener("click", () => spartanAction("task_done", { jobId: job.id, taskId: t.id }));
      row.appendChild(b);
    } else {
      const s = document.createElement("span");
      s.className = "pill ok";
      s.textContent = "Feito";
      row.appendChild(s);
    }
    box.appendChild(row);
  }
}

function renderFlags(job) {
  const row = document.getElementById("flag-row");
  row.innerHTML = "";
  const flags = job.flags || {};
  for (const key of FLAG_PRESETS) {
    const b = document.createElement("button");
    b.type = "button";
    b.className = "flag-toggle" + (flags[key] ? " on" : "");
    b.textContent = key;
    b.addEventListener("click", () => spartanAction("flag", { jobId: job.id, flag: key }));
    row.appendChild(b);
  }
}

function fillCrmForm(job) {
  document.getElementById("crm-name").value = job.customer_name || "";
  document.getElementById("crm-phone").value = job.customer_phone || "";
  document.getElementById("crm-vin").value = job.vin || "";
  document.getElementById("crm-prio").value = job.priority || "normal";
  document.getElementById("crm-bay").value = job.bay_id || "";
  document.getElementById("est-labor").value = job.estimate_labor ?? 0;
  document.getElementById("est-parts").value = job.estimate_parts ?? 0;
  document.getElementById("bill-paid").checked = !!job.paid;
  const labor = Number(job.estimate_labor) || 0;
  const parts = Number(job.estimate_parts) || 0;
  document.getElementById("est-total").textContent = "Total estimado: " + formatMoney(labor + parts);
}

function populateSkuSelects() {
  const keys = Object.keys(state.catalog || {}).sort();
  for (const selId of ["plan-sku", "ops-sku-receive", "ops-sku-po", "fiscal-sku"]) {
    const sel = document.getElementById(selId);
    if (!sel) continue;
    const cur = sel.value;
    sel.innerHTML = "";
    for (const k of keys) {
      const def = state.catalog[k] || {};
      const o = document.createElement("option");
      o.value = k;
      o.textContent = k + (def.name ? " — " + def.name : "");
      sel.appendChild(o);
    }
    if (cur && keys.includes(cur)) sel.value = cur;
  }
}

function renderFiscalShop() {
  const pre = document.getElementById("fiscal-shop-pre");
  if (!pre) return;
  const s = state.fiscal_shop;
  if (!s) {
    pre.textContent = "—";
    return;
  }
  pre.textContent = [
    s.trade_name || s.legal_name || "—",
    "CNPJ: " + (s.cnpj || "—") + "  IE: " + (s.ie || "—"),
    "Endereço: " + (s.address || "—"),
    (s.city || "") + " / " + (s.uf || "") + "  CEP: " + (s.cep || "—"),
  ].join("\n");
}

function fillFiscalFormFromJob(job) {
  const doc = document.getElementById("fiscal-doc");
  if (!doc) return;
  if (!job) {
    doc.value = "";
    document.getElementById("fiscal-email").value = "";
    document.getElementById("fiscal-terms").value = "";
    document.getElementById("fiscal-regime").value = "simples";
    document.getElementById("fiscal-cfop").value = "";
    document.getElementById("fiscal-discount").value = "0";
    document.getElementById("fiscal-notes").value = "";
    return;
  }
  doc.value = job.customer_document || "";
  document.getElementById("fiscal-email").value = job.customer_email || "";
  document.getElementById("fiscal-terms").value = job.payment_terms || "À vista";
  document.getElementById("fiscal-regime").value = job.tax_regime || "simples";
  const d = job.invoice_draft || {};
  document.getElementById("fiscal-cfop").value = d.cfop || "5933";
  document.getElementById("fiscal-discount").value = String(d.discount != null ? d.discount : 0);
  document.getElementById("fiscal-notes").value = d.notes || "";
}

function fmtMoneyNum(n) {
  const x = Number(n) || 0;
  return x.toFixed(2);
}

function renderFiscalPreview() {
  const el = document.getElementById("fiscal-preview");
  if (!el) return;
  const job = state.selectedId ? jobById(state.selectedId) : null;
  if (!job || job.state === JOB_STATE.CLOSED) {
    el.innerHTML = '<span class="fp-head">Nenhuma OS selecionada</span>\nAbra a aba Ordens e clique em uma ordem na fila.';
    return;
  }
  const draft = job.invoice_draft || { lines: [], cfop: "5933", notes: "", discount: 0 };
  const lines = draft.lines || [];
  let sub = 0;
  const linesTxt = lines
    .map((ln, i) => {
      const q = ln.qty || 0;
      const u = ln.unit_price || 0;
      sub += q * u;
      return `  ${i + 1}. ${ln.description || ln.sku || "?"} ×${q} @ ${fmtMoneyNum(u)} = ${fmtMoneyNum(q * u)}`;
    })
    .join("\n");
  const disc = Math.max(0, Number(draft.discount) || 0);
  const base = Math.max(0, sub - disc);
  const regime = job.tax_regime || "simples";
  const icmsR = regime === "normal" ? 0.18 : regime === "presumido" ? 0.12 : 0;
  const icms = Math.round(base * icmsR * 100) / 100;
  const pis = Math.round(base * 0.0065 * 100) / 100;
  const cofins = Math.round(base * 0.03 * 100) / 100;
  const total = Math.round((base + icms + pis + cofins) * 100) / 100;
  const invs = job.invoices || [];
  const lastNf =
    invs.length > 0
      ? `Última NF: #${invs[invs.length - 1].number} | Total R$ ${fmtMoneyNum(invs[invs.length - 1].total)} | ${invs[invs.length - 1].status || ""}`
      : "Nenhuma NF emitida ainda.";
  el.innerHTML =
    `<span class="fp-head">${job.id} · ${job.plate}</span>\n` +
    `Cliente: ${job.customer_name || "—"} | Doc: ${job.customer_document || "—"}\n` +
    `CFOP rascunho: ${draft.cfop || "5933"} | Regime: ${regime}\n` +
    `--- Linhas (${lines.length}) ---\n` +
    (linesTxt || "  (vazio)") +
    `\nSubtotal R$ ${fmtMoneyNum(sub)} | Desc R$ ${fmtMoneyNum(disc)} | Base R$ ${fmtMoneyNum(base)}` +
    `\nICMS R$ ${fmtMoneyNum(icms)} | PIS R$ ${fmtMoneyNum(pis)} | COFINS R$ ${fmtMoneyNum(cofins)}` +
    `\n<strong style="color:var(--gold)">Total estimado R$ ${fmtMoneyNum(total)}</strong>\n` +
    lastNf;
}

function getExtendedOpList() {
  const o = state.extended_ops;
  if (o && o.length) return o;
  return FALLBACK_EXTENDED_OPS;
}

function populateExtendedOps() {
  const sel = document.getElementById("ext-op-select");
  const cnt = document.getElementById("ext-ops-count");
  const quick = document.getElementById("ext-op-quick");
  if (!sel || !quick) return;
  const list = getExtendedOpList();
  if (cnt) cnt.textContent = String(list.length);
  const cur = sel.value;
  sel.innerHTML = "";
  for (const op of list) {
    const o = document.createElement("option");
    o.value = op;
    o.textContent = op;
    sel.appendChild(o);
  }
  if (cur && list.includes(cur)) sel.value = cur;
  quick.innerHTML = "";
  const shortcuts = list.slice(0, 12);
  for (const op of shortcuts) {
    const b = document.createElement("button");
    b.type = "button";
    b.className = "tool-tile";
    b.textContent = op.length > 22 ? op.slice(0, 20) + "…" : op;
    b.title = op;
    b.addEventListener("click", () => {
      sel.value = op;
      runExtendedOp(op);
    });
    quick.appendChild(b);
  }
}

function runExtendedOp(op) {
  const id = state.selectedId;
  const args = id ? { jobId: id } : {};
  postExtended(op, args);
}

function renderDashboard() {
  const d = state.dashboard;
  const grid = document.getElementById("kpi-grid");
  grid.innerHTML = "";
  if (!d) {
    grid.innerHTML = '<p class="ops-hint">Sem dados do servidor.</p>';
    return;
  }
  document.getElementById("dash-throughput").textContent = String(d.throughput ?? 0);
  const tiles = [
    ["OS abertas", d.open_os, false],
    ["Linhas estoque baixo", d.low_stock_lines, (d.low_stock_lines || 0) > 0],
    ["Valor estoque (aprox.)", formatMoney(d.inventory_value), false],
    ["Horas abertas (aprox.)", d.labor_hours_open, false],
    ["QC médio", d.avg_qc != null ? d.avg_qc : "—", false],
    ["Índice risco frota", d.fleet_risk + "%", (d.fleet_risk || 0) > 70],
    ["Unidades inbound", d.inbound_units, false],
    ["Fornecedores cat.", d.suppliers, false],
  ];
  for (const [label, val, warn] of tiles) {
    const div = document.createElement("div");
    div.className = "kpi-tile" + (warn ? " warn" : "");
    div.innerHTML = `<div class="kv">${escapeHtml(label)}</div><div class="num">${escapeHtml(String(val))}</div>`;
    grid.appendChild(div);
  }
  const sla = d.sla_flags || [];
  const slaEl = document.getElementById("sla-list");
  const cnt = document.getElementById("sla-count");
  cnt.textContent = String(sla.length);
  if (!sla.length) slaEl.innerHTML = '<span class="pill ok">Nenhum SLA crítico</span>';
  else {
    slaEl.innerHTML = "";
    for (const id of sla) {
      const c = document.createElement("span");
      c.className = "sla-chip";
      c.textContent = id;
      slaEl.appendChild(c);
    }
  }
  const lb = document.getElementById("leader-body");
  lb.innerHTML = "";
  for (const row of d.leaderboard || []) {
    const tr = document.createElement("tr");
    tr.innerHTML = `<td>${escapeHtml(row.name || "")}</td><td>${row.jobs_closed_week ?? "—"}</td><td>${row.avg_qc ?? "—"}</td>`;
    lb.appendChild(tr);
  }
}

function renderDetail() {
  const card = document.getElementById("detail-card");
  const job = state.selectedId ? jobById(state.selectedId) : null;
  if (!job || job.state === JOB_STATE.CLOSED) {
    card.hidden = true;
    fillFiscalFormFromJob(null);
    renderFiscalPreview();
    return;
  }
  card.hidden = false;
  document.getElementById("detail-id").textContent = job.id + " · " + job.plate;
  renderStateTrack(job.state);
  renderMeta(job);
  renderShortcuts(job);
  fillCrmForm(job);
  renderNotes(job);
  renderTasks(job);
  renderFlags(job);
  fillFiscalFormFromJob(job);
  renderFiscalPreview();
  if (job.diagnostic) {
    document.getElementById("detail-dtc").textContent = "DTC: " + (job.diagnostic.dtc || []).join(", ");
    document.getElementById("detail-findings").textContent = (job.diagnostic.findings || []).join("\n");
  } else {
    document.getElementById("detail-dtc").textContent = "";
    document.getElementById("detail-findings").textContent = "Aguardando diagnóstico.";
  }
  const ul = document.getElementById("detail-parts");
  ul.innerHTML = "";
  const plan = job.parts_plan || [];
  plan.forEach((line, idx) => {
    const def = state.catalog[line.sku] || {};
    const li = document.createElement("li");
    li.innerHTML = `<span class="sku">#${idx + 1}</span><span class="sku">${line.sku}</span>×${line.qty} — ${def.name || line.sku}`;
    ul.appendChild(li);
  });
  const act = nextAction(job);
  const btn = document.getElementById("btn-action");
  btn.onclick = null;
  if (!act) {
    btn.textContent = "—";
    btn.disabled = true;
  } else {
    btn.disabled = false;
    btn.textContent = act.label;
    btn.onclick = () => {
      if (act.tick) post("tickLabor", { jobId: job.id });
      else post("transition", { jobId: job.id, newState: act.next });
    };
  }
  const cancelBtn = document.getElementById("btn-cancel-os");
  cancelBtn.onclick = () => {
    if (confirm("Cancelar esta ordem de serviço?")) post("cancelJob", { jobId: job.id });
  };
}

function renderInventory() {
  const tb = document.getElementById("inv-body");
  tb.innerHTML = "";
  for (const row of state.inventory) {
    const low = row.available <= row.reorder_point;
    const tr = document.createElement("tr");
    tr.innerHTML = `<td><span class="sku">${row.sku}</span></td>
      <td>${escapeHtml(row.name)}</td>
      <td class="${low ? "low-stock" : "ok-stock"}">${row.available}</td>
      <td>${row.on_hand}</td>
      <td>${row.reorder_point}</td>
      <td style="color:var(--muted)">${escapeHtml(row.supplier || "")}</td>`;
    tb.appendChild(tr);
  }
  const inc = document.getElementById("inbound-list");
  inc.innerHTML = "";
  if (!state.inbound || !state.inbound.length) {
    inc.innerHTML = '<span class="chip">Sem pedidos pendentes</span>';
  } else {
    for (const x of state.inbound) {
      const c = document.createElement("span");
      c.className = "chip";
      c.textContent = `${x.sku} +${x.qty} · ETA ~${x.eta_sec}s`;
      inc.appendChild(c);
    }
  }
}

function escapeHtml(s) {
  const d = document.createElement("div");
  d.textContent = s;
  return d.innerHTML;
}

function renderAudit() {
  const el = document.getElementById("audit-list");
  el.innerHTML = "";
  for (const e of state.logs || []) {
    const lv = e.level || 2;
    const cls = lv >= 4 ? "err" : lv >= 3 ? "warn" : "info";
    const div = document.createElement("div");
    div.className = "audit-item";
    const head = (e.category || "") + " · " + new Date((e.ts || 0) * 1000).toLocaleTimeString();
    div.innerHTML = `<div class="ah ${cls}">#${e.id} ${head}</div>
      <div class="am">${escapeHtml(e.message || "")}</div>`;
    el.appendChild(div);
  }
}

function applyBootstrap(data) {
  if (data.locale) {
    state.locale = data.locale;
    if (data.locale.brand) document.getElementById("brand-name").textContent = data.locale.brand;
    if (data.locale.subtitle) document.getElementById("brand-sub").textContent = data.locale.subtitle;
    if (data.locale.tagline) document.getElementById("rail-tagline").textContent = data.locale.tagline;
  }
  if (data.jobs) {
    state.jobs = data.jobs;
    if (state.selectedId && !jobById(state.selectedId)) state.selectedId = null;
  }
  if (data.inventory) state.inventory = data.inventory;
  if (data.inbound) state.inbound = data.inbound;
  if (data.catalog) state.catalog = data.catalog;
  if (data.logs) state.logs = data.logs;
  if (data.dashboard !== undefined) state.dashboard = data.dashboard;
  if (data.tools !== undefined) state.tools = data.tools;
  if (data.fiscal_shop !== undefined) state.fiscal_shop = data.fiscal_shop;
  if (data.extended_ops !== undefined) state.extended_ops = data.extended_ops;
  populateSkuSelects();
  renderFiscalShop();
  populateExtendedOps();
  renderJobs();
  renderDetail();
  renderInventory();
  renderAudit();
  renderDashboard();
}

function initFamilies() {
  const sel = document.getElementById("in-family");
  sel.innerHTML = "";
  for (const f of FAMILIES) {
    const o = document.createElement("option");
    o.value = f;
    o.textContent = f;
    sel.appendChild(o);
  }
}

function tickClock() {
  const el = document.getElementById("clock-pill");
  const now = new Date();
  el.textContent = now.toLocaleTimeString("pt-BR", { hour: "2-digit", minute: "2-digit", second: "2-digit" });
}

document.querySelectorAll(".nav-btn").forEach((b) => {
  b.addEventListener("click", () => setTab(b.dataset.tab));
});

document.getElementById("btn-close").addEventListener("click", () => post("close"));

document.getElementById("btn-create").addEventListener("click", () => {
  const plate = document.getElementById("in-plate").value.trim() || "SPRTN" + Math.floor(Math.random() * 90 + 10);
  const family = document.getElementById("in-family").value;
  const km = parseInt(document.getElementById("in-km").value, 10) || Math.floor(Math.random() * 180000 + 20000);
  post("createJob", { plate, family, mileage: km });
});

window.addEventListener("message", (ev) => {
  const msg = ev.data;
  if (!msg || !msg.action) return;
  if (msg.action === "open") {
    document.getElementById("app").classList.remove("hidden");
    setTab("orders");
    tickClock();
  }
  if (msg.action === "close") {
    document.getElementById("app").classList.add("hidden");
  }
  if (msg.action === "bootstrap") {
    applyBootstrap(msg.data || {});
    if (msg.data && msg.data.open) document.getElementById("app").classList.remove("hidden");
  }
  if (msg.action === "toast") {
    showToast(msg.kind, msg.message);
  }
  if (msg.action === "actionResult") {
    if (!msg.ok && msg.err) showToast("error", "Erro: " + msg.err);
  }
  if (msg.action === "jobRemoved") {
    state.jobs = state.jobs.filter((j) => String(j.id) !== String(msg.jobId));
    if (String(state.selectedId) === String(msg.jobId)) state.selectedId = null;
    renderJobs();
    renderDetail();
  }
  if (msg.action === "clipboard" && msg.text) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(msg.text).then(
        () => showToast("success", "Clipboard atualizado."),
        () => showToast("error", "Não foi possível copiar.")
      );
    } else {
      showToast("error", "Clipboard indisponível neste contexto.");
    }
  }
});

document.addEventListener("keydown", (e) => {
  if (e.key !== "Escape") return;
  const nfe = document.getElementById("nfe-overlay");
  if (nfe && !nfe.classList.contains("hidden")) return;
  post("close");
});

setInterval(tickClock, 1000);
initFamilies();
populateExtendedOps();
renderFiscalShop();

document.getElementById("btn-crm-save").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("customer", {
    jobId: id,
    name: document.getElementById("crm-name").value.trim(),
    phone: document.getElementById("crm-phone").value.trim(),
  });
});
document.getElementById("btn-vin-save").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("vin", { jobId: id, vin: document.getElementById("crm-vin").value.trim() });
});
document.getElementById("btn-prio-save").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("priority", { jobId: id, prio: document.getElementById("crm-prio").value });
});
document.getElementById("btn-bay-save").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("bay", { jobId: id, bay: document.getElementById("crm-bay").value.trim() });
});
document.getElementById("btn-note-add").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  const text = document.getElementById("crm-note").value.trim();
  if (!text) {
    showToast("error", "Digite o texto da nota.");
    return;
  }
  spartanAction("note", { jobId: id, text });
  document.getElementById("crm-note").value = "";
});
document.getElementById("btn-task-add").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  const title = document.getElementById("task-title").value.trim();
  if (!title) {
    showToast("error", "Título da tarefa vazio.");
    return;
  }
  spartanAction("task_add", { jobId: id, title });
  document.getElementById("task-title").value = "";
});
document.getElementById("btn-est-save").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("estimate", {
    jobId: id,
    labor: document.getElementById("est-labor").value,
    parts: document.getElementById("est-parts").value,
  });
});
document.getElementById("btn-shop-hours").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("shop_hours", { jobId: id, hours: document.getElementById("shop-hours").value });
});
document.getElementById("btn-paid-save").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("paid", { jobId: id, paid: document.getElementById("bill-paid").checked });
});
document.getElementById("btn-warranty").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("warranty", { jobId: id, days: document.getElementById("warranty-days").value });
});
document.getElementById("btn-diag-dtc").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  const code = document.getElementById("diag-dtc").value.trim();
  if (!code) return showToast("error", "Informe o código DTC.");
  spartanAction("diag_dtc", { jobId: id, code });
  document.getElementById("diag-dtc").value = "";
});
document.getElementById("btn-diag-finding").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  const line = document.getElementById("diag-finding").value.trim();
  if (!line) return showToast("error", "Descreva o achado.");
  spartanAction("diag_finding", { jobId: id, line });
  document.getElementById("diag-finding").value = "";
});
document.getElementById("btn-plan-add").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  const sku = document.getElementById("plan-sku").value;
  const qty = document.getElementById("plan-qty").value;
  spartanAction("plan_add", { jobId: id, sku, qty });
});
document.getElementById("btn-plan-rm").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  const idx = parseInt(document.getElementById("plan-rm-idx").value, 10);
  if (!idx || idx < 1) return showToast("error", "Índice inválido (1-based).");
  spartanAction("plan_remove", { jobId: id, index: idx });
});
document.getElementById("btn-plan-oil").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("plan_oil", { jobId: id });
});
document.getElementById("btn-plan-brake").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("plan_brake", { jobId: id });
});
document.getElementById("btn-plan-clear").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  if (confirm("Limpar todo o plano de peças desta OS?")) spartanAction("plan_clear", { jobId: id });
});
document.getElementById("btn-qc-reinspect").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("qc_reinspect", { jobId: id });
});
document.getElementById("btn-duplicate-os").addEventListener("click", () => {
  const id = requireSelectedJob();
  if (!id) return;
  spartanAction("duplicate", { jobId: id });
});

document.getElementById("btn-inv-receive").addEventListener("click", () => {
  const sku = document.getElementById("ops-sku-receive").value;
  const qty = document.getElementById("ops-qty-receive").value;
  if (!sku) return showToast("error", "Selecione um SKU.");
  spartanAction("inv_receive", { sku, qty });
});
document.getElementById("btn-inv-adjust").addEventListener("click", () => {
  const sku = document.getElementById("ops-sku-receive").value;
  if (!sku) return showToast("error", "Selecione um SKU.");
  spartanAction("inv_adjust", {
    sku,
    delta: document.getElementById("ops-delta").value,
    reason: document.getElementById("ops-reason").value.trim() || "ajuste",
  });
});
document.getElementById("btn-inv-cycle").addEventListener("click", () => {
  const sku = document.getElementById("ops-sku-receive").value;
  if (!sku) return showToast("error", "Selecione um SKU.");
  const v = document.getElementById("ops-counted").value;
  if (v === "") return showToast("error", "Informe a contagem física.");
  spartanAction("inv_cycle", { sku, counted: v });
});
document.getElementById("btn-inbound-pop").addEventListener("click", () => spartanAction("inbound_pop"));
document.getElementById("btn-inbound-clear").addEventListener("click", () => {
  if (confirm("Limpar toda a fila inbound?")) spartanAction("inbound_clear");
});
document.getElementById("btn-po").addEventListener("click", () => {
  const sku = document.getElementById("ops-sku-po").value;
  const qty = document.getElementById("ops-po-qty").value;
  if (!sku) return showToast("error", "Selecione um SKU para PO.");
  spartanAction("po", { sku, qty });
});

function fiscalJobArgs() {
  const id = requireSelectedJob();
  return id ? { jobId: id } : null;
}

document.getElementById("btn-fiscal-copy-shop").addEventListener("click", () => {
  postExtended("exportFiscalShopCard", {});
});
document.getElementById("btn-fiscal-save-doc").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("jobSetCustomerDocument", { ...a, doc: document.getElementById("fiscal-doc").value.trim() });
});
document.getElementById("btn-fiscal-save-email").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("jobSetCustomerEmail", { ...a, email: document.getElementById("fiscal-email").value.trim() });
});
document.getElementById("btn-fiscal-save-terms").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("jobSetPaymentTerms", { ...a, terms: document.getElementById("fiscal-terms").value.trim() });
});
document.getElementById("btn-fiscal-save-regime").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("jobSetTaxRegime", { ...a, regime: document.getElementById("fiscal-regime").value });
});
document.getElementById("btn-fiscal-cfop").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftSetCfop", { ...a, cfop: document.getElementById("fiscal-cfop").value.trim() });
});
document.getElementById("btn-fiscal-discount").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftSetDiscount", { ...a, amount: document.getElementById("fiscal-discount").value });
});
document.getElementById("btn-fiscal-notes").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftSetNotes", { ...a, notes: document.getElementById("fiscal-notes").value });
});
document.getElementById("btn-fiscal-draft-clear").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  if (confirm("Limpar rascunho fiscal?")) postExtended("nfDraftClear", a);
});
document.getElementById("btn-fiscal-add-sku").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftAddSkuLine", {
    ...a,
    sku: document.getElementById("fiscal-sku").value,
    qty: document.getElementById("fiscal-sku-qty").value,
  });
});
document.getElementById("btn-fiscal-add-svc").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftAddServiceLine", {
    ...a,
    description: document.getElementById("fiscal-svc-desc").value.trim() || "Serviço",
    qty: document.getElementById("fiscal-svc-qty").value,
    unit_price: document.getElementById("fiscal-svc-price").value,
  });
});
document.getElementById("btn-fiscal-import-plan").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftImportFromPartsPlan", a);
});
document.getElementById("btn-fiscal-import-labor").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftImportLaborFromEstimate", a);
});
document.getElementById("btn-fiscal-import-parts-est").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftImportPartsFromEstimate", a);
});
document.getElementById("btn-fiscal-rm-line").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfDraftRemoveLastLine", a);
});
document.getElementById("btn-fiscal-issue").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfIssue", a);
});
document.getElementById("btn-fiscal-void").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfVoidLast", a);
});
document.getElementById("btn-fiscal-copy-last").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("nfExportLastText", a);
});
document.getElementById("btn-fiscal-summary-os").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  postExtended("exportJobSummaryText", a);
});
document.getElementById("btn-fiscal-fill-me").addEventListener("click", () => {
  fetch(`https://${GetParentResourceName()}/getServerId`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: "{}",
  })
    .then((r) => r.json())
    .then((d) => {
      if (d && d.id != null) document.getElementById("fiscal-target-id").value = String(d.id);
    })
    .catch(() => {});
});
document.getElementById("btn-fiscal-deliver").addEventListener("click", () => {
  const a = fiscalJobArgs();
  if (!a) return;
  const tid = parseInt(document.getElementById("fiscal-target-id").value, 10);
  if (!tid || tid < 1) {
    showToast("error", "Informe o ID do servidor do cliente.");
    return;
  }
  fetch(`https://${GetParentResourceName()}/deliverNfe`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ jobId: a.jobId, targetId: tid }),
  }).catch(() => {});
});
document.getElementById("btn-ext-op-run").addEventListener("click", () => {
  const op = document.getElementById("ext-op-select").value;
  if (op) runExtendedOp(op);
});

document.getElementById("global-tool-grid").addEventListener("click", (ev) => {
  const t = ev.target.closest("[data-spartan]");
  if (!t) return;
  const k = t.getAttribute("data-spartan");
  if (k === "seed_demo") spartanAction("seed_demo");
  else if (k === "report_console") spartanAction("report_console");
  else if (k === "export_csv") spartanAction("export_csv");
});

["est-labor", "est-parts"].forEach((id) => {
  document.getElementById(id).addEventListener("input", () => {
    const l = Number(document.getElementById("est-labor").value) || 0;
    const p = Number(document.getElementById("est-parts").value) || 0;
    document.getElementById("est-total").textContent = "Total estimado: " + formatMoney(l + p);
  });
});

window.__SPARTAN_RECORD__ = {
  open() {
    document.getElementById("app").classList.remove("hidden");
    setTab("orders");
    tickClock();
  },
  bootstrap: applyBootstrap,
  refresh() {
    renderJobs();
    renderDetail();
    renderInventory();
    renderAudit();
    renderDashboard();
    renderFiscalShop();
    renderFiscalPreview();
    populateExtendedOps();
  },
  selectJob(id) {
    state.selectedId = id;
    renderJobs();
    renderDetail();
  },
  clickAction() {
    const b = document.getElementById("btn-action");
    if (b && !b.disabled) b.click();
  },
  setTab,
  showToast,
};
