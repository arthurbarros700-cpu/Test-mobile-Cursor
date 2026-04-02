const app = document.getElementById("app");
const titleEl = document.getElementById("title");
const subtitleEl = document.getElementById("subtitle");
const metaWorkshopEl = document.getElementById("metaWorkshop");
const metaPlateEl = document.getElementById("metaPlate");
const metaMileageEl = document.getElementById("metaMileage");
const componentsEl = document.getElementById("components");
const tierSelectEl = document.getElementById("tierSelect");
const quoteBoxEl = document.getElementById("quoteBox");
const stockListEl = document.getElementById("stockList");
const quotesListEl = document.getElementById("quotesList");
const btnClose = document.getElementById("btnClose");
const btnQuote = document.getElementById("btnQuote");
const btnRefresh = document.getElementById("btnRefresh");
const btnStartRepair = document.getElementById("btnStartRepair");

let panelData = null;
let currentQuote = null;
const selectedComponents = new Set();

const severityText = {
    ideal: "Ideal",
    atencao: "Atencao",
    grave: "Grave",
    critico: "Critico"
};

function money(v) {
    return `R$ ${Number(v || 0).toLocaleString("pt-BR")}`;
}

function post(action, payload = {}) {
    return fetch(`https://${GetParentResourceName()}/${action}`, {
        method: "POST",
        headers: { "Content-Type": "application/json; charset=UTF-8" },
        body: JSON.stringify(payload)
    }).then((r) => r.json());
}

function clearElement(el) {
    while (el.firstChild) {
        el.removeChild(el.firstChild);
    }
}

function renderMeta() {
    if (!panelData) {
        return;
    }
    titleEl.textContent = panelData.title || "Ultra Mechanic Pro";
    subtitleEl.textContent = panelData.subtitle || "";
    metaWorkshopEl.textContent = panelData.workshop?.name || "-";
    metaPlateEl.textContent = panelData.vehicle?.plate || "-";
    metaMileageEl.textContent = Number(panelData.vehicle?.mileage || 0).toLocaleString("pt-BR", {
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    });
}

function renderComponents() {
    clearElement(componentsEl);
    const components = panelData?.components || [];

    if (!components.length) {
        componentsEl.innerHTML = "<p>Sem dados de componentes.</p>";
        return;
    }

    components.forEach((entry) => {
        const row = document.createElement("div");
        row.className = "component-row";

        const left = document.createElement("div");
        left.className = "component-title";
        left.innerHTML = `<strong>${entry.label}</strong><span>${entry.itemLabel}</span>`;

        const health = document.createElement("div");
        health.className = "health";
        health.textContent = `${entry.health}%`;

        const badge = document.createElement("div");
        badge.className = `badge b-${entry.severity || "ideal"}`;
        badge.textContent = severityText[entry.severity] || "Status";

        const checkWrap = document.createElement("div");
        const input = document.createElement("input");
        input.type = "checkbox";
        input.checked = selectedComponents.has(entry.id);
        input.onchange = () => {
            if (input.checked) {
                selectedComponents.add(entry.id);
            } else {
                selectedComponents.delete(entry.id);
            }
        };
        checkWrap.appendChild(input);

        row.appendChild(left);
        row.appendChild(health);
        row.appendChild(badge);
        row.appendChild(checkWrap);
        componentsEl.appendChild(row);

        if (entry.recommend && !selectedComponents.has(entry.id)) {
            selectedComponents.add(entry.id);
            input.checked = true;
        }
    });
}

function renderTiers() {
    clearElement(tierSelectEl);
    const tiers = panelData?.tiers || [];
    tiers.forEach((tier, index) => {
        const opt = document.createElement("option");
        opt.value = tier.id;
        opt.textContent = `${tier.label} (+${tier.restore}%)`;
        if (index === 1 || tier.id === "pro") {
            opt.selected = true;
        }
        tierSelectEl.appendChild(opt);
    });
}

function renderStock() {
    clearElement(stockListEl);
    const stock = panelData?.stock || [];
    if (!stock.length) {
        stockListEl.innerHTML = "<p>Sem itens em estoque.</p>";
        return;
    }

    stock.forEach((entry) => {
        const row = document.createElement("div");
        row.className = "stock-row-item";

        const title = document.createElement("div");
        title.innerHTML = `<strong>${entry.label}</strong><small>${entry.item}</small>`;

        const qty = document.createElement("div");
        qty.textContent = `Qtd: ${entry.amount}`;

        const price = document.createElement("div");
        price.textContent = money(entry.price);

        const button = document.createElement("button");
        button.className = "btn";
        button.textContent = "+1";
        button.onclick = async () => {
            button.disabled = true;
            try {
                await post("orderStock", { item: entry.item, amount: 1 });
                await refreshPanel();
            } finally {
                button.disabled = false;
            }
        };

        row.appendChild(title);
        row.appendChild(qty);
        row.appendChild(price);
        row.appendChild(button);
        stockListEl.appendChild(row);
    });
}

function renderQuotesHistory() {
    clearElement(quotesListEl);
    const quotes = panelData?.quotes || [];
    if (!quotes.length) {
        quotesListEl.innerHTML = "<p>Nenhum orcamento salvo.</p>";
        return;
    }

    quotes.forEach((quote) => {
        const row = document.createElement("div");
        row.className = "quote-row";

        row.innerHTML = `
            <div><strong>#${quote.id}</strong></div>
            <div>${quote.tier}</div>
            <div>${money(quote.totalPrice)}</div>
        `;
        row.onclick = async () => {
            currentQuote = quote;
            btnStartRepair.disabled = false;
            renderQuoteBox();
        };
        quotesListEl.appendChild(row);
    });
}

function renderQuoteBox() {
    clearElement(quoteBoxEl);
    if (!currentQuote) {
        quoteBoxEl.innerHTML = "<p>Sem orcamento gerado.</p>";
        btnStartRepair.disabled = true;
        return;
    }

    if (currentQuote.lines && currentQuote.lines.length) {
        currentQuote.lines.forEach((line) => {
            const div = document.createElement("div");
            div.className = "quote-line";
            div.innerHTML = `<span>${line.label} (${line.from}% -> ${line.to}%)</span><strong>${money(line.price)}</strong>`;
            quoteBoxEl.appendChild(div);
        });
    }

    const totals = document.createElement("div");
    totals.className = "quote-totals";
    totals.innerHTML = `
        <div>Total: <strong>${money(currentQuote.totalPrice)}</strong></div>
        <div>Duracao estimada: <strong>${currentQuote.totalDuration || 0}s</strong></div>
        <div>Nivel: <strong>${currentQuote.tier || "-"}</strong></div>
    `;
    quoteBoxEl.appendChild(totals);
    btnStartRepair.disabled = false;
}

async function refreshPanel() {
    const response = await post("refresh", {});
    if (response?.ok && response.payload) {
        panelData = response.payload;
        currentQuote = null;
        selectedComponents.clear();
        renderAll();
    }
}

function renderAll() {
    renderMeta();
    renderComponents();
    renderTiers();
    renderStock();
    renderQuotesHistory();
    renderQuoteBox();
}

btnClose.onclick = () => {
    post("close", {});
};

btnRefresh.onclick = async () => {
    btnRefresh.disabled = true;
    try {
        await refreshPanel();
    } finally {
        btnRefresh.disabled = false;
    }
};

btnQuote.onclick = async () => {
    btnQuote.disabled = true;
    try {
        const tier = tierSelectEl.value || "pro";
        const components = Array.from(selectedComponents);
        const response = await post("createQuote", { tier, components });
        if (response?.ok && response.payload?.quote) {
            currentQuote = response.payload.quote;
            renderQuoteBox();
            await refreshPanel();
        }
    } finally {
        btnQuote.disabled = false;
    }
};

btnStartRepair.onclick = async () => {
    if (!currentQuote) {
        return;
    }
    btnStartRepair.disabled = true;
    try {
        const response = await post("startRepair", { quoteId: currentQuote.id });
        if (!response?.ok) {
            btnStartRepair.disabled = false;
        }
    } catch (err) {
        btnStartRepair.disabled = false;
    }
};

window.addEventListener("message", (event) => {
    const data = event.data || {};
    if (data.action === "open") {
        app.classList.remove("hidden");
        panelData = data.payload || {};
        currentQuote = null;
        selectedComponents.clear();
        renderAll();
        return;
    }

    if (data.action === "close") {
        app.classList.add("hidden");
        panelData = null;
        currentQuote = null;
        selectedComponents.clear();
        return;
    }
});

document.addEventListener("keyup", (event) => {
    if (event.key === "Escape") {
        post("close", {});
    }
});
