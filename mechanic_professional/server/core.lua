--[[
    RPC servidor: painel, fluxo da OS, labor tick, snapshot de estoque e stream de logs.
]]

addEvent("mechanic:requestBootstrap", true)
addEvent("mechanic:createJob", true)
addEvent("mechanic:jobTransition", true)
addEvent("mechanic:tickLabor", true)
addEvent("mechanic:cancelJob", true)
addEvent("mechanic:refreshLogs", true)

local function sendLogSlice(client, minLevel)
    local entries = MechanicAudit:recent(60, minLevel or LOG_LEVEL.DEBUG)
    triggerClientEvent(client, "mechanic:onAuditSlice", client, entries)
end

local function jobToDto(job)
    if not job then return nil end
    return {
        id = job.id,
        plate = job.plate,
        family = job.family,
        mileage_km = job.mileage_km,
        state = job.state,
        labor_progress = job.labor_progress,
        qc_score = job.qc_score,
        mechanic = job.mechanic,
        parts_plan = job.parts_plan,
        diagnostic = job.diagnostic,
    }
end

addEventHandler("mechanic:requestBootstrap", root, function()
    local client = client
    if not isElement(client) then return end
    triggerClientEvent(client, "mechanic:onBootstrap", client, {
        jobs = (function()
            local list = MechanicWorkshop:listOpen()
            local dto = {}
            for i = 1, #list do
                dto[i] = jobToDto(list[i])
            end
            return dto
        end)(),
        inventory = MechanicInventory:snapshot(),
        inbound = MechanicInventory:pendingInbound(),
        catalog = (function()
            local c = {}
            for sku, def in pairs(PARTS_CATALOG) do
                if sku:sub(1, 8) ~= "SKU-GEN-" then
                    c[sku] = def
                end
            end
            return c
        end)(),
    })
    sendLogSlice(client, LOG_LEVEL.DEBUG)
end)

addEventHandler("mechanic:createJob", root, function(plate, family, mileageKm)
    local p = client
    if not isElement(p) then return end
    local job = MechanicWorkshop:createJob(p, plate, family, mileageKm)
    triggerClientEvent(root, "mechanic:onJobUpsert", root, jobToDto(job))
    sendLogSlice(p, LOG_LEVEL.INFO)
end)

addEventHandler("mechanic:jobTransition", root, function(jobId, newState)
    local p = client
    if not isElement(p) then return end
    local ok, err = MechanicWorkshop:transition(jobId, newState, p)
    local job = MechanicWorkshop:get(jobId)
    triggerClientEvent(p, "mechanic:onActionResult", p, { ok = ok, err = err, job = jobToDto(job) })
    if job then
        triggerClientEvent(root, "mechanic:onJobUpsert", root, jobToDto(job))
    end
    triggerClientEvent(root, "mechanic:onInventory", root, MechanicInventory:snapshot(), MechanicInventory:pendingInbound())
    sendLogSlice(p, LOG_LEVEL.DEBUG)
end)

addEventHandler("mechanic:tickLabor", root, function(jobId)
    local p = client
    if not isElement(p) then return end
    MechanicWorkshop:tickLabor(jobId, 12, p)
    local job = MechanicWorkshop:get(jobId)
    if job then
        triggerClientEvent(root, "mechanic:onJobUpsert", root, jobToDto(job))
    end
end)

addEventHandler("mechanic:cancelJob", root, function(jobId)
    local p = client
    if not isElement(p) then return end
    MechanicWorkshop:cancelJob(jobId, p)
    triggerClientEvent(root, "mechanic:onJobRemoved", root, jobId)
    triggerClientEvent(root, "mechanic:onInventory", root, MechanicInventory:snapshot(), MechanicInventory:pendingInbound())
    sendLogSlice(p, LOG_LEVEL.INFO)
end)

addEventHandler("mechanic:refreshLogs", root, function(minLevel)
    local p = client
    if not isElement(p) then return end
    sendLogSlice(p, minLevel or LOG_LEVEL.DEBUG)
end)

addEventHandler("onResourceStart", resourceRoot, function()
    local parts = MECHANIC_GEN_PARTS_COUNT
    local dtc = MECHANIC_GEN_DTC_COUNT
    local proc = MECHANIC_GEN_PROC_COUNT
    local veh = MECHANIC_GEN_VEHICLE_COUNT
    if parts then
        outputDebugString(
            string.format(
                "[MechanicProfessional] bases geradas: %d SKUs, %d DTCs, %d procedimentos, %d perfis de veículo.",
                parts or 0,
                dtc or 0,
                proc or 0,
                veh or 0
            ),
            3
        )
    else
        outputDebugString("[MechanicProfessional] resource iniciado — catálogo core apenas (rode node tools/gen-megadata.mjs).", 3)
    end
end)
