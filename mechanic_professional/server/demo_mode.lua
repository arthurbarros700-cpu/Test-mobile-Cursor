--[[
    Modo demonstração: roteiro ~5–6 min usando createJob, transition, tickLabor, cancelJob.
    Comando: /mechanicdemo
]]

local activeDemoFor = {}

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

local function sendBootstrap(player)
    if not isElement(player) then return end
    triggerClientEvent(player, "mechanic:onBootstrap", player, {
        jobs = (function()
            local list = MechanicWorkshop:listOpen()
            local dto = {}
            for j = 1, #list do
                dto[j] = jobToDto(list[j])
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
    triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(60, LOG_LEVEL.DEBUG))
end

local function broadcastJob(job)
    if not job then return end
    triggerClientEvent(root, "mechanic:onJobUpsert", root, jobToDto(job))
end

local function broadcastInventory()
    triggerClientEvent(root, "mechanic:onInventory", root, MechanicInventory:snapshot(), MechanicInventory:pendingInbound())
end

local function demoCue(player, payload)
    if not isElement(player) then return end
    triggerClientEvent(player, "mechanic:demoPhase", resourceRoot, payload or {})
end

local function findJobByPlate(plate)
    for _, j in pairs(MechanicWorkshop.jobs or {}) do
        if j.plate == plate then return j end
    end
    return nil
end

--[[ Agenda steps em T+ms desde o início da demo (todos os setTimers registrados de uma vez). ]]
local function runDemoSequence(player)
    if activeDemoFor[player] then
        outputChatBox("[MechanicPro] Demonstração já em execução.", player, 255, 160, 60)
        return
    end
    activeDemoFor[player] = true

    local jobMain = nil
    local T = 0

    local function schedule(delayMs, fn)
        T = T + delayMs
        local fireAt = T
        setTimer(function()
            if not isElement(player) then return end
            fn()
        end, fireAt, 1)
    end

    schedule(800, function()
        demoCue(player, {
            title = "MechanicProfessional",
            subtitle = "Sistema de oficina — demonstração cinematográfica",
            narrator = "Narrador: FSM, estoque com reservas, diagnóstico multi-sensor e auditoria — mesmo pipeline de produção.",
            tab = "os",
            open_panel = true,
            phase = "intro",
        })
        sendBootstrap(player)
    end)

    schedule(14000, function()
        demoCue(player, {
            narrator = "Criamos OS DEMO7K2 (SUV, 188000 km) via MechanicWorkshop:createJob — evento real do resource.",
            tab = "os",
            phase = "create_job",
        })
        jobMain = MechanicWorkshop:createJob(player, "DEMO7K2", VEHICLE_FAMILY.SUV, 188000)
        broadcastJob(jobMain)
        broadcastInventory()
        triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(45, LOG_LEVEL.DEBUG))
    end)

    schedule(12000, function()
        demoCue(player, {
            narrator = "INTAKE: use F2 para o painel DX. Selecione a OS na lista para ver placa, família e quilometragem.",
            tab = "os",
            phase = "intake",
        })
    end)

    schedule(10000, function()
        local ok, err = MechanicWorkshop:transition(jobMain.id, JOB_STATE.DIAGNOSTIC, player)
        broadcastJob(MechanicWorkshop:get(jobMain.id))
        broadcastInventory()
        triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(55, LOG_LEVEL.DEBUG))
        demoCue(player, {
            narrator = ok and "DIAGNOSTIC: runProfile gera sensores, DTC e plano de peças — possível correlação com DTC_REGISTRY massivo."
                or ("Transição: " .. tostring(err)),
            tab = "os",
            phase = "diagnostic",
        })
    end)

    schedule(16000, function()
        demoCue(player, {
            narrator = "Aba Logs: entradas INFO/WARN/ERROR com contexto JSON no servidor (outputDebugString).",
            tab = "log",
            phase = "audit_intro",
        })
        triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(65, LOG_LEVEL.INFO))
    end)

    schedule(12000, function()
        demoCue(player, {
            narrator = "PARTS_PULL: transition reserva cada SKU do plano; falha libera rollback automático das reservas parciais.",
            tab = "inv",
            phase = "parts_pull",
        })
        local ok, err = MechanicWorkshop:transition(jobMain.id, JOB_STATE.PARTS_PULL, player)
        broadcastJob(MechanicWorkshop:get(jobMain.id))
        broadcastInventory()
        triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(65, LOG_LEVEL.INFO))
        if not ok then
            demoCue(player, { narrator = "Estoque: " .. tostring(err), tab = "log" })
        end
    end)

    schedule(14000, function()
        demoCue(player, {
            narrator = "Disponível = on_hand − soma de reservas. SKUs gerados (SKU-GEN-*) usam inicialização lazy no servidor.",
            tab = "inv",
            phase = "inventory_math",
        })
    end)

    schedule(10000, function()
        MechanicWorkshop:transition(jobMain.id, JOB_STATE.LABOR, player)
        broadcastJob(MechanicWorkshop:get(jobMain.id))
        broadcastInventory()
        demoCue(player, {
            narrator = "LABOR: em jogo você clicaria 'Trabalhar' nove vezes; a demo dispara mechanic:tickLabor no mesmo intervalo.",
            tab = "os",
            phase = "labor",
        })
    end)

    for k = 1, 9 do
        schedule(k == 1 and 5000 or 5200, function()
            if not jobMain then return end
            MechanicWorkshop:tickLabor(jobMain.id, 12, player)
            broadcastJob(MechanicWorkshop:get(jobMain.id))
            demoCue(player, {
                narrator = string.format("tickLabor +12%% — passo %d/9 (evento mechanic:tickLabor).", k),
                tab = "os",
                phase = "labor_tick",
            })
        end)
    end

    schedule(12000, function()
        local j = jobMain and MechanicWorkshop:get(jobMain.id)
        demoCue(player, {
            narrator = j and j.state == JOB_STATE.QC and "QC: ao atingir 100%% no labor, a FSM fez commit no estoque e gerou nota de qualidade."
                or ("Estado atual: " .. tostring(j and j.state)),
            tab = "os",
            phase = "qc",
        })
        broadcastInventory()
        triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(75, LOG_LEVEL.INFO))
    end)

    schedule(12000, function()
        local ok, err = MechanicWorkshop:transition(jobMain.id, JOB_STATE.READY, player)
        broadcastJob(MechanicWorkshop:get(jobMain.id))
        demoCue(player, {
            narrator = ok and "READY: transição válida na máquina de estados — veículo pronto para retirada."
                or tostring(err),
            tab = "os",
            phase = "ready",
        })
    end)

    schedule(14000, function()
        demoCue(player, {
            narrator = "CLOSED: encerra OS e dispara releaseJob no inventário para qualquer reserva remanescente.",
            tab = "log",
            phase = "close_prep",
        })
    end)

    schedule(12000, function()
        MechanicWorkshop:transition(jobMain.id, JOB_STATE.CLOSED, player)
        triggerClientEvent(root, "mechanic:onJobRemoved", root, jobMain.id)
        broadcastInventory()
        triggerClientEvent(player, "mechanic:onAuditSlice", player, MechanicAudit:recent(85, LOG_LEVEL.INFO))
        demoCue(player, {
            narrator = "Segunda OS XPT0K9: createJob + diagnóstico, depois cancelJob — equivalente a F10 no cliente.",
            tab = "os",
            phase = "second_os",
        })
        local j2 = MechanicWorkshop:createJob(player, "XPT0K9", VEHICLE_FAMILY.COMPACT, 42000)
        MechanicWorkshop:transition(j2.id, JOB_STATE.DIAGNOSTIC, player)
        broadcastJob(MechanicWorkshop:get(j2.id))
    end)

    schedule(16000, function()
        local j2 = findJobByPlate("XPT0K9")
        if j2 then
            MechanicWorkshop:cancelJob(j2.id, player)
            triggerClientEvent(root, "mechanic:onJobRemoved", root, j2.id)
        end
        broadcastInventory()
        demoCue(player, {
            narrator = "Cancelamento concluído. Catálogo massivo permanece apenas nos scripts server/generated.",
            tab = "inv",
            phase = "cancel",
        })
    end)

    schedule(20000, function()
        demoCue(player, {
            narrator = "Regeneração: node tools/gen-megadata.mjs — TARGET_LINES ajusta volume da base Lua.",
            tab = "log",
            phase = "scale",
        })
        sendBootstrap(player)
    end)

    schedule(18000, function()
        demoCue(player, {
            title = "Demonstração concluída",
            subtitle = "MechanicProfessional",
            narrator = "Comando /mechanicdemo repete o roteiro. Grave 5+ min com OBS ou captura de tela cheia.",
            tab = "os",
            open_panel = true,
            done = true,
            phase = "fin",
        })
        outputChatBox("[MechanicPro] Demo finalizada (~5–6 min de roteiro).", player, 80, 220, 120)
        activeDemoFor[player] = nil
    end)
end

addEvent("mechanic:startDemo", true)
addEventHandler("mechanic:startDemo", root, function()
    local p = client
    if not isElement(p) or getElementType(p) ~= "player" then return end
    outputChatBox("[MechanicPro] Demonstração iniciada — siga o narrador na tela.", p, 0, 200, 255)
    runDemoSequence(p)
end)

addCommandHandler("mechanicdemo", function(player)
    if not isElement(player) or getElementType(player) ~= "player" then return end
    outputChatBox("[MechanicPro] Demonstração iniciada — siga o narrador na tela.", player, 0, 200, 255)
    runDemoSequence(player)
end)
