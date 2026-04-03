--[[
    Máquina de estados da ordem de serviço (OS): transições validadas, timeouts simulados,
    integração com estoque e diagnóstico.
]]

local WorkshopFSM = {}
WorkshopFSM.__index = WorkshopFSM

local VALID = {
    [JOB_STATE.INTAKE] = { [JOB_STATE.DIAGNOSTIC] = true },
    [JOB_STATE.DIAGNOSTIC] = { [JOB_STATE.PARTS_PULL] = true, [JOB_STATE.INTAKE] = true },
    [JOB_STATE.PARTS_PULL] = { [JOB_STATE.LABOR] = true },
    [JOB_STATE.LABOR] = { [JOB_STATE.QC] = true },
    [JOB_STATE.QC] = { [JOB_STATE.READY] = true, [JOB_STATE.LABOR] = true },
    [JOB_STATE.READY] = { [JOB_STATE.CLOSED] = true },
    [JOB_STATE.CLOSED] = {},
}

function WorkshopFSM:new()
    local o = { jobs = {}, id_seq = 1000 }
    setmetatable(o, self)
    return o
end

function WorkshopFSM:_nextJobId()
    self.id_seq = self.id_seq + 1
    return "OS-" .. tostring(self.id_seq)
end

function WorkshopFSM:createJob(player, plate, family, mileageKm)
    local jobId = self:_nextJobId()
    local job = {
        id = jobId,
        plate = plate or "ABC0D00",
        family = family or VEHICLE_FAMILY.SEDAN,
        mileage_km = mileageKm or math.random(15000, 220000),
        state = JOB_STATE.INTAKE,
        created_tick = getTickCount(),
        diagnostic = nil,
        parts_plan = {},
        labor_progress = 0,
        qc_score = nil,
        mechanic = isElement(player) and getPlayerName(player) or "system",
    }
    self.jobs[jobId] = job
    MechanicAudit:append(LOG_LEVEL.INFO, "WORKSHOP", "OS aberta", {
        job_id = jobId,
        plate = job.plate,
        family = job.family,
        mileage_km = job.mileage_km,
        actor = job.mechanic,
    })
    return job
end

function WorkshopFSM:get(jobId)
    return self.jobs[jobId]
end

function WorkshopFSM:listOpen()
    local t = {}
    for _, j in pairs(self.jobs) do
        if j.state ~= JOB_STATE.CLOSED then
            t[#t + 1] = j
        end
    end
    table.sort(t, function(a, b) return a.created_tick > b.created_tick end)
    return t
end

function WorkshopFSM:transition(jobId, newState, player)
    local job = self.jobs[jobId]
    if not job then
        return false, "job_not_found"
    end
    local actor = isElement(player) and getPlayerName(player) or "system"
    local old = job.state
    if not VALID[old] or not VALID[old][newState] then
        MechanicAudit:append(LOG_LEVEL.WARN, "WORKSHOP", "transição inválida", {
            job_id = jobId,
            from = old,
            to = newState,
            actor = actor,
        })
        return false, "invalid_transition"
    end

    if newState == JOB_STATE.DIAGNOSTIC then
        job.diagnostic = MechanicDiagnostics:runProfile(job.family, job.mileage_km)
        job.parts_plan = job.diagnostic.parts_plan or {}
        MechanicAudit:append(LOG_LEVEL.INFO, "DIAG", "diagnóstico concluído", {
            job_id = jobId,
            dtc = job.diagnostic.dtc,
            actor = actor,
        })
    elseif newState == JOB_STATE.PARTS_PULL then
        for _, line in ipairs(job.parts_plan) do
            local ok, err = MechanicInventory:reserve(jobId, line.sku, line.qty, actor)
            if not ok then
                MechanicInventory:releaseJob(jobId, actor)
                MechanicAudit:append(LOG_LEVEL.ERROR, "WORKSHOP", "falha na reserva — rollback", {
                    job_id = jobId,
                    sku = line.sku,
                    err = err,
                    actor = actor,
                })
                return false, "reserve_failed:" .. tostring(err)
            end
        end
    elseif newState == JOB_STATE.LABOR then
        job.labor_progress = 0
    elseif newState == JOB_STATE.QC then
        for _, line in ipairs(job.parts_plan) do
            local ok, err = MechanicInventory:commitForJob(jobId, line.sku, line.qty, actor)
            if not ok then
                MechanicAudit:append(LOG_LEVEL.CRITICAL, "INVENTORY", "commit falhou na transição QC", {
                    job_id = jobId,
                    sku = line.sku,
                    err = err,
                    actor = actor,
                })
                return false, "commit_failed"
            end
        end
        job.qc_score = math.random(82, 99)
    elseif newState == JOB_STATE.READY then
        if (job.qc_score or 0) < 80 then
            MechanicAudit:append(LOG_LEVEL.WARN, "QC", "reprovado — retorno ao laboratório", {
                job_id = jobId,
                score = job.qc_score,
                actor = actor,
            })
            return false, "qc_failed"
        end
    elseif newState == JOB_STATE.CLOSED then
        MechanicInventory:releaseJob(jobId, actor)
    end

    job.state = newState
    MechanicAudit:append(LOG_LEVEL.INFO, "WORKSHOP", "transição de estado", {
        job_id = jobId,
        from = old,
        to = newState,
        actor = actor,
    })
    return true
end

function WorkshopFSM:tickLabor(jobId, delta, player)
    local job = self.jobs[jobId]
    if not job or job.state ~= JOB_STATE.LABOR then return false end
    job.labor_progress = math.min(100, (job.labor_progress or 0) + delta)
    if job.labor_progress >= 100 then
        return self:transition(jobId, JOB_STATE.QC, player)
    end
    return true
end

function WorkshopFSM:cancelJob(jobId, player)
    local job = self.jobs[jobId]
    if not job or job.state == JOB_STATE.CLOSED then return false end
    local actor = isElement(player) and getPlayerName(player) or "system"
    MechanicInventory:releaseJob(jobId, actor)
    job.state = JOB_STATE.CLOSED
    MechanicAudit:append(LOG_LEVEL.WARN, "WORKSHOP", "OS cancelada", { job_id = jobId, actor = actor })
    return true
end

_G.MechanicWorkshop = WorkshopFSM:new()
