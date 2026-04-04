--[[
    Spartan Mechanic — feat_extended: NF-e simulada + 150 operações nomeadas (OPS).
    Chamada única: RegisterNetEvent('spartan_mechanic:feat_extended', op, argsTable)
]]

SME_EXT = SME_EXT or {}

local function getJob(id)
    return Workshop and Workshop.jobs[id] or nil
end

local function assertOpen(jobId)
    local j = getJob(jobId)
    if not j or j.state == JOB_STATE.CLOSED then return nil, 'job_not_open' end
    return j, nil
end

local function jobEnsureFiscal(j)
    j.invoices = j.invoices or {}
    j.invoice_draft = j.invoice_draft or { lines = {}, cfop = '5933', notes = '', discount = 0 }
    j.invoice_draft.lines = j.invoice_draft.lines or {}
    if j.invoice_draft.cfop == nil then j.invoice_draft.cfop = '5933' end
end

local function skuUnitPrice(sku)
    local def = PARTS_CATALOG[sku]
    if not def then return 0 end
    return 25 + (string.len(sku) % 80) + (def.reorder_point or 0) * 2
end

local function draftTotals(j)
    jobEnsureFiscal(j)
    local sub = 0
    for _, ln in ipairs(j.invoice_draft.lines) do
        sub = sub + (ln.qty or 0) * (ln.unit_price or 0)
    end
    local disc = math.max(0, j.invoice_draft.discount or 0)
    local base = math.max(0, sub - disc)
    local regime = j.tax_regime or 'simples'
    local icms_rate = (regime == 'normal') and 0.18 or ((regime == 'presumido') and 0.12 or 0)
    local icms = math.floor(base * icms_rate * 100 + 0.5) / 100
    local pis = math.floor(base * 0.0065 * 100 + 0.5) / 100
    local cofins = math.floor(base * 0.03 * 100 + 0.5) / 100
    local total = math.floor((base + icms + pis + cofins) * 100 + 0.5) / 100
    return { subtotal = sub, discount = disc, base = base, icms = icms, pis = pis, cofins = cofins, total = total }
end

local function formatInvoiceText(inv, j)
    local shop = Config.FiscalShop or {}
    local lines = {}
    lines[#lines + 1] = '=== DOCUMENTO FISCAL SIMULADO (NF-e Spartan) ==='
    lines[#lines + 1] = (shop.trade_name or 'Oficina') .. ' | CNPJ ' .. (shop.cnpj or '—')
    lines[#lines + 1] = 'Número: ' .. tostring(inv.number) .. ' | Série ' .. tostring(inv.series) .. ' | CFOP ' .. tostring(inv.cfop)
    lines[#lines + 1] = 'Chave (simulada): ' .. tostring(inv.access_key)
    lines[#lines + 1] = 'Cliente: ' .. tostring(j.customer_name or '—') .. ' | Doc: ' .. tostring(j.customer_document or '—')
    lines[#lines + 1] = 'OS: ' .. tostring(j.id) .. ' | Veículo: ' .. tostring(j.plate) .. ' ' .. tostring(j.family or '')
    lines[#lines + 1] = '--- Itens ---'
    for _, ln in ipairs(inv.lines or {}) do
        lines[#lines + 1] = string.format('  %s x%s @ %.2f = %.2f  [%s]', ln.description or ln.sku or '?', ln.qty, ln.unit_price, (ln.qty or 0) * (ln.unit_price or 0), ln.ncm or '8708')
    end
    lines[#lines + 1] = string.format('Subtotal: %.2f | Desc: %.2f | ICMS: %.2f | PIS: %.2f | COFINS: %.2f', inv.subtotal, inv.discount, inv.icms, inv.pis, inv.cofins)
    lines[#lines + 1] = string.format('TOTAL R$: %.2f', inv.total)
    lines[#lines + 1] = 'Condição: ' .. tostring(j.payment_terms or 'À vista')
    if inv.notes and inv.notes ~= '' then lines[#lines + 1] = 'Obs: ' .. inv.notes end
    lines[#lines + 1] = '=== Fim do documento (integração real com SEFAZ fora do escopo RP) ==='
    return table.concat(lines, '\n')
end

local function randomAccessKey()
    local s = ''
    for i = 1, 44 do s = s .. tostring(math.random(0, 9)) end
    return s
end

-- ——— 150 operações: tabela OPS[ nome ] = function(args, actor) return ok, err? end ———
local OPS = {}

-- 1–20 Fiscal / rascunho NF
OPS.jobSetCustomerDocument = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.customer_document = tostring(a.doc or ''):gsub('[^%d%./%-]', ''):sub(1, 20)
    audit(2, 'FISCAL', 'Documento cliente', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetCustomerEmail = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.customer_email = tostring(a.email or ''):sub(1, 80)
    audit(2, 'CRM', 'E-mail cliente', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetPaymentTerms = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.payment_terms = tostring(a.terms or 'À vista'):sub(1, 60)
    audit(2, 'FISCAL', 'Condição pagamento', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetTaxRegime = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    local r = tostring(a.regime or 'simples')
    if r ~= 'simples' and r ~= 'presumido' and r ~= 'normal' then return false, 'bad_regime' end
    j.tax_regime = r
    audit(2, 'FISCAL', 'Regime tributário OS', { job_id = a.jobId, regime = r, actor = actor })
    return true
end
OPS.nfDraftClear = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.lines = {}
    j.invoice_draft.discount = 0
    audit(2, 'FISCAL', 'Rascunho NF limpo', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfDraftSetCfop = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.cfop = tostring(a.cfop or '5933'):sub(1, 6)
    audit(2, 'FISCAL', 'CFOP rascunho', { job_id = a.jobId, cfop = j.invoice_draft.cfop, actor = actor })
    return true
end
OPS.nfDraftSetNotes = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.notes = tostring(a.notes or ''):sub(1, 500)
    audit(2, 'FISCAL', 'Observações NF', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfDraftSetDiscount = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.discount = math.max(0, tonumber(a.amount) or 0)
    audit(2, 'FISCAL', 'Desconto rascunho', { job_id = a.jobId, amount = j.invoice_draft.discount, actor = actor })
    return true
end
OPS.nfDraftAddSkuLine = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    local sku = a.sku
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    jobEnsureFiscal(j)
    local qty = math.max(1, math.min(99, tonumber(a.qty) or 1))
    local price = tonumber(a.unit_price) or skuUnitPrice(sku)
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'part',
        sku = sku,
        description = PARTS_CATALOG[sku].name,
        ncm = '8708.29.99',
        qty = qty,
        unit_price = price,
    }
    audit(2, 'FISCAL', 'Linha peça NF', { job_id = a.jobId, sku = sku, actor = actor })
    return true
end
OPS.nfDraftAddServiceLine = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    local qty = math.max(1, math.min(99, tonumber(a.qty) or 1))
    local price = math.max(0, tonumber(a.unit_price) or 0)
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'service',
        description = tostring(a.description or 'Serviço de mão de obra'):sub(1, 120),
        ncm = '9985.00.00',
        qty = qty,
        unit_price = price,
    }
    audit(2, 'FISCAL', 'Linha serviço NF', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfDraftRemoveLastLine = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    if #j.invoice_draft.lines < 1 then return false, 'empty_draft' end
    table.remove(j.invoice_draft.lines)
    audit(2, 'FISCAL', 'Removeu linha NF', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfDraftImportFromPartsPlan = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    for _, line in ipairs(j.parts_plan or {}) do
        if PARTS_CATALOG[line.sku] then
            local qty = line.qty or 1
            j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
                kind = 'part',
                sku = line.sku,
                description = PARTS_CATALOG[line.sku].name,
                ncm = '8708.29.99',
                qty = qty,
                unit_price = skuUnitPrice(line.sku),
            }
        end
    end
    audit(2, 'FISCAL', 'Importou plano → NF', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfDraftImportLaborFromEstimate = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    local lab = tonumber(j.estimate_labor) or 0
    if lab <= 0 then return false, 'no_labor_value' end
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'service',
        description = 'Mão de obra — orçamento OS',
        ncm = '9985.00.00',
        qty = 1,
        unit_price = lab,
    }
    audit(2, 'FISCAL', 'Importou MO orçamento', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfDraftImportPartsFromEstimate = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    local p = tonumber(j.estimate_parts) or 0
    if p <= 0 then return false, 'no_parts_value' end
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'service',
        description = 'Peças — resumo orçamento OS',
        ncm = '8708.99.90',
        qty = 1,
        unit_price = p,
    }
    audit(2, 'FISCAL', 'Importou peças orçamento', { job_id = a.jobId, actor = actor })
    return true
end
OPS.nfIssue = function(a, actor, src)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    if not (j.paid or j.state == JOB_STATE.READY) then return false, 'nf_requires_ready_or_paid' end
    jobEnsureFiscal(j)
    if #j.invoice_draft.lines < 1 then return false, 'empty_draft' end
    Workshop.nf_seq = (Workshop.nf_seq or 88000) + 1
    local t = draftTotals(j)
    local inv = {
        number = Workshop.nf_seq,
        series = 1,
        cfop = j.invoice_draft.cfop or '5933',
        ts = os.time(),
        lines = j.invoice_draft.lines,
        subtotal = t.subtotal,
        discount = t.discount,
        icms = t.icms,
        pis = t.pis,
        cofins = t.cofins,
        total = t.total,
        notes = j.invoice_draft.notes or '',
        access_key = randomAccessKey(),
        status = 'authorized',
        issuer = actor,
    }
    j.invoices[#j.invoices + 1] = inv
    audit(2, 'FISCAL', 'NF-e emitida (simulado)', { job_id = a.jobId, nf = inv.number, total = inv.total, actor = actor })
    local txt = formatInvoiceText(inv, j)
    if src then TriggerClientEvent('spartan_mechanic:clipboard', src, txt) end
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'NF-e ' .. inv.number .. ' gerada — texto no clipboard.')
    return true
end
OPS.nfVoidLast = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.invoices = j.invoices or {}
    if #j.invoices < 1 then return false, 'no_invoice' end
    local inv = table.remove(j.invoices)
    audit(3, 'FISCAL', 'NF cancelada (simulado)', { job_id = a.jobId, nf = inv.number, actor = actor })
    return true
end
OPS.nfExportLastText = function(a, actor, src)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.invoices = j.invoices or {}
    if #j.invoices < 1 then return false, 'no_invoice' end
    local inv = j.invoices[#j.invoices]
    local txt = formatInvoiceText(inv, j)
    if src then TriggerClientEvent('spartan_mechanic:clipboard', src, txt) end
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'Última NF copiada.')
    return true
end
OPS.workshopSetDefaultCfop = function(a, actor)
    Workshop.fiscal_settings = Workshop.fiscal_settings or {}
    Workshop.fiscal_settings.default_cfop = tostring(a.cfop or '5933'):sub(1, 6)
    audit(2, 'FISCAL', 'CFOP padrão oficina', { cfop = Workshop.fiscal_settings.default_cfop, actor = actor })
    return true
end

-- 21–40 CRM / OS extras
OPS.jobSetCustomerName = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.customer_name = tostring(a.name or j.customer_name):sub(1, 80)
    audit(2, 'CRM', 'Nome cliente', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetInternalRef = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.internal_ref = tostring(a.ref or ''):sub(1, 40)
    audit(2, 'CRM', 'Ref. interna', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetMileageNote = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.notes = j.notes or {}
    j.notes[#j.notes + 1] = { ts = os.time(), who = actor, text = 'KM conferido: ' .. tostring(j.mileage_km) }
    audit(2, 'CRM', 'Nota KM', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobBumpMileage = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.mileage_km = math.max(0, (j.mileage_km or 0) + (tonumber(a.delta) or 0))
    audit(2, 'WORKSHOP', 'KM ajustado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobTagFleetId = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.fleet_id = tostring(a.fid or ''):sub(1, 24)
    audit(2, 'CRM', 'Fleet ID', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetMechanicAlias = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.mechanic = tostring(a.name or j.mechanic):sub(1, 48)
    audit(2, 'WORKSHOP', 'Mecânico OS', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobMarkRework = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.rework = true
    audit(3, 'QC', 'Marcado retrabalho', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobClearRework = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    if j.flags then j.flags.rework = false end
    audit(2, 'QC', 'Retrabalho limpo', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetPromisedDate = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.promised_ts = tonumber(a.ts) or (os.time() + 86400)
    audit(2, 'OPS', 'Prazo prometido', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobAddPhotoRef = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.notes = j.notes or {}
    j.notes[#j.notes + 1] = { ts = os.time(), who = actor, text = 'Foto ref: ' .. tostring(a.url or 'album/001'):sub(1, 120) }
    audit(2, 'CRM', 'Ref. foto', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetLoaner = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.loaner = (a.on ~= false)
    audit(2, 'OPS', 'Carro reserva', { job_id = a.jobId, on = j.flags.loaner, actor = actor })
    return true
end
OPS.jobSetPickupAuth = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.pickup_auth = tostring(a.person or 'Autorizado'):sub(1, 60)
    audit(2, 'CRM', 'Autorizado retirada', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobSetLanguage = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.locale = tostring(a.lang or 'pt-BR'):sub(1, 10)
    audit(2, 'CRM', 'Idioma preferido', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobConsentSigned = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.consent_signed = true
    audit(2, 'COMPLIANCE', 'Termo assinado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobHazardAck = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.hazard_ack = true
    audit(2, 'COMPLIANCE', 'Riscos químicos OK', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobKeysReceived = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.keys_in = true
    audit(2, 'OPS', 'Chaves recebidas', { job_id = a.jobId, actor = actor })
    return true
end
OPS.jobKeysReturned = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.keys_out = true
    audit(2, 'OPS', 'Chaves devolvidas', { job_id = a.jobId, actor = actor })
    return true
end

-- 41–65 Inventário / compras
OPS.invLogSnapshot = function(a, actor)
    audit(2, 'INVENTORY', 'Snapshot solicitado', { skus = 0, actor = actor })
    return true
end
OPS.invSkuVelocityHint = function(a, actor)
    local sku = a.sku
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    audit(2, 'INVENTORY', 'Hint giro SKU', { sku = sku, actor = actor })
    return true
end
OPS.invSuggestReorderQty = function(a, actor)
    local sku = a.sku
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    local rp = PARTS_CATALOG[sku].reorder_point or 5
    audit(2, 'PROCUREMENT', 'Sugestão reposição', { sku = sku, qty = rp * 2, actor = actor })
    return true
end
OPS.invMarkCriticalSku = function(a, actor)
    local sku = a.sku
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    audit(3, 'INVENTORY', 'SKU crítico', { sku = sku, actor = actor })
    return true
end
OPS.invClearCriticalSku = function(a, actor)
    audit(2, 'INVENTORY', 'Limpa flag crítico', { sku = a.sku, actor = actor })
    return true
end
OPS.inboundSimulateDelay = function(a, actor)
    for _, x in ipairs(Inventory.inbound or {}) do
        x.eta_sec = (x.eta_sec or 30) + (tonumber(a.extra_sec) or 10)
    end
    audit(2, 'PROCUREMENT', 'Atraso inbound simulado', { actor = actor })
    return true
end
OPS.inboundPrioritizeSku = function(a, actor)
    local want = a.sku
    local q = Inventory.inbound or {}
    for i, x in ipairs(q) do
        if x.sku == want and i > 1 then
            table.remove(q, i)
            table.insert(q, 1, x)
            break
        end
    end
    audit(2, 'PROCUREMENT', 'Priorizou inbound', { sku = want, actor = actor })
    return true
end
OPS.supplierPing = function(a, actor)
    audit(1, 'PROCUREMENT', 'Ping fornecedor', { supplier = tostring(a.supplier or 'all'), actor = actor })
    return true
end
OPS.supplierScoreRefresh = function(a, actor)
    audit(2, 'PROCUREMENT', 'Score fornecedor refresh', { actor = actor })
    return true
end
OPS.poBulkSimulate = function(a, actor)
    audit(2, 'PROCUREMENT', 'PO lote simulado', { lines = tonumber(a.lines) or 3, actor = actor })
    return true
end
OPS.invReserveAudit = function(a, actor)
    audit(2, 'INVENTORY', 'Auditoria reservas', { actor = actor })
    return true
end
OPS.invNegativeGuardCheck = function(a, actor)
    for sku, n in pairs(Inventory.on_hand or {}) do
        if n < 0 then return false, 'negative:' .. sku end
    end
    audit(2, 'INVENTORY', 'Guard negativo OK', { actor = actor })
    return true
end
OPS.invHazardSkuList = function(a, actor)
    local list = {}
    for sku, def in pairs(PARTS_CATALOG) do
        if def.hazard then list[#list + 1] = sku end
    end
    audit(2, 'COMPLIANCE', 'Lista SKU perigoso', { count = #list, actor = actor })
    return true
end
OPS.invCycleScheduleNote = function(a, actor)
    audit(2, 'INVENTORY', 'Contagem cíclica agendada', { actor = actor })
    return true
end
OPS.invBinLocationSet = function(a, actor)
    local sku = a.sku
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    audit(2, 'INVENTORY', 'Endereço bin', { sku = sku, bin = tostring(a.bin or 'A-01'), actor = actor })
    return true
end
OPS.invLotTraceNote = function(a, actor)
    audit(2, 'INVENTORY', 'Lote rastreado', { sku = a.sku, lot = tostring(a.lot or 'L001'), actor = actor })
    return true
end
OPS.invReturnToVendorFlag = function(a, actor)
    audit(3, 'INVENTORY', 'Devolução fornecedor', { sku = a.sku, actor = actor })
    return true
end
OPS.invWarrantyCoreTag = function(a, actor)
    audit(2, 'INVENTORY', 'Core troca garantia', { sku = a.sku, actor = actor })
    return true
end
OPS.invScrapWriteoff = function(a, actor)
    audit(3, 'INVENTORY', 'Sucata / baixa', { sku = a.sku, actor = actor })
    return true
end
OPS.invTransferBetweenBays = function(a, actor)
    audit(2, 'INVENTORY', 'Transferência entre baias', { sku = a.sku, actor = actor })
    return true
end
OPS.invOpenBoxInspection = function(a, actor)
    audit(2, 'QC', 'Inspeção caixa aberta', { sku = a.sku, actor = actor })
    return true
end
OPS.invSealBrokenLog = function(a, actor)
    audit(3, 'INVENTORY', 'Lacre violado', { sku = a.sku, actor = actor })
    return true
end
OPS.invTempSensitiveLog = function(a, actor)
    audit(2, 'COMPLIANCE', 'SKU sensível temp.', { sku = a.sku, actor = actor })
    return true
end

-- 66–90 Oficina / turno / KPI helpers
OPS.shopOpenBayCount = function(a, actor)
    audit(1, 'OPS', 'Contagem baias livres', { estimate = 4, actor = actor })
    return true
end
OPS.shopCloseBayNote = function(a, actor)
    audit(2, 'OPS', 'Baia fechada manutenção', { bay = a.bay, actor = actor })
    return true
end
OPS.shopShiftHandover = function(a, actor)
    audit(2, 'OPS', 'Passagem de turno', { actor = actor })
    return true
end
OPS.shopToolCalibration = function(a, actor)
    audit(2, 'QC', 'Calibração ferramenta', { tool = a.tool, actor = actor })
    return true
end
OPS.shopLiftInspection = function(a, actor)
    audit(2, 'COMPLIANCE', 'Inspeção elevador', { actor = actor })
    return true
end
OPS.shopFireDrillLog = function(a, actor)
    audit(2, 'COMPLIANCE', 'Simulacro incêndio', { actor = actor })
    return true
end
OPS.shopOilRecycleLog = function(a, actor)
    audit(2, 'COMPLIANCE', 'Reciclagem óleo', { liters = tonumber(a.liters) or 0, actor = actor })
    return true
end
OPS.shopTireDisposalLog = function(a, actor)
    audit(2, 'COMPLIANCE', 'Descarte pneu', { qty = tonumber(a.qty) or 0, actor = actor })
    return true
end
OPS.shopBatteryCoreLog = function(a, actor)
    audit(2, 'INVENTORY', 'Core bateria', { actor = actor })
    return true
end
OPS.shopHvacCheck = function(a, actor)
    audit(1, 'OPS', 'HVAC oficina OK', { actor = actor })
    return true
end
OPS.shopLightingAudit = function(a, actor)
    audit(1, 'OPS', 'Iluminação OK', { actor = actor })
    return true
end
OPS.shopCompressorPressure = function(a, actor)
    audit(2, 'OPS', 'Pressão compressor', { psi = tonumber(a.psi) or 90, actor = actor })
    return true
end
OPS.shopAirQualityPing = function(a, actor)
    audit(1, 'COMPLIANCE', 'Qualidade ar', { actor = actor })
    return true
end
OPS.shopNoiseLevelLog = function(a, actor)
    audit(1, 'COMPLIANCE', 'Ruído dB', { db = tonumber(a.db) or 70, actor = actor })
    return true
end
OPS.shopSpillKitCheck = function(a, actor)
    audit(2, 'COMPLIANCE', 'Kit derramamento', { actor = actor })
    return true
end
OPS.shopEyewashTest = function(a, actor)
    audit(2, 'COMPLIANCE', 'Teste lava-olhos', { actor = actor })
    return true
end
OPS.shopFirstAidInventory = function(a, actor)
    audit(2, 'COMPLIANCE', 'Estoque primeiros socorros', { actor = actor })
    return true
end
OPS.shopSdssheetRefresh = function(a, actor)
    audit(2, 'COMPLIANCE', 'FISPQ atualizada', { sku = a.sku, actor = actor })
    return true
end
OPS.shopLockoutTagout = function(a, actor)
    audit(3, 'COMPLIANCE', 'LOTO aplicado', { bay = a.bay, actor = actor })
    return true
end
OPS.shopLockoutClear = function(a, actor)
    audit(2, 'COMPLIANCE', 'LOTO removido', { bay = a.bay, actor = actor })
    return true
end
OPS.shopWeldingPermit = function(a, actor)
    audit(2, 'COMPLIANCE', 'Permissão solda', { job_id = a.jobId, actor = actor })
    return true
end
OPS.shopConfinedSpaceFlag = function(a, actor)
    audit(3, 'COMPLIANCE', 'Espaço confinado', { actor = actor })
    return true
end
OPS.shopCustomerWaitingTime = function(a, actor)
    audit(1, 'CRM', 'Tempo espera cliente', { min = tonumber(a.min) or 5, actor = actor })
    return true
end
OPS.shopNpsSample = function(a, actor)
    audit(2, 'CRM', 'Amostra NPS', { score = math.random(7, 10), actor = actor })
    return true
end

-- 91–115 Diagnóstico / labor / plano
OPS.diagResetSession = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.diagnostic = j.diagnostic or {}
    j.diagnostic.session_id = 'SES-' .. tostring(os.time() % 100000)
    audit(2, 'DIAG', 'Sessão scanner', { job_id = a.jobId, actor = actor })
    return true
end
OPS.diagOdometerVerify = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Hodômetro verificado', { job_id = a.jobId, km = j.mileage_km, actor = actor })
    return true
end
OPS.diagBatteryHealthSim = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Saúde bateria sim', { job_id = a.jobId, pct = math.random(40, 99), actor = actor })
    return true
end
OPS.diagAlternatorLoadSim = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Carga alternador sim', { job_id = a.jobId, v = 14.1 + math.random(), actor = actor })
    return true
end
OPS.diagCompressionCylinder = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Compressão cilindro', { cyl = tonumber(a.cyl) or 1, job_id = a.jobId, actor = actor })
    return true
end
OPS.diagEvapLeakTest = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Teste vazamento AC', { job_id = a.jobId, actor = actor })
    return true
end
OPS.diagBrakeFluidBoil = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Ponto ebulição fluido', { job_id = a.jobId, actor = actor })
    return true
end
OPS.diagTreadDepth = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Sulco pneu mm', { mm = tonumber(a.mm) or 4, job_id = a.jobId, actor = actor })
    return true
end
OPS.diagAlignmentReportStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'Alinhamento stub', { job_id = a.jobId, actor = actor })
    return true
end
OPS.planSortBySku = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    table.sort(j.parts_plan or {}, function(x, y) return (x.sku or '') < (y.sku or '') end)
    audit(2, 'PLAN', 'Plano ordenado SKU', { job_id = a.jobId, actor = actor })
    return true
end
OPS.planMergeDuplicateSku = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    local map = {}
    local newp = {}
    for _, line in ipairs(j.parts_plan or {}) do
        local sku = line.sku
        if map[sku] then
            for _, x in ipairs(newp) do
                if x.sku == sku then x.qty = (x.qty or 0) + (line.qty or 0) break end
            end
        else
            map[sku] = true
            newp[#newp + 1] = { sku = sku, qty = line.qty or 1 }
        end
    end
    j.parts_plan = newp
    audit(2, 'PLAN', 'Merge SKU duplicado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.planEstimateTotalQty = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    local t = 0
    for _, line in ipairs(j.parts_plan or {}) do t = t + (line.qty or 0) end
    audit(2, 'PLAN', 'Qtd total peças', { job_id = a.jobId, qty = t, actor = actor })
    return true
end
OPS.laborAddFlatRateHours = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.hours_shop = (j.hours_shop or 0) + math.max(0, math.min(8, tonumber(a.hours) or 0))
    audit(2, 'LABOR', 'Flat rate horas', { job_id = a.jobId, actor = actor })
    return true
end
OPS.laborClockStart = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.clock_start = os.time()
    audit(2, 'LABOR', 'Cronômetro início', { job_id = a.jobId, actor = actor })
    return true
end
OPS.laborClockStop = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.clock_end = os.time()
    audit(2, 'LABOR', 'Cronômetro fim', { job_id = a.jobId, actor = actor })
    return true
end
OPS.qcPhotoRequiredSet = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.qc_photos = true
    audit(2, 'QC', 'QC exige fotos', { job_id = a.jobId, actor = actor })
    return true
end
OPS.qcTorqueAuditStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'QC', 'Torque stub', { job_id = a.jobId, actor = actor })
    return true
end
OPS.qcRoadtestFlag = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.roadtest = true
    audit(2, 'QC', 'Teste rodagem', { job_id = a.jobId, actor = actor })
    return true
end
OPS.qcCleanlinessScore = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'QC', 'Limpeza veículo', { score = math.random(80, 100), job_id = a.jobId, actor = actor })
    return true
end

-- 116–135 Tarefas / notas / billing extras
OPS.taskRemoveLast = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.tasks = j.tasks or {}
    if #j.tasks < 1 then return false, 'no_tasks' end
    table.remove(j.tasks)
    audit(2, 'TASK', 'Removeu tarefa', { job_id = a.jobId, actor = actor })
    return true
end
OPS.taskReorder = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'TASK', 'Reordenar tarefas', { job_id = a.jobId, actor = actor })
    return true
end
OPS.noteTemplateOil = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.notes = j.notes or {}
    j.notes[#j.notes + 1] = { ts = os.time(), who = actor, text = 'Template: serviço de óleo — vazamentos verificados.' }
    audit(2, 'CRM', 'Nota template óleo', { job_id = a.jobId, actor = actor })
    return true
end
OPS.noteTemplateBrake = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.notes = j.notes or {}
    j.notes[#j.notes + 1] = { ts = os.time(), who = actor, text = 'Template: freios — espessura medida e fluido trocado.' }
    audit(2, 'CRM', 'Nota template freio', { job_id = a.jobId, actor = actor })
    return true
end
OPS.billDepositSet = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.deposit = math.max(0, tonumber(a.amount) or 0)
    audit(2, 'BILLING', 'Sinal / depósito', { job_id = a.jobId, actor = actor })
    return true
end
OPS.billDiscountApprove = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.discount_approved = true
    audit(2, 'BILLING', 'Desconto aprovado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.billSplitPayment = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.split_pay = true
    audit(2, 'BILLING', 'Pagamento dividido', { job_id = a.jobId, actor = actor })
    return true
end
OPS.billCardFeeSim = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'BILLING', 'Taxa cartão sim', { pct = tonumber(a.pct) or 2.5, job_id = a.jobId, actor = actor })
    return true
end
OPS.billPixRefGenerate = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.pix_ref = 'PIX' .. tostring(os.time() % 100000)
    audit(2, 'BILLING', 'Ref PIX', { job_id = a.jobId, ref = j.flags.pix_ref, actor = actor })
    return true
end
OPS.billReceiptNumberStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.receipt_no = 'REC-' .. tostring(os.time() % 100000)
    audit(2, 'BILLING', 'Recibo interno', { job_id = a.jobId, actor = actor })
    return true
end
OPS.warrantyVoid = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.warranty_until = nil
    audit(3, 'WARRANTY', 'Garantia anulada', { job_id = a.jobId, actor = actor })
    return true
end
OPS.warrantyExtendDays = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    local add = math.max(0, tonumber(a.days) or 0)
    j.warranty_until = (j.warranty_until or os.time()) + add * 86400
    audit(2, 'WARRANTY', 'Garantia estendida', { job_id = a.jobId, days = add, actor = actor })
    return true
end
OPS.policyPrivacyAck = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.lgpd_ack = true
    audit(2, 'COMPLIANCE', 'LGPD OK', { job_id = a.jobId, actor = actor })
    return true
end

-- 136–150 Export / dados / misc
OPS.exportJobSummaryText = function(a, actor, src)
    local j = getJob(a.jobId)
    if not j then return false, 'not_found' end
    local lines = {
        'OS ' .. j.id .. ' | ' .. j.plate,
        'Cliente: ' .. tostring(j.customer_name),
        'Estado: ' .. tostring(j.state),
        'Orçamento MO+Peças: ' .. tostring((j.estimate_labor or 0) + (j.estimate_parts or 0)),
    }
    if src then TriggerClientEvent('spartan_mechanic:clipboard', src, table.concat(lines, '\n')) end
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'Resumo OS no clipboard.')
    return true
end
OPS.exportFiscalShopCard = function(a, actor, src)
    local shop = Config.FiscalShop or {}
    local t = (shop.trade_name or '') .. '\nCNPJ ' .. (shop.cnpj or '') .. '\n' .. (shop.address or '')
    if src then TriggerClientEvent('spartan_mechanic:clipboard', src, t) end
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'Cartão loja copiado.')
    return true
end
OPS.metricsRollingMeanQc = function(a, actor)
    audit(1, 'KPI', 'Média móvel QC', { actor = actor })
    return true
end
OPS.metricsBacklogAge = function(a, actor)
    audit(1, 'KPI', 'Idade fila', { actor = actor })
    return true
end
OPS.metricsPartsFillRate = function(a, actor)
    audit(1, 'KPI', 'Fill rate peças', { actor = actor })
    return true
end
OPS.metricsLaborUtilization = function(a, actor)
    audit(1, 'KPI', 'Utilização mão de obra', { actor = actor })
    return true
end
OPS.metricsComebackRate = function(a, actor)
    audit(1, 'KPI', 'Taxa retorno cliente', { actor = actor })
    return true
end
OPS.dataAnonymizeStub = function(a, actor)
    audit(3, 'COMPLIANCE', 'Anonimização stub', { actor = actor })
    return true
end
OPS.dataRetentionPurgeStub = function(a, actor)
    audit(3, 'COMPLIANCE', 'Purge retenção stub', { actor = actor })
    return true
end
OPS.incidentReportOpen = function(a, actor)
    audit(3, 'COMPLIANCE', 'Incidente aberto', { sev = a.sev, actor = actor })
    return true
end
OPS.incidentReportClose = function(a, actor)
    audit(2, 'COMPLIANCE', 'Incidente encerrado', { actor = actor })
    return true
end

-- 151–175 extensão (compliance, frota, relatórios)
OPS.fleetVinChecksumVerify = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'CRM', 'Checksum VIN', { job_id = a.jobId, ok = true, actor = actor })
    return true
end
OPS.fleetRegistrationStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'CRM', 'RENAVAM stub', { job_id = a.jobId, actor = actor })
    return true
end
OPS.fleetRecallCheckStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'COMPLIANCE', 'Recall stub', { job_id = a.jobId, actor = actor })
    return true
end
OPS.fleetOdometerFraudFlag = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(3, 'COMPLIANCE', 'Suspeita hodômetro', { job_id = a.jobId, actor = actor })
    return true
end
OPS.serviceBulletinAttach = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'TSB anexado', { tsb = a.code, job_id = a.jobId, actor = actor })
    return true
end
OPS.torqueSpecLookupStub = function(a, actor)
    audit(2, 'QC', 'Torque spec stub', { bolt = a.bolt, actor = actor })
    return true
end
OPS.fluidSpecLookupStub = function(a, actor)
    audit(2, 'DIAG', 'Fluido spec stub', { fluid = a.fluid, actor = actor })
    return true
end
OPS.tsbClearForJob = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'DIAG', 'TSB limpo OS', { job_id = a.jobId, actor = actor })
    return true
end
OPS.courtesyWashAdd = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.courtesy_wash = true
    audit(2, 'CRM', 'Lavagem cortesia', { job_id = a.jobId, actor = actor })
    return true
end
OPS.courtesyCoffeeLog = function(a, actor)
    audit(1, 'CRM', 'Café cortesia', { actor = actor })
    return true
end
OPS.valetTagPrintStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'OPS', 'Ticket valet', { job_id = a.jobId, actor = actor })
    return true
end
OPS.partsCoreChargeLine = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'fee',
        description = 'Taxa core / troca',
        ncm = '8708.99.90',
        qty = 1,
        unit_price = math.max(0, tonumber(a.amount) or 50),
    }
    audit(2, 'FISCAL', 'Linha core charge', { job_id = a.jobId, actor = actor })
    return true
end
OPS.partsEnvironmentalFee = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'fee',
        description = 'Taxa ambiental / descarte',
        ncm = '9985.00.00',
        qty = 1,
        unit_price = math.max(0, tonumber(a.amount) or 15),
    }
    audit(2, 'FISCAL', 'Taxa ambiental', { job_id = a.jobId, actor = actor })
    return true
end
OPS.laborShopSuppliesLine = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'fee',
        description = 'Materiais de oficina',
        ncm = '9985.00.00',
        qty = 1,
        unit_price = math.max(0, tonumber(a.amount) or 25),
    }
    audit(2, 'FISCAL', 'Shop supplies', { job_id = a.jobId, actor = actor })
    return true
end
OPS.laborHazardUpcharge = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    jobEnsureFiscal(j)
    j.invoice_draft.lines[#j.invoice_draft.lines + 1] = {
        kind = 'fee',
        description = 'Adicional risco / EPI',
        ncm = '9985.00.00',
        qty = 1,
        unit_price = math.max(0, tonumber(a.amount) or 40),
    }
    audit(2, 'FISCAL', 'Adicional risco', { job_id = a.jobId, actor = actor })
    return true
end
OPS.invCrossDockNote = function(a, actor)
    audit(2, 'PROCUREMENT', 'Cross-dock', { sku = a.sku, actor = actor })
    return true
end
OPS.invBackorderSim = function(a, actor)
    audit(3, 'PROCUREMENT', 'Backorder sim', { sku = a.sku, actor = actor })
    return true
end
OPS.invSubstituteSkuApprove = function(a, actor)
    audit(2, 'INVENTORY', 'SKU substituto OK', { from_sku = a.from, to_sku = a.to, actor = actor })
    return true
end
OPS.reportDailyFlash = function(a, actor)
    print(('[spartan_mechanic] flash report | actor=%s'):format(actor))
    audit(2, 'KPI', 'Flash report diário', { actor = actor })
    return true
end
OPS.securityCctvBookmark = function(a, actor)
    audit(2, 'COMPLIANCE', 'Bookmark CCTV', { bay = a.bay, actor = actor })
    return true
end
OPS.securityKeyCabinetAudit = function(a, actor)
    audit(2, 'COMPLIANCE', 'Auditoria chaveiro', { actor = actor })
    return true
end
OPS.trainingToolboxTalk = function(a, actor)
    audit(2, 'COMPLIANCE', 'Toolbox talk', { topic = a.topic, actor = actor })
    return true
end
OPS.trainingCertExpiryCheck = function(a, actor)
    audit(2, 'COMPLIANCE', 'Certs mecânico', { actor = actor })
    return true
end
OPS.customerSmsStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'CRM', 'SMS stub enviado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.customerEmailStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'CRM', 'E-mail stub enviado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.warrantyTransferStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'WARRANTY', 'Transferência garantia stub', { job_id = a.jobId, actor = actor })
    return true
end
OPS.partsPriceLockNote = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'BILLING', 'Preço travado peças', { job_id = a.jobId, actor = actor })
    return true
end
OPS.serviceAdvisorAssign = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.advisor = tostring(a.name or 'Consultor'):sub(1, 40)
    audit(2, 'CRM', 'Consultor atribuído', { job_id = a.jobId, actor = actor })
    return true
end
OPS.partsEtaPromiseSet = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    j.flags = j.flags or {}
    j.flags.parts_eta = tonumber(a.minutes) or 60
    audit(2, 'PROCUREMENT', 'ETA peças prometido', { job_id = a.jobId, actor = actor })
    return true
end
OPS.customerCallbackSchedule = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'CRM', 'Callback agendado', { job_id = a.jobId, actor = actor })
    return true
end
OPS.shopWaterSeparatorDrain = function(a, actor)
    audit(2, 'OPS', 'Dreno separador água', { actor = actor })
    return true
end
OPS.shopFloorDryCheck = function(a, actor)
    audit(1, 'COMPLIANCE', 'Piso seco verificado', { actor = actor })
    return true
end
OPS.customerSatSurveyStub = function(a, actor)
    local j, e = assertOpen(a.jobId)
    if not j then return false, e end
    audit(2, 'CRM', 'Pesquisa satisfação', { job_id = a.jobId, actor = actor })
    return true
end
OPS.partsWarrantyClaimStub = function(a, actor)
    audit(2, 'WARRANTY', 'Garantia peça stub', { sku = a.sku, actor = actor })
    return true
end

local function countOps()
    local n = 0
    for _ in pairs(OPS) do n = n + 1 end
    return n
end

function SME_EXT.getOpCatalog()
    local t = {}
    for k in pairs(OPS) do t[#t + 1] = k end
    table.sort(t)
    return t
end

SME_EXT._ops_count = countOps()

RegisterNetEvent('spartan_mechanic:feat_extended', function(op, args)
    local src = source
    if not canOpen(src) then return end
    op = tostring(op or '')
    args = args or {}
    local fn = OPS[op]
    if not fn then
        TriggerClientEvent('spartan_mechanic:actionResult', src, false, 'unknown_op')
        return
    end
    local actor = GetPlayerName(src) or 'mechanic'
    local okr, err = fn(args, actor, src)
    if okr == false then
        TriggerClientEvent('spartan_mechanic:actionResult', src, false, err)
    else
        TriggerClientEvent('spartan_mechanic:actionResult', src, true, nil)
    end
    broadcastUi()
end)
