/**
 * Demo longa — simula uso real de todas as áreas do painel (marketing / gravação).
 * Duração ~2m05s (tempo real). Puppeteer grava até __DEMO_DONE__.
 */

const app = document.getElementById("app");
const fakeSelect = document.getElementById("fakeSelect");
const dropdown = document.getElementById("dropdown");
const ephemeral = document.getElementById("ephemeral");
const ephTitle = document.getElementById("ephTitle");
const ephText = document.getElementById("ephText");
const ephBtns = document.getElementById("ephBtns");
const ephUserRow = document.getElementById("ephUserRow");
const ovMta = document.getElementById("ovMta");
const ovStaffPost = document.getElementById("ovStaffPost");
const ovAudit = document.getElementById("ovAudit");
const ovInvites = document.getElementById("ovInvites");
const ovRoles = document.getElementById("ovRoles");
const ovStats = document.getElementById("ovStats");
const outro = document.getElementById("outro");
const chapterBar = document.getElementById("chapterBar");
const chapterText = document.getElementById("chapterText");
const toastStack = document.getElementById("toastStack");
const modalBackdrop = document.getElementById("modalBackdrop");
const modalTitle = document.getElementById("modalTitle");
const modalFields = document.getElementById("modalFields");
const toolbarTitle = document.getElementById("toolbarTitle");
const toolbarPill = document.querySelector(".d-toolbar__pill");
const tabCurl = document.getElementById("tabCurl");
const tabLua = document.getElementById("tabLua");
const codeInner = document.getElementById("codeInner");
const gwMsg = document.getElementById("gwMsg");
const ticketUserMsg = document.getElementById("ticketUserMsg");
const ticketCloseDemo = document.getElementById("ticketCloseDemo");

const LUA_SNIPPET = `<span class="k">discordAnnounce</span>(<span class="s">"Evento ao vivo"</span>,
  <span class="s">"Corrida cidade — prémio $50.000"</span>)`;

const POS = {
  select: { x: 420, y: 458 },
  opt: {
    server: { x: 420, y: 532 },
    mod: { x: 420, y: 564 },
    community: { x: 420, y: 596 },
    tickets: { x: 420, y: 628 },
    mta: { x: 420, y: 660 },
    tools: { x: 420, y: 692 },
    info: { x: 420, y: 724 },
  },
};

function setCursor(x, y) {
  app.style.setProperty("--cx", `${x}px`);
  app.style.setProperty("--cy", `${y}px`);
}

function setChapter(text) {
  chapterText.textContent = text;
  chapterBar.classList.add("chapter-bar--on");
}

function hideChapter() {
  chapterBar.classList.remove("chapter-bar--on");
}

function toast(msg) {
  const el = document.createElement("div");
  el.className = "toast";
  el.textContent = msg;
  toastStack.appendChild(el);
  setTimeout(() => el.remove(), 3200);
}

function openDropdown() {
  fakeSelect.classList.add("d-select--open");
  dropdown.classList.add("d-dropdown--open");
}

function closeDropdown() {
  fakeSelect.classList.remove("d-select--open");
  dropdown.classList.remove("d-dropdown--open");
  document.querySelectorAll(".d-opt").forEach((el) => el.classList.remove("d-opt--hover"));
}

function hoverOption(key) {
  document.querySelectorAll(".d-opt").forEach((el) => {
    el.classList.toggle("d-opt--hover", el.dataset.opt === key);
  });
}

function showEphemeral(title, text, buttons, { showUserRow = false } = {}) {
  ephTitle.textContent = title;
  ephText.textContent = text;
  ephBtns.innerHTML = "";
  ephUserRow.hidden = !showUserRow;
  for (const b of buttons) {
    const btn = document.createElement("button");
    btn.className = `d-btn d-btn--${b.style}`;
    btn.textContent = b.label;
    btn.id = b.id || "";
    ephBtns.appendChild(btn);
  }
  ephemeral.classList.add("d-ephemeral--visible");
}

function hideEphemeral() {
  ephemeral.classList.remove("d-ephemeral--visible");
  ephUserRow.hidden = true;
}

function clearChannelActive() {
  document.querySelectorAll(".d-ch").forEach((c) => c.classList.remove("d-ch--active"));
  document.querySelectorAll(".channel-view").forEach((v) => {
    v.classList.remove("channel-view--active");
    v.hidden = true;
  });
}

function switchChannel(chEl, cvEl, title, pill) {
  clearChannelActive();
  chEl.classList.add("d-ch--active");
  cvEl.hidden = false;
  cvEl.classList.add("channel-view--active");
  toolbarTitle.textContent = title;
  if (toolbarPill && pill) toolbarPill.textContent = pill;
}

function pulseFirstButton() {
  const b = ephBtns.querySelector(".d-btn");
  if (b) {
    b.classList.add("d-btn--pulse");
    setTimeout(() => b.classList.remove("d-btn--pulse"), 600);
  }
}

function pulseBtnByText(text) {
  const btns = ephBtns.querySelectorAll(".d-btn");
  btns.forEach((b) => {
    if (b.textContent.includes(text)) {
      b.classList.add("d-btn--pulse");
      setTimeout(() => b.classList.remove("d-btn--pulse"), 600);
    }
  });
}

function showModal(title, fields) {
  modalTitle.textContent = title;
  modalFields.innerHTML = "";
  for (const f of fields) {
    const wrap = document.createElement("div");
    wrap.className = "modal__field";
    const lab = document.createElement("label");
    lab.textContent = f.label;
    const inp = document.createElement(f.multiline ? "textarea" : "input");
    inp.className = "modal__input";
    if (f.multiline) {
      inp.rows = 3;
    }
    inp.value = f.value || "";
    wrap.append(lab, inp);
    modalFields.appendChild(wrap);
  }
  modalBackdrop.classList.add("modal-backdrop--on");
}

function hideModal() {
  modalBackdrop.classList.remove("modal-backdrop--on");
}

function setCodeTab(mode) {
  const curlOn = mode === "curl";
  tabCurl.classList.toggle("code-tab--on", curlOn);
  tabLua.classList.toggle("code-tab--on", !curlOn);
  if (curlOn) {
    codeInner.innerHTML = `<span class="k">curl</span> -X POST http://<span class="s">IP:3750</span>/mta/announce \\
  -H <span class="s">"x-bridge-secret: ••••"</span> \\
  -H <span class="s">"Content-Type: application/json"</span> \\
  -d <span class="s">'{"title":"Evento","description":"Servidor online!"}'</span>`;
  } else {
    codeInner.innerHTML = LUA_SNIPPET;
  }
}

function bumpReaction(idx, delta) {
  const row = document.getElementById("pollReactions");
  if (!row) return;
  const spans = row.querySelectorAll(".d-react__n");
  const el = spans[idx];
  if (!el) return;
  const n = parseInt(el.textContent, 10) + delta;
  el.textContent = String(n);
  el.closest(".d-react")?.classList.add("d-react--pulse");
  setTimeout(() => el.closest(".d-react")?.classList.remove("d-react--pulse"), 400);
}

/** Ordenado por tempo (s) */
const SCRIPT = [
  { t: 0, run: () => {
    app.dataset.phase = "intro";
    app.dataset.cursor = "off";
    hideChapter();
  }},
  { t: 4.0, run: () => {
    app.dataset.phase = "discord";
    setChapter("Arquitetura modular — painel único");
  }},
  { t: 6.5, run: () => {
    app.dataset.cursor = "on";
    setCursor(120, 320);
  }},
  { t: 8.0, run: () => setCursor(POS.select.x, POS.select.y) },
  { t: 8.6, run: () => openDropdown() },
  { t: 9.1, run: () => { hoverOption("info"); setCursor(POS.opt.info.x, POS.opt.info.y); }},
  { t: 9.8, run: () => {
    closeDropdown();
    showEphemeral(
      "Informação",
      "Módulos: panel-router, server, moderation, community, tickets, mta, tools. Ponte na porta configurável · header x-bridge-secret.",
      [{ label: "Fechar", style: "secondary" }]
    );
  }},
  { t: 13.0, run: () => hideEphemeral() },

  { t: 13.5, run: () => setChapter("Servidor — setup e regras") },
  { t: 14.0, run: () => { setCursor(POS.select.x, POS.select.y); openDropdown(); }},
  { t: 14.6, run: () => { hoverOption("server"); setCursor(POS.opt.server.x, POS.opt.server.y); }},
  { t: 15.3, run: () => {
    closeDropdown();
    showEphemeral(
      "Servidor & estrutura",
      "Cria categorias, canais, cargos e permissões base — alinhado a comunidades MTA.",
      [
        { label: "Setup completo do servidor", style: "primary", id: "btnSetup" },
        { label: "Publicar modelo de regras", style: "secondary" },
        { label: "Reaplicar permissões base", style: "secondary" },
      ]
    );
  }},
  { t: 17.0, run: () => pulseBtnByText("Setup completo") },
  { t: 17.8, run: () => {
    hideEphemeral();
    showModal("Setup em curso", [
      { label: "Estado", value: "A sincronizar categorias e cargos…", multiline: true },
    ]);
  }},
  { t: 19.5, run: () => { hideModal(); toast("✓ Setup concluído — IDs guardados em storage"); }},
  { t: 20.2, run: () => {
    showEphemeral(
      "Servidor & estrutura",
      "Publicar o modelo de regras no canal dedicado.",
      [{ label: "Publicar modelo de regras", style: "secondary" }]
    );
  }},
  { t: 21.5, run: () => pulseBtnByText("Publicar") },
  { t: 22.0, run: () => {
    showEphemeral("Publicado", "Mensagem de regras enviada para #regras.", [{ label: "OK", style: "primary" }]);
  }},
  { t: 23.0, run: () => {
    hideEphemeral();
    switchChannel(
      document.getElementById("chRegras"),
      document.getElementById("cvRegras"),
      "regras",
      "Somente leitura · Todos"
    );
  }},
  { t: 25.5, run: () => {
    switchChannel(
      document.getElementById("chPanel"),
      document.getElementById("cvPanel"),
      "painel-bot",
      "Canal privado · Staff"
    );
    openDropdown();
    hoverOption("server");
    setCursor(POS.opt.server.x, POS.opt.server.y);
  }},
  { t: 26.2, run: () => {
    closeDropdown();
    showEphemeral(
      "Servidor & estrutura",
      "Reaplicar permissões sem recriar canais.",
      [{ label: "Reaplicar permissões base", style: "secondary" }]
    );
  }},
  { t: 27.3, run: () => pulseFirstButton() },
  { t: 28.0, run: () => { hideEphemeral(); toast("✓ Permissões base reaplicadas"); }},

  { t: 29.5, run: () => setChapter("MTA — ponte HTTP e canais") },
  { t: 30.0, run: () => {
    switchChannel(
      document.getElementById("chAnnounce"),
      document.getElementById("cvAnnounce"),
      "anúncios",
      "Anúncios · Staff"
    );
  }},
  { t: 32.0, run: () => toast("✓ Anúncio publicado via POST /mta/announce") },
  { t: 34.0, run: () => { ovMta.classList.add("overlay--on"); setCodeTab("curl"); }},
  { t: 38.0, run: () => setCodeTab("lua") },
  { t: 41.5, run: () => ovMta.classList.remove("overlay--on") },
  { t: 42.5, run: () => ovStaffPost.classList.add("overlay--on") },
  { t: 45.5, run: () => ovStaffPost.classList.remove("overlay--on") },
  { t: 46.5, run: () => {
    switchChannel(
      document.getElementById("chStaff"),
      document.getElementById("cvStaff"),
      "staff-alertas",
      "Log interno · Staff"
    );
  }},

  { t: 49.0, run: () => setChapter("Ferramentas staff — dados e exportação") },
  { t: 49.5, run: () => {
    switchChannel(
      document.getElementById("chPanel"),
      document.getElementById("cvPanel"),
      "painel-bot",
      "Canal privado · Staff"
    );
    setCursor(POS.select.x, POS.select.y);
    openDropdown();
  }},
  { t: 50.2, run: () => { hoverOption("tools"); setCursor(POS.opt.tools.x, POS.opt.tools.y); }},
  { t: 51.0, run: () => {
    closeDropdown();
    showEphemeral(
      "Ferramentas staff",
      "Estatísticas, auditoria em RAM, convites, export de cargos e embed builder guiado.",
      [
        { label: "Estatísticas do servidor", style: "secondary" },
        { label: "Auditoria (últimas ações)", style: "secondary" },
        { label: "Top convites", style: "secondary" },
        { label: "Exportar lista de cargos", style: "secondary" },
        { label: "Construtor de embed (3 passos)", style: "primary" },
      ]
    );
  }},
  { t: 53.5, run: () => { hideEphemeral(); ovStats.classList.add("overlay--on"); }},
  { t: 57.0, run: () => { ovStats.classList.remove("overlay--on"); ovAudit.classList.add("overlay--on"); }},
  { t: 60.0, run: () => { ovAudit.classList.remove("overlay--on"); ovInvites.classList.add("overlay--on"); }},
  { t: 63.0, run: () => { ovInvites.classList.remove("overlay--on"); ovRoles.classList.add("overlay--on"); }},
  { t: 66.0, run: () => ovRoles.classList.remove("overlay--on") },
  { t: 66.8, run: () => {
    showModal("Embed — passo 1/3", [
      { label: "Título", value: "Manutenção programada" },
      { label: "Cor hex", value: "ed4245" },
    ]);
  }},
  { t: 68.8, run: () => { hideModal(); showModal("Embed — passo 2/3", [{ label: "Descrição", value: "Servidor offline 03:00–04:00 — acompanhem #anúncios.", multiline: true }]); }},
  { t: 71.0, run: () => { hideModal(); showModal("Embed — passo 3/3", [{ label: "Rodapé", value: "Equipa MTA Panel" }]); }},
  { t: 73.0, run: () => { hideModal(); toast("✓ Pré-visualização OK → publicado no canal"); }},

  { t: 75.0, run: () => setChapter("Moderação — fluxo completo") },
  { t: 75.5, run: () => { openDropdown(); hoverOption("mod"); setCursor(POS.opt.mod.x, POS.opt.mod.y); }},
  { t: 76.3, run: () => {
    closeDropdown();
    showEphemeral(
      "Moderação",
      "Selecione um utilizador; depois kick, ban ou timeouts. Tudo registado em #staff-alertas.",
      [
        { label: "Selecionar utilizador…", style: "secondary" },
        { label: "Limpar mensagens (canal do painel)", style: "danger" },
      ]
    );
  }},
  { t: 78.5, run: () => pulseBtnByText("Selecionar") },
  { t: 79.2, run: () => {
    showEphemeral(
      "Utilizador selecionado",
      "Ações para PlayerOne#2048:",
      [
        { label: "Expulsar", style: "danger" },
        { label: "Timeout 1h", style: "secondary" },
        { label: "Timeout 24h", style: "secondary" },
        { label: "Remover timeout", style: "success" },
        { label: "Banir", style: "danger" },
      ],
      { showUserRow: true }
    );
  }},
  { t: 81.5, run: () => pulseBtnByText("Timeout 24h") },
  { t: 82.5, run: () => { hideEphemeral(); toast("✓ Timeout 24h aplicado · registo enviado"); }},
  { t: 84.0, run: () => {
    switchChannel(
      document.getElementById("chStaff"),
      document.getElementById("cvStaff"),
      "staff-alertas",
      "Log interno · Staff"
    );
  }},

  { t: 87.0, run: () => setChapter("Comunidade — votação e sorteio") },
  { t: 87.5, run: () => {
    switchChannel(
      document.getElementById("chGeral"),
      document.getElementById("cvGeral"),
      "geral",
      "Chat geral"
    );
    gwMsg.hidden = true;
  }},
  { t: 89.5, run: () => {
    switchChannel(
      document.getElementById("chPanel"),
      document.getElementById("cvPanel"),
      "painel-bot",
      "Canal privado · Staff"
    );
    openDropdown();
    hoverOption("community");
    setCursor(POS.opt.community.x, POS.opt.community.y);
  }},
  { t: 90.5, run: () => {
    closeDropdown();
    showEphemeral(
      "Comunidade",
      "Modal de votação → mensagem com reações. Sorteio com botão Participar.",
      [
        { label: "Votação rápida (👍👎)", style: "primary" },
        { label: "Sorteio (1 vencedor)", style: "primary" },
        { label: "Mensagem de encorajamento", style: "secondary" },
      ]
    );
  }},
  { t: 92.5, run: () => pulseBtnByText("Votação") },
  { t: 93.2, run: () => {
    hideEphemeral();
    showModal("Votação rápida", [
      { label: "Título", value: "Economia v2 — aprovam o equilíbrio?" },
      { label: "Descrição", value: "Reajam com 👍 👎 ou 👀 neutro.", multiline: true },
    ]);
  }},
  { t: 95.5, run: () => {
    hideModal();
    switchChannel(
      document.getElementById("chGeral"),
      document.getElementById("cvGeral"),
      "geral",
      "Chat geral"
    );
    toast("✓ Votação publicada em #geral");
  }},
  { t: 97.5, run: () => bumpReaction(0, 1) },
  { t: 98.2, run: () => bumpReaction(2, 1) },
  { t: 99.0, run: () => bumpReaction(0, 2) },
  { t: 100.5, run: () => {
    switchChannel(
      document.getElementById("chPanel"),
      document.getElementById("cvPanel"),
      "painel-bot",
      "Canal privado · Staff"
    );
    openDropdown();
    hoverOption("community");
    setCursor(POS.opt.community.x, POS.opt.community.y);
  }},
  { t: 101.3, run: () => {
    closeDropdown();
    showEphemeral("Comunidade", "Sorteio com duração em horas.", [
      { label: "Sorteio (1 vencedor)", style: "primary" },
    ]);
  }},
  { t: 102.2, run: () => {
    hideEphemeral();
    showModal("Novo sorteio", [
      { label: "Prémio / título", value: "VIP 7 dias" },
      { label: "Duração (horas)", value: "24" },
    ]);
  }},
  { t: 104.0, run: () => {
    hideModal();
    gwMsg.hidden = false;
    toast("✓ Sorteio ativo — jogadores clicam Participar");
  }},
  { t: 105.5, run: () => {
    const btn = gwMsg.querySelector(".d-btn--success");
    btn?.classList.add("d-btn--pulse");
    setTimeout(() => btn?.classList.remove("d-btn--pulse"), 600);
  }},

  { t: 107.5, run: () => setChapter("Tickets — suporte 1:1") },
  { t: 108.0, run: () => {
    switchChannel(
      document.getElementById("chPanel"),
      document.getElementById("cvPanel"),
      "painel-bot",
      "Canal privado · Staff"
    );
    openDropdown();
    hoverOption("tickets");
    setCursor(POS.opt.tickets.x, POS.opt.tickets.y);
  }},
  { t: 109.0, run: () => {
    closeDropdown();
    showEphemeral(
      "Tickets",
      "Canal privado ticket-userid · menção @Staff · fecho com botão.",
      [
        { label: "Abrir ticket de suporte", style: "primary" },
        { label: "Fechar este ticket", style: "danger" },
      ]
    );
  }},
  { t: 110.8, run: () => pulseBtnByText("Abrir ticket") },
  { t: 111.5, run: () => {
    hideEphemeral();
    ticketUserMsg.hidden = true;
    switchChannel(
      document.getElementById("chTicket"),
      document.getElementById("cvTicket"),
      "ticket-player",
      "Ticket · Jogador"
    );
    toast("✓ Canal ticket-… criado");
  }},
  { t: 114.0, run: () => { ticketUserMsg.hidden = false; }},
  { t: 116.0, run: () => {
    ticketCloseDemo?.classList.add("d-btn--pulse");
    setTimeout(() => ticketCloseDemo?.classList.remove("d-btn--pulse"), 600);
  }},
  { t: 117.0, run: () => { toast("✓ Ticket fechado · canal eliminado"); }},
  { t: 118.5, run: () => {
    switchChannel(
      document.getElementById("chPanel"),
      document.getElementById("cvPanel"),
      "painel-bot",
      "Canal privado · Staff"
    );
    openDropdown();
    hoverOption("mta");
    setCursor(POS.opt.mta.x, POS.opt.mta.y);
  }},
  { t: 119.5, run: () => {
    closeDropdown();
    showEphemeral(
      "MTA & anúncios",
      "Teste no #anúncios e documentação dos endpoints /mta/announce e /mta/staff.",
      [
        { label: "Enviar anúncio de teste", style: "primary" },
        { label: "Como ligar o MTA", style: "secondary" },
      ]
    );
  }},
  { t: 122.5, run: () => hideEphemeral() },

  { t: 123.5, run: () => {
    app.dataset.cursor = "off";
    hideChapter();
    outro.classList.add("outro--on");
  }},
];

const DEMO_END_S = 128;

let start = null;
let idx = 0;

function tick() {
  if (start === null) start = Date.now();
  const elapsed = (Date.now() - start) / 1000;

  while (idx < SCRIPT.length && elapsed >= SCRIPT[idx].t) {
    SCRIPT[idx].run();
    idx += 1;
  }

  if (elapsed < DEMO_END_S) {
    requestAnimationFrame(tick);
  } else {
    window.__DEMO_DONE__ = true;
  }
}

requestAnimationFrame(tick);
