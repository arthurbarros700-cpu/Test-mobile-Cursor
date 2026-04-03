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

addEvent("mechanic:requestBootstrap", true)
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
        catalog = PARTS_CATALOG,
    })
    sendLogSlice(client, LOG_LEVEL.DEBUG)
end)

addEvent("mechanic:createJob", true)
addEventHandler("mechanic:createJob", root, function(plate, family, mileageKm)
    local p = client
    if not isElement(p) then return end
    local job = MechanicWorkshop:createJob(p, plate, family, mileageKm)
    triggerClientEvent(root, "mechanic:onJobUpsert", root, jobToDto(job))
    sendLogSlice(p, LOG_LEVEL.INFO)
end)

addEvent("mechanic:jobTransition", true)
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

addEvent("mechanic:tickLabor", true)
addEventHandler("mechanic:tickLabor", root, function(jobId)
    local p = client
    if not isElement(p) then return end
    MechanicWorkshop:tickLabor(jobId, 12, p)
    local job = MechanicWorkshop:get(jobId)
    if job then
        triggerClientEvent(root, "mechanic:onJobUpsert", root, jobToDto(job))
    end
end)

addEvent("mechanic:cancelJob", true)
addEventHandler("mechanic:cancelJob", root, function(jobId)
    local p = client
    if not isElement(p) then return end
    MechanicWorkshop:cancelJob(jobId, p)
    triggerClientEvent(root, "mechanic:onJobRemoved", root, jobId)
    triggerClientEvent(root, "mechanic:onInventory", root, MechanicInventory:snapshot(), MechanicInventory:pendingInbound())
    sendLogSlice(p, LOG_LEVEL.INFO)
end)

addEvent("mechanic:refreshLogs", true)
addEventHandler("mechanic:refreshLogs", root, function(minLevel)
    local p = client
    if not isElement(p) then return end
    sendLogSlice(p, minLevel or LOG_LEVEL.DEBUG)
end)

addEventHandler("onResourceStart", resourceRoot, function()
    outputDebugString("[MechanicProfessional] resource iniciado — oficina online.", 3)
end)
