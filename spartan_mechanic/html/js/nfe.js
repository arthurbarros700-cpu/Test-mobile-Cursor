/**
 * Visualização HTML da NF-e (overlay) — independente do painel da oficina.
 */

function nfeGetParent() {
  try {
    return window.GetParentResourceName ? window.GetParentResourceName() : "spartan_mechanic";
  } catch {
    return "spartan_mechanic";
  }
}

function nfePost(name, data) {
  fetch(`https://${nfeGetParent()}/${name}`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data || {}),
  }).catch(() => {});
}

function nfeEscape(s) {
  if (s == null) return "";
  const d = document.createElement("div");
  d.textContent = String(s);
  return d.innerHTML;
}

function nfeFmtMoney(n) {
  const x = Number(n) || 0;
  return x.toLocaleString("pt-BR", { style: "currency", currency: "BRL", minimumFractionDigits: 2 });
}

function nfeFmtTs(ts) {
  if (!ts) return "—";
  return new Date(ts * 1000).toLocaleString("pt-BR", { dateStyle: "short", timeStyle: "short" });
}

function nfeRender(payload) {
  const shop = payload.shop || {};
  const job = payload.job || {};
  const inv = payload.invoice || {};
  const lines = inv.lines || [];

  let rows = "";
  for (const ln of lines) {
    const desc = ln.description || ln.sku || "—";
    const q = ln.qty || 0;
    const u = Number(ln.unit_price) || 0;
    const tot = q * u;
    rows += `<tr>
      <td>${nfeEscape(desc)}</td>
      <td>${nfeEscape(ln.ncm || "—")}</td>
      <td class="num">${q}</td>
      <td class="num">${nfeFmtMoney(u)}</td>
      <td class="num">${nfeFmtMoney(tot)}</td>
    </tr>`;
  }

  const body = document.getElementById("nfe-body");
  body.innerHTML = `<div class="nfe-doc" id="nfe-print-root">
    <div class="nfe-badge-row">
      <span class="nfe-pill ok">Autorizado (simulado)</span>
      <span class="nfe-pill">NF-e · Série ${nfeEscape(inv.series ?? 1)} · Nº ${nfeEscape(inv.number)}</span>
      <span class="nfe-pill">CFOP ${nfeEscape(inv.cfop)}</span>
    </div>
    <div class="nfe-grid">
      <div class="nfe-card">
        <h3>Emitente</h3>
        <p><strong>${nfeEscape(shop.trade_name || shop.legal_name)}</strong></p>
        <p>CNPJ: ${nfeEscape(shop.cnpj)} · IE: ${nfeEscape(shop.ie)}</p>
        <p>${nfeEscape(shop.address)}</p>
        <p>${nfeEscape(shop.city)} / ${nfeEscape(shop.uf)} · CEP ${nfeEscape(shop.cep)}</p>
      </div>
      <div class="nfe-card">
        <h3>Destinatário / veículo</h3>
        <p><strong>${nfeEscape(job.customer_name)}</strong></p>
        <p>CPF/CNPJ: ${nfeEscape(job.customer_document || "—")}</p>
        <p>E-mail: ${nfeEscape(job.customer_email || "—")} · Tel: ${nfeEscape(job.customer_phone || "—")}</p>
        <p>OS <strong>${nfeEscape(job.id)}</strong> · Placa <strong>${nfeEscape(job.plate)}</strong> · ${nfeEscape(job.family)}</p>
        <p>KM: ${nfeEscape(job.mileage_km)} · VIN: ${nfeEscape(job.vin || "—")}</p>
        <p>Pagamento: ${nfeEscape(job.payment_terms)} · Regime: ${nfeEscape(job.tax_regime)}</p>
      </div>
    </div>
    <p style="font-size:11px;color:var(--muted, #8b909c);margin-bottom:8px">Data de emissão: ${nfeFmtTs(inv.ts)} · Emitido por: ${nfeEscape(inv.issuer)}</p>
    <div class="nfe-key-box">Chave de acesso (simulada)<br/>${nfeEscape(inv.access_key)}</div>
    <div class="nfe-table-wrap">
      <table class="nfe-table">
        <thead><tr><th>Descrição</th><th>NCM</th><th>Qtd</th><th>V. unit.</th><th>Total</th></tr></thead>
        <tbody>${rows || '<tr><td colspan="5">Sem linhas</td></tr>'}</tbody>
      </table>
    </div>
    <dl class="nfe-totals">
      <dt>Subtotal</dt><dd>${nfeFmtMoney(inv.subtotal)}</dd>
      <dt>Desconto</dt><dd>${nfeFmtMoney(inv.discount)}</dd>
      <dt>ICMS</dt><dd>${nfeFmtMoney(inv.icms)}</dd>
      <dt>PIS</dt><dd>${nfeFmtMoney(inv.pis)}</dd>
      <dt>COFINS</dt><dd>${nfeFmtMoney(inv.cofins)}</dd>
      <div class="grand"><span>TOTAL</span><span>${nfeFmtMoney(inv.total)}</span></div>
    </dl>
    ${inv.notes ? `<div class="nfe-notes"><strong>Observações</strong><br/>${nfeEscape(inv.notes)}</div>` : ""}
  </div>`;

  document.getElementById("nfe-title").textContent = "Nota fiscal eletrônica (simulada)";
  document.getElementById("nfe-subtitle").textContent = shop.trade_name || "Spartan Motorworks";
}

function nfeOpen() {
  const el = document.getElementById("nfe-overlay");
  el.classList.remove("hidden");
  el.setAttribute("aria-hidden", "false");
}

function nfeClose() {
  const el = document.getElementById("nfe-overlay");
  el.classList.add("hidden");
  el.setAttribute("aria-hidden", "true");
  nfePost("closeNfe", {});
}

document.getElementById("nfe-btn-close").addEventListener("click", nfeClose);

document.getElementById("nfe-btn-print").addEventListener("click", () => {
  const root = document.getElementById("nfe-print-root");
  if (!root) return;
  const w = window.open("", "_blank");
  if (!w) return;
  w.document.write(
    "<!DOCTYPE html><html><head><meta charset='utf-8'><title>NF Spartan</title>" +
      "<style>body{font-family:system-ui,sans-serif;padding:24px;background:#fff;color:#111}" +
      "table{border-collapse:collapse;width:100%;margin:16px 0}th,td{border:1px solid #ccc;padding:8px;font-size:13px}th{background:#f0f0f0}" +
      ".key{font-family:monospace;font-size:11px;word-break:break-all}</style></head><body>" +
      root.innerHTML +
      "</body></html>"
  );
  w.document.close();
  w.focus();
  w.print();
});

window.addEventListener("message", (ev) => {
  const msg = ev.data;
  if (!msg || msg.action !== "nfeShow") return;
  nfeRender(msg.data || {});
  nfeOpen();
});

window.addEventListener("message", (ev) => {
  if (ev.data && ev.data.action === "nfeClose") nfeClose();
});

document.addEventListener("keydown", (e) => {
  if (e.key === "Escape" && !document.getElementById("nfe-overlay").classList.contains("hidden")) {
    nfeClose();
  }
});
