--[[ Spartan Mechanic — servidor: FSM, estoque, diagnóstico, auditoria ]]

local Audit = { entries = {}, seq = 0, max = 200 }

function audit(level, category, message, ctx)
    Audit.seq = Audit.seq + 1
    local e = {
        id = Audit.seq,
        ts = os.time(),
        level = level,
        category = category,
        message = message,
        context = ctx or {},
    }
    table.insert(Audit.entries, 1, e)
    while #Audit.entries > Audit.max do
        table.remove(Audit.entries)
    end
    print(('[spartan_mechanic] [%s] %s'):format(category, message))
end

Inventory = {
    on_hand = {},
    reserved = {},
    inbound = {},
}

for sku in pairs(PARTS_CATALOG) do
    Inventory.on_hand[sku] = math.random(4, 18)
end

function reservedTotalSku(sku)
    local t = 0
    for _, jm in pairs(Inventory.reserved) do
        t = t + (jm[sku] or 0)
    end
    return t
end

function availableSku(sku)
    return (Inventory.on_hand[sku] or 0) - reservedTotalSku(sku)
end

Workshop = { jobs = {}, id_seq = 1000, nf_seq = 88000, fiscal_settings = { default_cfop = '5933' } }

local VALID = {
    [JOB_STATE.INTAKE] = { [JOB_STATE.DIAGNOSTIC] = true },
    [JOB_STATE.DIAGNOSTIC] = { [JOB_STATE.PARTS_PULL] = true },
    [JOB_STATE.PARTS_PULL] = { [JOB_STATE.LABOR] = true },
    [JOB_STATE.LABOR] = { [JOB_STATE.QC] = true },
    [JOB_STATE.QC] = { [JOB_STATE.READY] = true },
    [JOB_STATE.READY] = { [JOB_STATE.CLOSED] = true },
    [JOB_STATE.CLOSED] = {},
}

function runDiagnostic(family, mileage)
    local parts = {}
    local dtc = {}
    local findings = {}
    if mileage > 150000 then
        findings[#findings + 1] = 'Desgaste elevado por quilometragem — revisão de freios recomendada.'
        dtc[#dtc + 1] = 'SP-HIGH-KM'
        parts[#parts + 1] = { sku = 'SKU-BRK-PAD-F', qty = 1 }
    end
    if math.random() < 0.6 then
        parts[#parts + 1] = { sku = 'SKU-ENG-OIL5W30', qty = 1 }
        parts[#parts + 1] = { sku = 'SKU-ENG-FILTER', qty = 1 }
        dtc[#dtc + 1] = 'SP-PREV-OIL'
        findings[#findings + 1] = 'Serviço preventivo de fluidos e filtro.'
    end
    if #findings == 0 then
        findings[#findings + 1] = 'Sem anomalias críticas no escaneamento rápido.'
        dtc[#dtc + 1] = 'SP-OK'
    end
    local filtered = {}
    for _, line in ipairs(parts) do
        local ok = false
        for _, f in ipairs(CatalogFamiliesForSku(line.sku)) do
            if f == family then ok = true break end
        end
        if ok then filtered[#filtered + 1] = line end
    end
    if #filtered == 0 then
        filtered = { { sku = 'SKU-TIRE-R17-AS', qty = 2 } }
    end
    return { dtc = dtc, findings = findings, parts_plan = filtered }
end

function releaseJobReserves(jobId, actor)
    local jm = Inventory.reserved[jobId]
    if not jm then return end
    audit(2, 'INVENTORY', 'Reservas liberadas', { job_id = jobId, actor = actor })
    Inventory.reserved[jobId] = nil
end

function reserveAll(jobId, plan, actor)
    if not Inventory.reserved[jobId] then Inventory.reserved[jobId] = {} end
    for _, line in ipairs(plan) do
        if availableSku(line.sku) < line.qty then
            Inventory.reserved[jobId] = {}
            return false, 'insufficient_stock'
        end
    end
    for _, line in ipairs(plan) do
        local jm = Inventory.reserved[jobId]
        jm[line.sku] = (jm[line.sku] or 0) + line.qty
        audit(2, 'INVENTORY', 'Reserva', { job_id = jobId, sku = line.sku, qty = line.qty, actor = actor })
    end
    return true
end

function commitAll(jobId, plan, actor)
    local jm = Inventory.reserved[jobId] or {}
    for _, line in ipairs(plan) do
        local held = jm[line.sku] or 0
        if held < line.qty then return false end
        Inventory.on_hand[line.sku] = (Inventory.on_hand[line.sku] or 0) - line.qty
        jm[line.sku] = held - line.qty
        audit(2, 'INVENTORY', 'Commit', { job_id = jobId, sku = line.sku, qty = line.qty, actor = actor })
    end
    return true
end

function canOpen(src)
    if IsPlayerAceAllowed(src, Config.AceBypass) then return true end
    if not Config.RequiredJob then return true end
    -- ESX / QBCore: integrar aqui; por padrão permite se não houver framework
    return true
end

function jobDto(job)
    if not job then return nil end
    return {
        id = job.id,
        plate = job.plate,
        family = job.family,
        mileage_km = job.mileage_km,
        state = job.state,
        labor_progress = job.labor_progress or 0,
        qc_score = job.qc_score,
        mechanic = job.mechanic,
        parts_plan = job.parts_plan,
        diagnostic = job.diagnostic,
        customer_name = job.customer_name,
        customer_phone = job.customer_phone,
        priority = job.priority,
        bay_id = job.bay_id,
        notes = job.notes,
        tasks = job.tasks,
        hours_shop = job.hours_shop,
        estimate_labor = job.estimate_labor,
        estimate_parts = job.estimate_parts,
        paid = job.paid,
        warranty_until = job.warranty_until,
        vin = job.vin,
        flags = job.flags,
        customer_document = job.customer_document,
        customer_email = job.customer_email,
        payment_terms = job.payment_terms,
        tax_regime = job.tax_regime,
        invoices = job.invoices,
        invoice_draft = job.invoice_draft,
    }
end

function inventorySnapshot()
    local rows = {}
    for sku, def in pairs(PARTS_CATALOG) do
        rows[#rows + 1] = {
            sku = sku,
            name = def.name,
            on_hand = Inventory.on_hand[sku] or 0,
            available = availableSku(sku),
            reorder_point = def.reorder_point,
            supplier = def.supplier,
        }
    end
    table.sort(rows, function(a, b) return a.sku < b.sku end)
    return rows
end

function listOpenJobsDto()
    local list = {}
    for _, j in pairs(Workshop.jobs) do
        if j.state ~= JOB_STATE.CLOSED then list[#list + 1] = jobDto(j) end
    end
    table.sort(list, function(a, b) return a.id > b.id end)
    return list
end

function broadcastUi()
    local payload = {
        jobs = listOpenJobsDto(),
        inventory = inventorySnapshot(),
        inbound = Inventory.inbound,
        catalog = PARTS_CATALOG,
        logs = Audit.entries,
    }
    if SME and SME.enrichBroadcast then
        SME.enrichBroadcast(payload)
    end
    TriggerClientEvent('spartan_mechanic:state', -1, payload)
end

RegisterNetEvent('spartan_mechanic:requestOpen', function()
    local src = source
    if not canOpen(src) then
        TriggerClientEvent('spartan_mechanic:notify', src, 'error', 'Sem permissão para o painel da oficina.')
        return
    end
    local payload = {
        open = true,
        locale = Config.Locale,
        jobs = listOpenJobsDto(),
        inventory = inventorySnapshot(),
        inbound = Inventory.inbound,
        catalog = PARTS_CATALOG,
        logs = Audit.entries,
    }
    if SME and SME.enrichBroadcast then SME.enrichBroadcast(payload) end
    TriggerClientEvent('spartan_mechanic:state', src, payload)
end)

RegisterNetEvent('spartan_mechanic:createJob', function(plate, family, mileage)
    local src = source
    if not canOpen(src) then return end
    Workshop.id_seq = Workshop.id_seq + 1
    local id = 'OS-' .. tostring(Workshop.id_seq)
    local name = GetPlayerName(src) or 'mechanic'
    local job = {
        id = id,
        plate = plate or 'SPRTN00',
        family = family or 'SEDAN',
        mileage_km = mileage or math.random(25000, 220000),
        state = JOB_STATE.INTAKE,
        labor_progress = 0,
        diagnostic = nil,
        parts_plan = {},
        qc_score = nil,
        mechanic = name,
        customer_name = 'Cliente',
        customer_phone = '',
        priority = 'normal',
        bay_id = nil,
        notes = {},
        tasks = {},
        hours_shop = 0,
        estimate_labor = 0,
        estimate_parts = 0,
        paid = false,
        warranty_until = nil,
        vin = '',
        flags = {},
        customer_document = '',
        customer_email = '',
        payment_terms = 'À vista',
        tax_regime = 'simples',
        invoices = {},
        invoice_draft = { lines = {}, cfop = '5933', notes = '' },
    }
    Workshop.jobs[id] = job
    audit(2, 'WORKSHOP', 'OS aberta', { job_id = id, plate = job.plate, actor = name })
    TriggerClientEvent('spartan_mechanic:notify', src, 'success', 'Ordem ' .. id .. ' criada.')
    broadcastUi()
end)

RegisterNetEvent('spartan_mechanic:transition', function(jobId, newState)
    local src = source
    if not canOpen(src) then return end
    local actor = GetPlayerName(src) or 'mechanic'
    local job = Workshop.jobs[jobId]
    if not job then return end
    local old = job.state
    if not VALID[old] or not VALID[old][newState] then
        audit(3, 'WORKSHOP', 'Transição inválida', { from = old, to = newState })
        TriggerClientEvent('spartan_mechanic:actionResult', src, false, 'invalid_transition')
        return
    end
    if newState == JOB_STATE.DIAGNOSTIC then
        job.diagnostic = runDiagnostic(job.family, job.mileage_km)
        job.parts_plan = job.diagnostic.parts_plan
        audit(2, 'DIAG', 'Diagnóstico', { job_id = jobId, dtc = job.diagnostic.dtc })
    elseif newState == JOB_STATE.PARTS_PULL then
        local ok, err = reserveAll(jobId, job.parts_plan, actor)
        if not ok then
            TriggerClientEvent('spartan_mechanic:actionResult', src, false, err)
            return
        end
    elseif newState == JOB_STATE.LABOR then
        job.labor_progress = 0
    elseif newState == JOB_STATE.QC then
        if old == JOB_STATE.LABOR and (job.labor_progress or 0) < 100 then
            TriggerClientEvent('spartan_mechanic:actionResult', src, false, 'labor_incomplete')
            return
        end
        if old == JOB_STATE.LABOR then
            if not commitAll(jobId, job.parts_plan, actor) then
                TriggerClientEvent('spartan_mechanic:actionResult', src, false, 'commit_failed')
                return
            end
            job.qc_score = math.random(85, 98)
        end
    elseif newState == JOB_STATE.CLOSED then
        releaseJobReserves(jobId, actor)
    end
    job.state = newState
    audit(2, 'WORKSHOP', 'Estado', { job_id = jobId, from = old, to = newState, actor = actor })
    TriggerClientEvent('spartan_mechanic:actionResult', src, true, nil)
    broadcastUi()
end)

RegisterNetEvent('spartan_mechanic:tickLabor', function(jobId)
    local src = source
    if not canOpen(src) then return end
    local job = Workshop.jobs[jobId]
    if not job or job.state ~= JOB_STATE.LABOR then return end
    job.labor_progress = math.min(100, (job.labor_progress or 0) + 12)
    if job.labor_progress >= 100 then
        local actor = GetPlayerName(src) or 'mechanic'
        job.state = JOB_STATE.QC
        commitAll(jobId, job.parts_plan, actor)
        job.qc_score = math.random(85, 98)
        audit(2, 'WORKSHOP', 'Labor concluído → QC', { job_id = jobId })
    end
    broadcastUi()
end)

RegisterNetEvent('spartan_mechanic:cancelJob', function(jobId)
    local src = source
    if not canOpen(src) then return end
    local job = Workshop.jobs[jobId]
    if not job or job.state == JOB_STATE.CLOSED then return end
    releaseJobReserves(jobId, GetPlayerName(src))
    job.state = JOB_STATE.CLOSED
    audit(3, 'WORKSHOP', 'OS cancelada', { job_id = jobId })
    TriggerClientEvent('spartan_mechanic:jobRemoved', -1, jobId)
    broadcastUi()
end)

CreateThread(function()
    while true do
        Wait(8000)
        for sku, def in pairs(PARTS_CATALOG) do
            if (Inventory.on_hand[sku] or 0) <= def.reorder_point then
                Inventory.inbound[#Inventory.inbound + 1] = {
                    sku = sku,
                    qty = def.reorder_point * 2,
                    eta_sec = math.random(20, 90),
                }
                if #Inventory.inbound > 12 then table.remove(Inventory.inbound, 1) end
            end
        end
    end
end)
