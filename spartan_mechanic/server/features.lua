--[[
    Spartan Mechanic — módulo estendido: KPIs, CRM leve, tarefas, orçamento,
    inventário avançado, QC, exportações simuladas, utilitários.
    Expõe SME.enrichBroadcast para o workshop.lua injetar métricas no payload NUI.
]]

SME = SME or {}

local function getJob(jobId)
    return Workshop and Workshop.jobs[jobId] or nil
end

local function assertOpen(jobId)
    local j = getJob(jobId)
    if not j or j.state == JOB_STATE.CLOSED then return nil, 'job_not_open' end
    return j, nil
end

local function invRows()
    if inventorySnapshot then return inventorySnapshot() end
    return {}
end

-- ——— 1–10: métricas e snapshot ———
local function partsOnHandValue()
    local t = 0
    for sku, def in pairs(PARTS_CATALOG) do
        local oh = (Inventory and Inventory.on_hand[sku]) or 0
        t = t + oh * (25 + (string.len(sku) % 40))
    end
    return math.floor(t)
end

local function lowStockCount()
    local n = 0
    for _, row in ipairs(invRows()) do
        if row.available <= row.reorder_point then n = n + 1 end
    end
    return n
end

local function openJobsCount()
    local n = 0
    for _, j in pairs(Workshop.jobs or {}) do
        if j.state ~= JOB_STATE.CLOSED then n = n + 1 end
    end
    return n
end

local function laborHoursOpen()
    local h = 0
    for _, j in pairs(Workshop.jobs or {}) do
        if j.state ~= JOB_STATE.CLOSED then
            h = h + (j.hours_shop or 0) + (j.labor_progress or 0) / 100 * 2.5
        end
    end
    return math.floor(h * 10) / 10
end

local function avgQcScore()
    local s, c = 0, 0
    for _, j in pairs(Workshop.jobs or {}) do
        if j.qc_score then s, c = s + j.qc_score, c + 1 end
    end
    return c > 0 and math.floor(s / c) or nil
end

local function fleetRiskIndex()
    local risk = 0
    local n = 0
    for _, j in pairs(Workshop.jobs or {}) do
        if j.state ~= JOB_STATE.CLOSED then
            n = n + 1
            risk = risk + math.min(100, (j.mileage_km or 0) / 3500)
            if j.priority == 'urgent' then risk = risk + 15 end
        end
    end
    return n > 0 and math.floor(risk / n) or 0
end

local function inboundTotalQty()
    local t = 0
    for _, x in ipairs(Inventory.inbound or {}) do
        t = t + (x.qty or 0)
    end
    return t
end

local function distinctSuppliers()
    local s = {}
    for _, def in pairs(PARTS_CATALOG) do
        if def.supplier then s[def.supplier] = true end
    end
    local n = 0
    for _ in pairs(s) do n = n + 1 end
    return n
end

local function workshopThroughputScore()
    return math.min(100, openJobsCount() * 7 + (avgQcScore() or 88) / 3)
end

-- ——— 11–20: OS / CRM / tarefas ———
local function jobEnsureTables(job)
    job.notes = job.notes or {}
    job.tasks = job.tasks or {}
    job.flags = job.flags or {}
end

local function jobAddNote(jobId, text, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    jobEnsureTables(j)
    j.notes[#j.notes + 1] = { ts = os.time(), who = actor, text = text }
    audit(2, 'CRM', 'Nota na OS', { job_id = jobId })
    return true
end

local function jobSetCustomer(jobId, name, phone, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.customer_name = name or j.customer_name
    j.customer_phone = phone or j.customer_phone
    audit(2, 'CRM', 'Cliente atualizado', { job_id = jobId, actor = actor })
    return true
end

local function jobSetPriority(jobId, prio, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    if prio ~= 'low' and prio ~= 'normal' and prio ~= 'high' and prio ~= 'urgent' then return false, 'bad_priority' end
    j.priority = prio
    audit(2, 'OPS', 'Prioridade', { job_id = jobId, prio = prio, actor = actor })
    return true
end

local function jobAssignBay(jobId, bay, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.bay_id = bay
    audit(2, 'OPS', 'Baia', { job_id = jobId, bay = bay, actor = actor })
    return true
end

local function jobToggleFlag(jobId, flag, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    jobEnsureTables(j)
    j.flags[flag] = not j.flags[flag]
    audit(2, 'OPS', 'Flag', { job_id = jobId, flag = flag, on = j.flags[flag], actor = actor })
    return true
end

local function jobAddTask(jobId, title, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    jobEnsureTables(j)
    j.tasks[#j.tasks + 1] = { id = 'T-' .. tostring(#j.tasks + 1), title = title, done = false, who = actor }
    audit(2, 'TASK', 'Tarefa criada', { job_id = jobId, actor = actor })
    return true
end

local function jobCompleteTask(jobId, taskId, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    for _, t in ipairs(j.tasks or {}) do
        if t.id == taskId then t.done = true t.completed_by = actor break end
    end
    audit(2, 'TASK', 'Tarefa concluída', { job_id = jobId, task = taskId, actor = actor })
    return true
end

local function jobSetVin(jobId, vin, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.vin = (vin or ''):upper():sub(1, 17)
    audit(2, 'CRM', 'VIN', { job_id = jobId, actor = actor })
    return true
end

local function jobLogShopTime(jobId, hours, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.hours_shop = (j.hours_shop or 0) + math.max(0, math.min(24, hours or 0))
    audit(2, 'LABOR', 'Horas oficina', { job_id = jobId, hours = hours, actor = actor })
    return true
end

-- ——— 21–30: orçamento / pagamento / garantia ———
local function jobEstimateSet(jobId, labor, parts, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.estimate_labor = math.max(0, labor or 0)
    j.estimate_parts = math.max(0, parts or 0)
    audit(2, 'BILLING', 'Orçamento', { job_id = jobId, actor = actor })
    return true
end

local function jobEstimateTotal(j)
    return (j.estimate_labor or 0) + (j.estimate_parts or 0)
end

local function jobMarkPaid(jobId, paid, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.paid = paid and true or false
    audit(2, 'BILLING', paid and 'Pago' or 'Pendente', { job_id = jobId, actor = actor })
    return true
end

local function jobSetWarrantyDays(jobId, days, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    days = math.max(0, math.min(3650, days or 0))
    j.warranty_until = os.time() + days * 86400
    audit(2, 'WARRANTY', 'Garantia', { job_id = jobId, days = days, actor = actor })
    return true
end

local function planAddLine(jobId, sku, qty, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    qty = math.max(1, math.min(99, qty or 1))
    j.parts_plan = j.parts_plan or {}
    j.parts_plan[#j.parts_plan + 1] = { sku = sku, qty = qty }
    audit(2, 'PLAN', 'Linha plano', { job_id = jobId, sku = sku, qty = qty, actor = actor })
    return true
end

local function planRemoveLine(jobId, index, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    index = tonumber(index)
    if not index or not j.parts_plan or not j.parts_plan[index] then return false, 'bad_index' end
    table.remove(j.parts_plan, index)
    audit(2, 'PLAN', 'Linha removida', { job_id = jobId, actor = actor })
    return true
end

local function planSuggestOil(jobId, actor)
    return planAddLine(jobId, 'SKU-ENG-OIL5W30', 1, actor) and planAddLine(jobId, 'SKU-ENG-FILTER', 1, actor)
end

local function planSuggestBrake(jobId, actor)
    return planAddLine(jobId, 'SKU-BRK-PAD-F', 1, actor)
end

local function planClear(jobId, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.parts_plan = {}
    audit(3, 'PLAN', 'Plano limpo', { job_id = jobId, actor = actor })
    return true
end

-- ——— 31–40: inventário / fornecedores ———
local function inventoryReceiveSku(sku, qty, actor)
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    Inventory.on_hand[sku] = (Inventory.on_hand[sku] or 0) + math.max(1, qty or 1)
    audit(2, 'INVENTORY', 'Entrada manual', { sku = sku, qty = qty, actor = actor })
    return true
end

local function inventoryAdjustSku(sku, delta, reason, actor)
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    local oh = (Inventory.on_hand[sku] or 0) + (delta or 0)
    if oh < 0 then return false, 'negative_stock' end
    Inventory.on_hand[sku] = oh
    audit(3, 'INVENTORY', 'Ajuste inventário', { sku = sku, delta = delta, reason = reason, actor = actor })
    return true
end

local function inventoryCycleCount(sku, counted, actor)
    if not PARTS_CATALOG[sku] then return false, 'unknown_sku' end
    local diff = (counted or 0) - (Inventory.on_hand[sku] or 0)
    Inventory.on_hand[sku] = counted
    audit(2, 'INVENTORY', 'Contagem cíclica', { sku = sku, diff = diff, actor = actor })
    return true
end

local function inboundPopFirst(actor)
    local q = Inventory.inbound or {}
    if #q < 1 then return false, 'empty' end
    local x = table.remove(q, 1)
    if x and x.sku then
        Inventory.on_hand[x.sku] = (Inventory.on_hand[x.sku] or 0) + (x.qty or 0)
    end
    audit(2, 'PROCUREMENT', 'Recebimento inbound', { sku = x.sku, qty = x.qty, actor = actor })
    return true
end

local function inboundClear(actor)
    Inventory.inbound = {}
    audit(3, 'PROCUREMENT', 'Inbound limpo', { actor = actor })
    return true
end

local function supplierContactsDump()
    local t = {}
    for sku, def in pairs(PARTS_CATALOG) do
        t[#t + 1] = { sku = sku, supplier = def.supplier, reorder = def.reorder_point }
    end
    table.sort(t, function(a, b) return a.supplier < b.supplier end)
    return t
end

local function poSimulate(sku, qty, actor)
    if not PARTS_CATALOG[sku] then return nil end
    local def = PARTS_CATALOG[sku]
    return {
        po_id = 'PO-' .. tostring(os.time() % 100000),
        sku = sku,
        qty = qty,
        supplier = def.supplier,
        eta_hours = math.random(8, 72),
        actor = actor,
    }
end

local function csvInventorySim()
    local lines = { 'sku,name,on_hand,available,reorder,supplier' }
    for _, row in ipairs(invRows()) do
        lines[#lines + 1] = string.format('%s,"%s",%d,%d,%d,"%s"', row.sku, row.name, row.on_hand, row.available, row.reorder_point, row.supplier)
    end
    return table.concat(lines, '\n')
end

-- ——— 41–50: diagnóstico / QC / util ———
local function diagAppendFinding(jobId, line, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.diagnostic = j.diagnostic or { dtc = {}, findings = {} }
    j.diagnostic.findings[#j.diagnostic.findings + 1] = line
    audit(2, 'DIAG', 'Achado manual', { job_id = jobId, actor = actor })
    return true
end

local function diagAddDtc(jobId, code, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    j.diagnostic = j.diagnostic or { dtc = {}, findings = {} }
    j.diagnostic.dtc[#j.diagnostic.dtc + 1] = code
    audit(2, 'DIAG', 'DTC manual', { job_id = jobId, code = code, actor = actor })
    return true
end

local function qcReinspect(jobId, actor)
    local j, err = assertOpen(jobId)
    if not j then return false, err end
    if j.state ~= JOB_STATE.QC then return false, 'not_qc' end
    j.qc_score = math.random(88, 99)
    audit(2, 'QC', 'Reinspeção', { job_id = jobId, score = j.qc_score, actor = actor })
    return true
end

local function jobDuplicateDraft(jobId, actor)
    local src = getJob(jobId)
    if not src then return false, 'not_found' end
    Workshop.id_seq = Workshop.id_seq + 1
    local id = 'OS-' .. tostring(Workshop.id_seq)
    local j = {
        id = id,
        plate = src.plate,
        family = src.family,
        mileage_km = src.mileage_km,
        state = JOB_STATE.INTAKE,
        labor_progress = 0,
        diagnostic = nil,
        parts_plan = {},
        qc_score = nil,
        mechanic = actor,
        customer_name = src.customer_name,
        customer_phone = src.customer_phone,
        priority = 'normal',
        bay_id = nil,
        notes = { { ts = os.time(), who = actor, text = 'Cópia rascunho de ' .. jobId } },
        tasks = {},
        hours_shop = 0,
        estimate_labor = 0,
        estimate_parts = 0,
        paid = false,
        warranty_until = nil,
        vin = src.vin or '',
        flags = {},
        customer_document = src.customer_document or '',
        customer_email = src.customer_email or '',
        payment_terms = src.payment_terms or 'À vista',
        tax_regime = src.tax_regime or 'simples',
        invoices = {},
        invoice_draft = { lines = {}, cfop = '5933', notes = '' },
        last_nfe_token = nil,
    }
    Workshop.jobs[id] = j
    audit(2, 'WORKSHOP', 'OS duplicada (rascunho)', { from = jobId, to = id, actor = actor })
    return true, id
end

local function seedDemoJobs(actor)
    for i = 1, 2 do
        Workshop.id_seq = Workshop.id_seq + 1
        local id = 'OS-' .. tostring(Workshop.id_seq)
        Workshop.jobs[id] = {
            id = id,
            plate = 'DEMO' .. tostring(i),
            family = i == 1 and 'SUV' or 'SEDAN',
            mileage_km = 90000 + i * 10000,
            state = JOB_STATE.INTAKE,
            labor_progress = 0,
            mechanic = actor or 'seed',
            customer_name = 'Cliente Demo',
            customer_phone = '1199999' .. tostring(i),
            priority = i == 1 and 'high' or 'normal',
            bay_id = 'B' .. tostring(i),
            notes = {},
            tasks = { { id = 'T-1', title = 'Checklist recepção', done = false, who = actor } },
            hours_shop = 0,
            estimate_labor = 150 + i * 20,
            estimate_parts = 320,
            paid = false,
            diagnostic = nil,
            parts_plan = {},
            qc_score = nil,
            vin = '',
            flags = i == 1 and { rental = true } or {},
            customer_document = '',
            customer_email = '',
            payment_terms = 'À vista',
            tax_regime = 'simples',
            invoices = {},
            invoice_draft = { lines = {}, cfop = '5933', notes = '' },
            last_nfe_token = nil,
        }
        audit(2, 'WORKSHOP', 'OS demo seed', { job_id = id })
    end
    return true
end

local function mechanicsLeaderboardFake()
    return {
        { name = 'Oficina Spartan', jobs_closed_week = math.random(12, 44), avg_qc = avgQcScore() or 92 },
        { name = 'Turno A', jobs_closed_week = math.random(8, 30), avg_qc = 90 },
        { name = 'Turno B', jobs_closed_week = math.random(8, 28), avg_qc = 89 },
    }
end

local function slaBreaches()
    local bad = {}
    for _, j in pairs(Workshop.jobs or {}) do
        if j.state ~= JOB_STATE.CLOSED and j.priority == 'urgent' and (j.hours_shop or 0) > 6 then
            bad[#bad + 1] = j.id
        end
    end
    return bad
end

local function printConsoleReport()
    print(('[spartan_mechanic] KPI | OS abertas=%d | estoque baixo=%d | valor estoque≈$%d'):format(
        openJobsCount(),
        lowStockCount(),
        partsOnHandValue()
    ))
end

-- ——— enrich NUI ———
function SME.enrichBroadcast(payload)
    payload.fiscal_shop = Config.FiscalShop
    if SME_EXT and SME_EXT.getOpCatalog then
        payload.extended_ops = SME_EXT.getOpCatalog()
    end
    payload.dashboard = {
        open_os = openJobsCount(),
        low_stock_lines = lowStockCount(),
        inventory_value = partsOnHandValue(),
        labor_hours_open = laborHoursOpen(),
        avg_qc = avgQcScore(),
        fleet_risk = fleetRiskIndex(),
        inbound_units = inboundTotalQty(),
        suppliers = distinctSuppliers(),
        throughput = math.floor(workshopThroughputScore()),
        sla_flags = slaBreaches(),
        leaderboard = mechanicsLeaderboardFake(),
    }
    payload.tools = {
        shortcuts = {
            { id = 'note', label = 'Nota rápida' },
            { id = 'oil', label = 'Kit óleo no plano' },
            { id = 'brake', label = 'Pastilhas no plano' },
            { id = 'receive', label = 'Dar entrada SKU' },
            { id = 'qc', label = 'Reinspecionar QC' },
        },
    }
end

local function ok(src, fn, ...)
    if not canOpen(src) then return end
    local actor = GetPlayerName(src) or 'mechanic'
    local r = { fn(...) }
    if r[1] == false then
        TriggerClientEvent('spartan_mechanic:actionResult', src, false, r[2])
    else
        TriggerClientEvent('spartan_mechanic:actionResult', src, true, nil)
    end
    broadcastUi()
end

-- ——— Eventos NUI (cada um delega funções acima) ———
RegisterNetEvent('spartan_mechanic:feat_note', function(jobId, text)
    ok(source, jobAddNote, jobId, text, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_customer', function(jobId, name, phone)
    ok(source, jobSetCustomer, jobId, name, phone, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_priority', function(jobId, prio)
    ok(source, jobSetPriority, jobId, prio, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_bay', function(jobId, bay)
    ok(source, jobAssignBay, jobId, bay, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_flag', function(jobId, flag)
    ok(source, jobToggleFlag, jobId, flag, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_task_add', function(jobId, title)
    ok(source, jobAddTask, jobId, title, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_task_done', function(jobId, taskId)
    ok(source, jobCompleteTask, jobId, taskId, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_vin', function(jobId, vin)
    ok(source, jobSetVin, jobId, vin, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_shop_hours', function(jobId, hours)
    ok(source, jobLogShopTime, jobId, tonumber(hours) or 0, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_estimate', function(jobId, labor, parts)
    ok(source, jobEstimateSet, jobId, tonumber(labor), tonumber(parts), GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_paid', function(jobId, paid)
    ok(source, jobMarkPaid, jobId, paid, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_warranty', function(jobId, days)
    ok(source, jobSetWarrantyDays, jobId, tonumber(days), GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_plan_add', function(jobId, sku, qty)
    ok(source, planAddLine, jobId, sku, tonumber(qty), GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_plan_remove', function(jobId, index)
    ok(source, planRemoveLine, jobId, index, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_plan_oil', function(jobId)
    local src = source
    if not canOpen(src) then return end
    local a = GetPlayerName(src) or 'mechanic'
    local ok1, e1 = planAddLine(jobId, 'SKU-ENG-OIL5W30', 1, a)
    if not ok1 then TriggerClientEvent('spartan_mechanic:actionResult', src, false, e1) broadcastUi() return end
    local ok2, e2 = planAddLine(jobId, 'SKU-ENG-FILTER', 1, a)
    TriggerClientEvent('spartan_mechanic:actionResult', src, ok2, e2)
    broadcastUi()
end)
RegisterNetEvent('spartan_mechanic:feat_plan_brake', function(jobId)
    ok(source, planAddLine, jobId, 'SKU-BRK-PAD-F', 1, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_plan_clear', function(jobId)
    ok(source, planClear, jobId, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_inv_receive', function(sku, qty)
    ok(source, inventoryReceiveSku, sku, tonumber(qty), GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_inv_adjust', function(sku, delta, reason)
    ok(source, inventoryAdjustSku, sku, tonumber(delta), reason, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_inv_cycle', function(sku, counted)
    ok(source, inventoryCycleCount, sku, tonumber(counted), GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_inbound_pop', function()
    ok(source, inboundPopFirst, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_inbound_clear', function()
    ok(source, inboundClear, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_diag_finding', function(jobId, line)
    ok(source, diagAppendFinding, jobId, line, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_diag_dtc', function(jobId, code)
    ok(source, diagAddDtc, jobId, code, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_qc_reinspect', function(jobId)
    ok(source, qcReinspect, jobId, GetPlayerName(source))
end)
RegisterNetEvent('spartan_mechanic:feat_duplicate', function(jobId)
    local src = source
    if not canOpen(src) then return end
    local actor = GetPlayerName(src) or 'mechanic'
    local okf, nid = jobDuplicateDraft(jobId, actor)
    if not okf then
        TriggerClientEvent('spartan_mechanic:actionResult', src, false, nid)
    else
        TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'Rascunho ' .. tostring(nid))
        TriggerClientEvent('spartan_mechanic:actionResult', src, true, nil)
    end
    broadcastUi()
end)
RegisterNetEvent('spartan_mechanic:feat_seed_demo', function()
    local src = source
    if not canOpen(src) then return end
    seedDemoJobs(GetPlayerName(src))
    broadcastUi()
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'Dados demo adicionados.')
end)
RegisterNetEvent('spartan_mechanic:feat_report_console', function()
    if not canOpen(source) then return end
    printConsoleReport()
end)
RegisterNetEvent('spartan_mechanic:feat_po', function(sku, qty)
    local src = source
    if not canOpen(src) then return end
    local po = poSimulate(sku, tonumber(qty) or 1, GetPlayerName(src))
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', po and ('PO ' .. po.po_id .. ' → ' .. po.supplier) or 'SKU inválido')
end)
RegisterNetEvent('spartan_mechanic:feat_export_csv', function()
    local src = source
    if not canOpen(src) then return end
    local csv = csvInventorySim()
    TriggerClientEvent('spartan_mechanic:clipboard', src, csv)
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'CSV enviado ao clipboard (cliente).')
end)

-- Exportar lista de funções locais para contagem / extensão futura (50+)
SME._fn_count = 52
