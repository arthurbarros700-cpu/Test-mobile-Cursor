local panelOpen = false
local currentVehicle = 0
local currentNetId = 0
local lastHealthPayload = nil
local lastSync = 0

local function getPed()
    return PlayerPedId()
end

local function getClosestVehicle(maxDist)
    local ped = getPed()
    local coords = GetEntityCoords(ped)
    local veh = GetVehiclePedIsIn(ped, false)
    if veh ~= 0 then return veh end
    veh = GetClosestVehicle(coords.x, coords.y, coords.z, maxDist or Config.MaxVehicleDistance, 0, 71)
    if veh == 0 then return 0 end
    local vc = GetEntityCoords(veh)
    if #(coords - vc) > (maxDist or Config.MaxVehicleDistance) then return 0 end
    return veh
end

local function normEngine(h)
    h = h or 1000.0
    return math.floor(math.max(0, math.min(100, (h / 1000.0) * 100)))
end

local function normBody(h)
    h = h or 1000.0
    return math.floor(math.max(0, math.min(100, (h / 1000.0) * 100)))
end

local function tyreHealth(veh)
    local burst = 0
    for i = 0, 5 do
        if IsVehicleTyreBurst(veh, i, true) or IsVehicleTyreBurst(veh, i, false) then
            burst = burst + 1
        end
    end
    local maxW = 4
    local pct = 100 - math.floor((burst / maxW) * 100)
    return math.max(0, math.min(100, pct))
end

local function windowHealth(veh)
    local broken = 0
    local total = 8
    for w = 0, 7 do
        if not IsVehicleWindowIntact(veh, w) then
            broken = broken + 1
        end
    end
    return math.floor(((total - broken) / total) * 100)
end

local function doorHealth(veh)
    local damaged = 0
    local count = 0
    for d = 0, 5 do
        if GetIsDoorValid(veh, d) then
            count = count + 1
            if IsVehicleDoorDamaged(veh, d) then
                damaged = damaged + 1
            end
        end
    end
    if count == 0 then return 100 end
    return math.floor(((count - damaged) / count) * 100)
end

--- Depósito / linha: proxy a partir do motor e fuga de combustível (sem nativo direto)
local function tankHealth(veh, enginePct)
    local fuel = GetVehicleFuelLevel(veh)
    local f = math.max(0, math.min(100, fuel))
    local leakPenalty = 0
    if enginePct < 40 then leakPenalty = 15 end
    if enginePct < 20 then leakPenalty = 35 end
    return math.max(0, math.min(100, math.floor((f * 0.6) + (enginePct * 0.4) - leakPenalty)))
end

--- Escape: combina RPM alto com desgaste de motor (simulação de tubagem)
local function exhaustHealth(veh, enginePct)
    local rpm = GetVehicleCurrentRpm(veh)
    local stress = 0
    if rpm > 0.85 then stress = 12 end
    if rpm > 0.95 then stress = 22 end
    local base = math.floor(enginePct * 0.85 + (100 - stress))
    if enginePct < 30 then base = base - 20 end
    return math.max(0, math.min(100, base))
end

local function statusForPct(pct, warn, bad)
    if pct >= warn then return 'ok', L('status_ok') end
    if pct >= bad then return 'wear', L('status_wear') end
    return 'critical', L('status_critical')
end

local function buildDiagnostic(veh)
    local eh = GetVehicleEngineHealth(veh)
    local bh = GetVehicleBodyHealth(veh)
    local enginePct = normEngine(eh)
    local bodyPct = normBody(bh)
    local tyrePct = tyreHealth(veh)
    local winPct = windowHealth(veh)
    local doorPct = doorHealth(veh)
    local tankPct = tankHealth(veh, enginePct)
    local exhaustPct = exhaustHealth(veh, enginePct)

    local subs = {
        {
            id = 'engine',
            label = L('subsystem_engine'),
            pct = math.floor((enginePct + bodyPct) / 2),
            keys = { 'engine' },
        },
        {
            id = 'body',
            label = L('subsystem_body'),
            pct = bodyPct,
            keys = { 'body' },
        },
        {
            id = 'tank',
            label = L('subsystem_tank'),
            pct = tankPct,
            keys = { 'tank' },
        },
        {
            id = 'tyres',
            label = L('subsystem_tyres'),
            pct = tyrePct,
            keys = { 'tyres' },
        },
        {
            id = 'doors',
            label = L('subsystem_doors'),
            pct = doorPct,
            keys = { 'doors' },
        },
        {
            id = 'windows',
            label = L('subsystem_windows'),
            pct = winPct,
            keys = { 'windows' },
        },
        {
            id = 'exhaust',
            label = L('subsystem_exhaust'),
            pct = exhaustPct,
            keys = { 'exhaust' },
        },
    }

    for _, s in ipairs(subs) do
        local st, stLabel
        if s.id == 'engine' then
            st, stLabel = statusForPct(s.pct, Config.Thresholds.engineWarn / 10, Config.Thresholds.engineBad / 10)
        elseif s.id == 'body' then
            st, stLabel = statusForPct(s.pct, Config.Thresholds.bodyWarn / 10, Config.Thresholds.bodyBad / 10)
        elseif s.id == 'tank' then
            st, stLabel = statusForPct(s.pct, Config.Thresholds.tankWarn / 10, Config.Thresholds.tankBad / 10)
        else
            st, stLabel = statusForPct(s.pct, 70, 45)
        end
        s.status = st
        s.statusLabel = stLabel
    end

    return {
        subsystems = subs,
        raw = {
            engine = eh,
            body = bh,
            fuel = GetVehicleFuelLevel(veh),
        },
    }
end

local function applyPartRepair(veh, partId)
    local part = Config.Parts[partId]
    if not veh or veh == 0 then return end
    if not part then return end
    for _, key in ipairs(part.healthKeys or {}) do
        if key == 'engine' then
            SetVehicleEngineHealth(veh, 1000.0)
        elseif key == 'body' then
            SetVehicleBodyHealth(veh, 1000.0)
            SetVehicleDeformationFixed(veh)
        elseif key == 'tank' then
            SetVehiclePetrolTankHealth(veh, 1000.0)
            SetVehicleFuelLevel(veh, 100.0)
        elseif key == 'tyres' then
            for i = 0, 5 do
                SetVehicleTyreFixed(veh, i)
            end
        elseif key == 'doors' then
            for d = 0, 5 do
                if GetIsDoorValid(veh, d) then
                    pcall(function()
                        SetVehicleDoorBroken(veh, d, false)
                    end)
                    SetVehicleDoorShut(veh, d, false)
                end
            end
        elseif key == 'windows' then
            for w = 0, 7 do
                RollUpWindow(veh, w)
                FixVehicleWindow(veh, w)
            end
        elseif key == 'exhaust' then
            SetVehicleEngineHealth(veh, math.max(GetVehicleEngineHealth(veh), 920.0))
        end
    end
    SetVehicleUndriveable(veh, false)
end

local function playerCoordsTable()
    local c = GetEntityCoords(getPed())
    return { x = c.x, y = c.y, z = c.z }
end

local function partsForNui()
    local list = {}
    for id, def in pairs(Config.Parts) do
        list[#list + 1] = {
            id = id,
            label = L(def.labelKey or id),
            basePrice = def.basePrice,
            requiresShop = def.requiresShop == true,
            isExhaustJob = def.isExhaustJob == true,
            healthKeys = def.healthKeys,
        }
    end
    table.sort(list, function(a, b) return a.label < b.label end)
    return list
end

local function openPanel()
    if panelOpen then return end
    local veh = getClosestVehicle()
    if veh == 0 then
        TriggerEvent('chat:addMessage', { args = { '^1', L('no_vehicle') } })
        return
    end
    currentVehicle = veh
    currentNetId = NetworkGetNetworkIdFromEntity(veh)
    local diag = buildDiagnostic(veh)
    lastHealthPayload = diag
    SetNuiFocus(true, true)
    panelOpen = true
    SendNUIMessage({
        action = 'open',
        locale = {
            diagnostic_title = L('diagnostic_title'),
            stock_title = L('stock_title'),
            repair_started = L('repair_started'),
            not_in_shop = L('not_in_shop'),
            no_stock = L('no_stock'),
            not_enough_money = L('not_enough_money'),
            no_job = L('no_job'),
        },
        parts = partsForNui(),
        diagnostic = diag,
    })
    TriggerServerEvent('mechanic:server:getPanelData', json.encode(playerCoordsTable()), currentNetId)
end

local function closePanel()
    if not panelOpen then return end
    SetNuiFocus(false, false)
    panelOpen = false
    SendNUIMessage({ action = 'close' })
end

RegisterNUICallback('close', function(_, cb)
    closePanel()
    cb({ ok = true })
end)

RegisterNUICallback('refresh', function(_, cb)
    local veh = getClosestVehicle()
    if veh == 0 then
        cb({ ok = false, reason = 'no_vehicle' })
        return
    end
    currentVehicle = veh
    currentNetId = NetworkGetNetworkIdFromEntity(veh)
    local diag = buildDiagnostic(veh)
    lastHealthPayload = diag
    SendNUIMessage({ action = 'diagnostic', diagnostic = diag })
    TriggerServerEvent('mechanic:server:getPanelData', json.encode(playerCoordsTable()), currentNetId)
    cb({ ok = true })
end)

RegisterNUICallback('repair', function(data, cb)
    local partId = data and data.partId
    if type(partId) ~= 'string' then
        cb({ ok = false })
        return
    end
    local veh = getClosestVehicle()
    if veh == 0 then
        cb({ ok = false, reason = 'no_vehicle' })
        return
    end
    currentVehicle = veh
    currentNetId = NetworkGetNetworkIdFromEntity(veh)
    TriggerServerEvent('mechanic:server:repairRequest', json.encode({
        partId = partId,
        coords = playerCoordsTable(),
        netId = currentNetId,
    }))
    cb({ ok = true })
end)

RegisterNetEvent('mechanic:client:panelData', function(payload)
    SendNUIMessage({
        action = 'panelData',
        shop = payload.shop,
        stock = payload.stock,
        money = payload.money,
        canUseShop = payload.canUseShop,
    })
end)

local function loadAnimDict(dict)
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        local t = GetGameTimer() + 5000
        while not HasAnimDictLoaded(dict) and GetGameTimer() < t do
            Wait(10)
        end
    end
    return HasAnimDictLoaded(dict)
end

local function playRepairScene(totalMs, stages)
    local ped = getPed()
    local veh = currentVehicle
    if veh == 0 then return false end
    TaskTurnPedToFaceEntity(ped, veh, 800)
    Wait(600)
    local dict = 'mini@repair'
    local anim = 'fixing_a_player'
    if not loadAnimDict(dict) then
        dict = 'amb@world_human_vehicle_mechanic@male@base'
        anim = 'base'
        loadAnimDict(dict)
    end
    local start = GetGameTimer()
    local stageIndex = 1
    if stages and #stages > 0 then
        TriggerEvent('chat:addMessage', { args = { '^3', stages[1] } })
    end
    while GetGameTimer() - start < totalMs do
        if not DoesEntityExist(veh) or #(GetEntityCoords(ped) - GetEntityCoords(veh)) > Config.MaxVehicleDistance + 1.5 then
            return false
        end
        if stages and #stages > 1 then
            local elapsed = GetGameTimer() - start
            local slice = totalMs / #stages
            local si = math.min(#stages, math.floor(elapsed / slice) + 1)
            if si ~= stageIndex then
                stageIndex = si
                TriggerEvent('chat:addMessage', { args = { '^3', stages[stageIndex] } })
            end
        end
        if not IsEntityPlayingAnim(ped, dict, anim, 3) then
            TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 49, 0.0, false, false, false)
        end
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 257, true)
        Wait(0)
    end
    ClearPedTasks(ped)
    return true
end

RegisterNetEvent('mechanic:client:repairResult', function(ok, reason, extra)
    if not ok then
        local msg = reason
        if reason == 'not_in_shop' then msg = L('not_in_shop')
        elseif reason == 'no_stock' then msg = L('no_stock')
        elseif reason == 'not_enough_money' then msg = L('not_enough_money')
        elseif reason == 'no_job' then msg = L('no_job')
        else msg = reason or 'error' end
        TriggerEvent('chat:addMessage', { args = { '^1', msg } })
        SendNUIMessage({ action = 'toast', level = 'error', message = msg })
        return
    end
    local partId = extra and extra.partId
    local repairMs = (extra and extra.repairMs) or 8000
    local isExhaust = extra and extra.isExhaust
    closePanel()
    TriggerEvent('chat:addMessage', { args = { '^2', L('repair_started') } })
    local stages = nil
    if isExhaust then
        stages = { L('stage_remove'), L('stage_fit'), L('stage_weld') }
    end
    local success = playRepairScene(repairMs, stages)
    if not success then
        TriggerServerEvent('mechanic:server:repairAbort')
        TriggerEvent('chat:addMessage', { args = { '^1', L('cancelled') } })
        return
    end
    local veh = getClosestVehicle()
    if veh ~= 0 and partId then
        applyPartRepair(veh, partId)
    end
    TriggerServerEvent('mechanic:server:repairCommit')
    SendNUIMessage({ action = 'toast', level = 'ok', message = L('repair_done') })
end)

RegisterNetEvent('mechanic:client:toast', function(msg)
    TriggerEvent('chat:addMessage', { args = { '^2', msg } })
end)

RegisterCommand('mecanica', function()
    openPanel()
end, false)

RegisterKeyMapping('mecanica', L('open_panel'), 'keyboard', 'h')

CreateThread(function()
    for _, shop in ipairs(Config.Shops) do
        local b = shop.blip
        if b then
            local blip = AddBlipForCoord(shop.coords.x, shop.coords.y, shop.coords.z)
            SetBlipSprite(blip, b.sprite or 446)
            SetBlipColour(blip, b.color or 5)
            SetBlipScale(blip, b.scale or 0.8)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(shop.label)
            EndTextCommandSetBlipName(blip)
        end
    end
end)

CreateThread(function()
    while true do
        Wait(Config.DamagePollInterval)
        if Config.SyncHealthToServer and currentVehicle ~= 0 and DoesEntityExist(currentVehicle) then
            local now = GetGameTimer()
            if now - lastSync > Config.ServerSyncInterval then
                lastSync = now
                local d = buildDiagnostic(currentVehicle)
                TriggerServerEvent('mechanic:server:syncVehicleHealth', NetworkGetNetworkIdFromEntity(currentVehicle), json.encode(d))
            end
        end
    end
end)

CreateThread(function()
    while true do
        Wait(0)
        if panelOpen and IsControlJustReleased(0, 322) then -- ESC
            closePanel()
        end
    end
end)
