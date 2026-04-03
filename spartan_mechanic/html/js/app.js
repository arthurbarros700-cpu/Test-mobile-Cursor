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

let state = {
  jobs: [],
  inventory: [],
  inbound: [],
  catalog: {},
  logs: [],
  selectedId: null,
  locale: {},
};

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
    orders: ["Ordens de serviço", "FSM completa, diagnóstico e plano de peças."],
    stock: ["Estoque Spartan", "Disponibilidade em tempo real após reservas por OS."],
    audit: ["Auditoria", "Rastreabilidade servidor — reservas, commits e transições."],
  };
  const t = titles[id] || titles.orders;
  document.getElementById("page-title").textContent = t[0];
  document.getElementById("page-desc").textContent = t[1];
}

function jobById(id) {
  return state.jobs.find((j) => j.id === id);
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

function renderDetail() {
  const card = document.getElementById("detail-card");
  const job = state.selectedId ? jobById(state.selectedId) : null;
  if (!job || job.state === JOB_STATE.CLOSED) {
    card.hidden = true;
    return;
  }
  card.hidden = false;
  document.getElementById("detail-id").textContent = job.id + " · " + job.plate;
  renderStateTrack(job.state);
  if (job.diagnostic) {
    document.getElementById("detail-dtc").textContent = "DTC: " + (job.diagnostic.dtc || []).join(", ");
    document.getElementById("detail-findings").textContent = (job.diagnostic.findings || []).join("\n");
  } else {
    document.getElementById("detail-dtc").textContent = "";
    document.getElementById("detail-findings").textContent = "Aguardando diagnóstico.";
  }
  const ul = document.getElementById("detail-parts");
  ul.innerHTML = "";
  for (const line of job.parts_plan || []) {
    const def = state.catalog[line.sku] || {};
    const li = document.createElement("li");
    li.innerHTML = `<span class="sku">${line.sku}</span>×${line.qty} — ${def.name || line.sku}`;
    ul.appendChild(li);
  }
  const act = nextAction(job);
  const btn = document.getElementById("btn-action");
  btn.onclick = null;
  if (!act) {
    btn.textContent = "—";
    btn.disabled = true;
    return;
  }
  btn.disabled = false;
  btn.textContent = act.label;
  btn.onclick = () => {
    if (act.tick) post("tickLabor", { jobId: job.id });
    else post("transition", { jobId: job.id, newState: act.next });
  };
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
  renderJobs();
  renderDetail();
  renderInventory();
  renderAudit();
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
    state.jobs = state.jobs.filter((j) => j.id !== msg.jobId);
    if (state.selectedId === msg.jobId) state.selectedId = null;
    renderJobs();
    renderDetail();
  }
});

document.addEventListener("keydown", (e) => {
  if (e.key === "Escape") post("close");
});

setInterval(tickClock, 1000);
initFamilies();
