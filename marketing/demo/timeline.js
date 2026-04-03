/**
 * Demo cinematográfica para gravação (Puppeteer + FFmpeg).
 * Duração total ~42s em 60fps lógico (avanço por tempo real).
 */

const $ = (id) => document.getElementById(id);

const cursor = $("cursor");
const app = document.getElementById("app");
const fakeSelect = $("fakeSelect");
const dropdown = $("dropdown");
const ephemeral = $("ephemeral");
const ephTitle = $("ephTitle");
const ephText = $("ephText");
const ephBtns = $("ephBtns");
const ovMta = $("ovMta");
const ovStats = $("ovStats");
const outro = $("outro");

function setCursor(x, y) {
  app.style.setProperty("--cx", `${x}px`);
  app.style.setProperty("--cy", `${y}px`);
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

function showEphemeral(title, text, buttons) {
  ephTitle.textContent = title;
  ephText.textContent = text;
  ephBtns.innerHTML = "";
  for (const b of buttons) {
    const btn = document.createElement("button");
    btn.className = `d-btn d-btn--${b.style}`;
    btn.textContent = b.label;
    ephBtns.appendChild(btn);
  }
  ephemeral.classList.add("d-ephemeral--visible");
}

function hideEphemeral() {
  ephemeral.classList.remove("d-ephemeral--visible");
}

/** Posições aproximadas (1920x1080 layout) — ajustadas ao flex do mock */
const POS = {
  selectCenter: { x: 420, y: 458 },
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

const SCRIPT = [
  { t: 0, run: () => {
    app.dataset.phase = "intro";
    app.dataset.cursor = "off";
  }},
  { t: 3.2, run: () => {
    app.dataset.phase = "discord";
  }},
  { t: 4.5, run: () => {
    app.dataset.cursor = "on";
    setCursor(200, 400);
  }},
  { t: 5.0, run: () => setCursor(POS.selectCenter.x, POS.selectCenter.y) },
  { t: 5.6, run: () => openDropdown() },
  { t: 6.0, run: () => hoverOption("mod") },
  { t: 6.5, run: () => setCursor(POS.opt.mod.x, POS.opt.mod.y) },
  { t: 7.2, run: () => {
    closeDropdown();
    showEphemeral(
      "Moderação",
      "Escolha um utilizador ou limpe mensagens neste canal. Ações instantâneas com registo no canal de staff.",
      [
        { label: "Selecionar utilizador…", style: "secondary" },
        { label: "Limpar mensagens", style: "danger" },
      ]
    );
  }},
  { t: 9.5, run: () => hideEphemeral() },
  { t: 10.0, run: () => {
    setCursor(POS.selectCenter.x, POS.selectCenter.y);
    openDropdown();
  }},
  { t: 10.5, run: () => {
    setCursor(POS.opt.community.x, POS.opt.community.y);
    hoverOption("community");
  }},
  { t: 11.2, run: () => {
    closeDropdown();
    showEphemeral(
      "Comunidade",
      "Votações com reações, sorteios com participação por botão e mensagens motivacionais — engajamento sem comandos.",
      [
        { label: "Votação rápida", style: "primary" },
        { label: "Sorteio", style: "primary" },
        { label: "Encorajamento", style: "secondary" },
      ]
    );
  }},
  { t: 14.0, run: () => hideEphemeral() },
  { t: 14.5, run: () => {
    setCursor(POS.selectCenter.x, POS.selectCenter.y);
    openDropdown();
  }},
  { t: 15.0, run: () => {
    setCursor(POS.opt.mta.x, POS.opt.mta.y);
    hoverOption("mta");
  }},
  { t: 15.6, run: () => {
    closeDropdown();
    showEphemeral(
      "MTA & anúncios",
      "O servidor de jogo envia eventos para o Discord via HTTP seguro — anúncios e alertas staff em tempo real.",
      [
        { label: "Anúncio de teste", style: "primary" },
        { label: "Documentação da API", style: "secondary" },
      ]
    );
  }},
  { t: 17.5, run: () => {
    hideEphemeral();
    ovMta.classList.add("overlay--on");
  }},
  { t: 21.0, run: () => ovMta.classList.remove("overlay--on") },
  { t: 21.5, run: () => {
    setCursor(POS.selectCenter.x, POS.selectCenter.y);
    openDropdown();
  }},
  { t: 22.0, run: () => {
    setCursor(POS.opt.tools.x, POS.opt.tools.y);
    hoverOption("tools");
  }},
  { t: 22.6, run: () => {
    closeDropdown();
    showEphemeral(
      "Ferramentas staff",
      "Estatísticas ao vivo, buffer de auditoria, ranking de convites, export de cargos e construtor de embeds em passos guiados.",
      [
        { label: "Estatísticas", style: "secondary" },
        { label: "Auditoria", style: "secondary" },
        { label: "Construtor de embed", style: "primary" },
      ]
    );
  }},
  { t: 25.5, run: () => {
    ovStats.classList.add("overlay--on");
  }},
  { t: 28.0, run: () => {
    ovStats.classList.remove("overlay--on");
    hideEphemeral();
  }},
  { t: 28.6, run: () => {
    setCursor(POS.selectCenter.x, POS.selectCenter.y);
    openDropdown();
  }},
  { t: 29.1, run: () => {
    setCursor(POS.opt.tickets.x, POS.opt.tickets.y);
    hoverOption("tickets");
  }},
  { t: 29.8, run: () => {
    closeDropdown();
    showEphemeral(
      "Tickets",
      "Canais privados por jogador, menção automática à equipa e fecho com um clique — suporte profissional integrado.",
      [
        { label: "Abrir ticket", style: "primary" },
        { label: "Fechar ticket", style: "danger" },
      ]
    );
  }},
  { t: 33.0, run: () => hideEphemeral() },
  { t: 33.5, run: () => {
    setCursor(POS.selectCenter.x, POS.selectCenter.y);
    openDropdown();
  }},
  { t: 34.0, run: () => {
    setCursor(POS.opt.server.x, POS.opt.server.y);
    hoverOption("server");
  }},
  { t: 34.6, run: () => {
    closeDropdown();
    showEphemeral(
      "Servidor & estrutura",
      "Um clique cria categorias, canais, cargos e permissões alinhadas ao teu servidor MTA — pronto para produção.",
      [
        { label: "Setup completo", style: "primary" },
        { label: "Publicar regras", style: "secondary" },
      ]
    );
  }},
  { t: 37.0, run: () => hideEphemeral() },
  { t: 37.5, run: () => {
    app.dataset.cursor = "off";
    outro.classList.add("outro--on");
  }},
];

const DEMO_END_S = 46;

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
