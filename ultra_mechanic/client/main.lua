local RESOURCE = GetCurrentResourceName()

local uiOpen = false
local repairing = false
local currentVehicleContext = nil
local currentWorkshopId = nil
local damageCache = {}
local mileageSession = {}
local pendingRpc = {}
local reqCounter = 0
local lastVehicleSample = nil
local lastSyncAt = 0
local permissionCache = { at = 0, allowed = false }

local function clamp(value, minValue, maxValue)
    if value < minValue then
        return minValue
    end
    if value > maxValue then
        return maxValue
    end
    return value
end

local function round(value)
    return math.floor(value + 0.5)
end

local function normalizePlate(rawPlate)
    if type(rawPlate) ~= "string" then
        return ""
    end
    return rawPlate:gsub("^%s*(.-)%s*$", "%1"):upper()
end

local function notify(message, kind)
    kind = kind or "info"
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(("[~b~%s~s~] %s"):format(kind:upper(), tostring(message)))
    EndTextCommandThefeedPostTicker(false, true)
end

RegisterNetEvent("ultra_mechanic:client:notify", function(message, kind)
    notify(message, kind)
end)

local function callServer(action, payload, timeoutMs)
    reqCounter = reqCounter + 1
    local requestId = ("%s:%d:%d"):format(GetPlayerServerId(PlayerId()), GetGameTimer(), reqCounter)
    local p = promise.new()

    pendingRpc[requestId] = p
    TriggerServerEvent("ultra_mechanic:server:rpc", requestId, action, payload or {})

    SetTimeout(timeoutMs or 12000, function()
        if pendingRpc[requestId] then
            pendingRpc[requestId] = nil
            p:resolve({ ok = false, payload = { error = "timeout" } })
        end
    end)

    local result = Citizen.Await(p)
    return result.ok, result.payload
end

RegisterNetEvent("ultra_mechanic:client:rpc:response", function(requestId, ok, payload)
    local pending = pendingRpc[requestId]
    if not pending then
        return
    end
    pendingRpc[requestId] = nil
    pending:resolve({ ok = ok, payload = payload })
end)

local function buildDefaultComponents()
    local components = {}
    for componentId in pairs(Config.Components) do
        components[componentId] = 100.0
    end
    return components
end

local function mergeComponentState(rawState)
    local merged = buildDefaultComponents()
    if type(rawState) ~= "table" then
        return merged
    end

    for componentId in pairs(Config.Components) do
        local value = tonumber(rawState[componentId]) or 100.0
        merged[componentId] = clamp(value, 0.0, 100.0)
    end
    return merged
end

local function getClosestWorkshop()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local bestId, bestDistance

    for id, workshop in pairs(Config.Workshops) do
        local distance = #(coords - workshop.coords)
        if not bestDistance or distance < bestDistance then
            bestDistance = distance
            bestId = id
        end
    end

    return bestId, bestDistance or 999999.0
end

local function getVehicleContext()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle == 0 then
        local pedCoords = GetEntityCoords(ped)
        vehicle = GetClosestVehicle(pedCoords.x, pedCoords.y, pedCoords.z, 4.5, 0, 71)
    end

    if vehicle == 0 or not DoesEntityExist(vehicle) then
        return nil
    end

    local plate = normalizePlate(GetVehicleNumberPlateText(vehicle))
    if plate == "" then
        return nil
    end

    return {
        entity = vehicle,
        plate = plate,
        model = GetEntityModel(vehicle),
        vehicleClass = GetVehicleClass(vehicle)
    }
end

local function hasPermissionCached()
    local now = GetGameTimer()
    if now - permissionCache.at < 12000 then
        return permissionCache.allowed
    end

    local ok, payload = callServer("hasPermission", {})
    permissionCache.at = now
    permissionCache.allowed = ok and payload and payload.allowed or false

    if not permissionCache.allowed and payload and payload.message then
        notify(payload.message, "error")
    end

    return permissionCache.allowed
end

local function openPanel(workshopIdOverride)
    if uiOpen or repairing then
        return
    end

    if not hasPermissionCached() then
        return
    end

    local context = getVehicleContext()
    if not context then
        notify(L("no_vehicle"), "error")
        return
    end

    local workshopId = workshopIdOverride
    if not workshopId then
        local closestId, distance = getClosestWorkshop()
        local workshop = Config.Workshops[closestId]
        if not closestId or not workshop or distance > workshop.radius then
            notify(L("not_in_workshop"), "error")
            return
        end
        workshopId = closestId
    end

    local ok, panelPayload = callServer("getPanelData", {
        workshopId = workshopId,
        plate = context.plate,
        model = context.model
    })

    if not ok or not panelPayload then
        notify(L("invalid_request"), "error")
        return
    end

    currentWorkshopId = workshopId
    currentVehicleContext = context
    uiOpen = true

    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        payload = panelPayload
    })
end

local function closePanel()
    if not uiOpen then
        return
    end

    uiOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "close" })
end

RegisterCommand(Config.CommandOpenPanel, function()
    openPanel(nil)
end, false)

if Config.EnableKeybind then
    RegisterCommand("+ultra_mechanic_panel", function()
        openPanel(nil)
    end, false)

    RegisterCommand("-ultra_mechanic_panel", function()
    end, false)

    RegisterKeyMapping("+ultra_mechanic_panel", "Abrir painel da oficina", "keyboard", "F7")
end

RegisterNUICallback("close", function(_, cb)
    closePanel()
    cb({ ok = true })
end)

RegisterNUICallback("refresh", function(_, cb)
    if not currentVehicleContext or not currentWorkshopId then
        cb({ ok = false })
        return
    end

    local ok, panelPayload = callServer("getPanelData", {
        workshopId = currentWorkshopId,
        plate = currentVehicleContext.plate,
        model = currentVehicleContext.model
    })

    cb({
        ok = ok and panelPayload ~= nil,
        payload = panelPayload
    })
end)

RegisterNUICallback("createQuote", function(data, cb)
    if not currentVehicleContext or not currentWorkshopId then
        cb({ ok = false })
        return
    end

    local ok, response = callServer("createQuote", {
        workshopId = currentWorkshopId,
        plate = currentVehicleContext.plate,
        model = currentVehicleContext.model,
        tier = data and data.tier or "pro",
        components = data and data.components or {}
    })

    cb({ ok = ok, payload = response })
end)

local function performRepair(payload)
    if repairing then
        return
    end

    local repairId = payload and payload.repairId
    local plate = payload and payload.plate
    local durationMs = payload and payload.durationMs or 10000
    local targetComponents = payload and payload.finalComponents

    local context = getVehicleContext()
    if not context or context.plate ~= plate then
        notify(L("no_vehicle"), "error")
        return
    end

    repairing = true
    local ped = PlayerPedId()
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_WELDING", 0, true)

    local startedAt = GetGameTimer()
    local cancelled = false

    while GetGameTimer() - startedAt <= durationMs do
        Wait(200)
        DisableControlAction(0, 73, true)
        DisableControlAction(0, 75, true)

        local vehicle = context.entity
        if not DoesEntityExist(vehicle) then
            cancelled = true
            break
        end

        local pedCoords = GetEntityCoords(ped)
        local vehCoords = GetEntityCoords(vehicle)
        if #(pedCoords - vehCoords) > 7.5 then
            cancelled = true
            break
        end

        if IsControlJustReleased(0, 73) then
            cancelled = true
            break
        end

        local progress = clamp(((GetGameTimer() - startedAt) / durationMs) * 100.0, 0.0, 100.0)
        BeginTextCommandDisplayHelp("STRING")
        AddTextComponentSubstringPlayerName(("%s ~b~%d%%~s~ (G para cancelar)"):format(L("progress_repair"), round(progress)))
        EndTextCommandDisplayHelp(0, false, false, 1)
    end

    ClearPedTasks(ped)
    repairing = false

    local ok, response = callServer("finishRepair", {
        repairId = repairId,
        success = not cancelled
    })

    if not ok or not response then
        notify(L("invalid_request"), "error")
        return
    end

    if cancelled then
        notify(L("repair_cancelled"), "error")
        return
    end

    local vehicle = context.entity
    if DoesEntityExist(vehicle) and type(targetComponents) == "table" then
        damageCache[plate] = mergeComponentState(targetComponents)
    end

    notify(L("repair_finished"), "success")
end

RegisterNUICallback("startRepair", function(data, cb)
    if not currentVehicleContext or not currentWorkshopId then
        cb({ ok = false })
        return
    end

    local ok, response = callServer("startRepair", {
        workshopId = currentWorkshopId,
        plate = currentVehicleContext.plate,
        quoteId = data and data.quoteId
    })

    cb({ ok = ok, payload = response })

    if ok and response and response.repairId then
        closePanel()
        CreateThread(function()
            performRepair(response)
        end)
    end
end)

RegisterNUICallback("orderStock", function(data, cb)
    if not currentVehicleContext or not currentWorkshopId then
        cb({ ok = false })
        return
    end

    local ok, response = callServer("orderStock", {
        workshopId = currentWorkshopId,
        item = data and data.item,
        amount = data and data.amount
    })
    cb({ ok = ok, payload = response })
end)

RegisterNetEvent("ultra_mechanic:client:updateVehicleState", function(plate, components)
    plate = normalizePlate(plate)
    if plate == "" then
        return
    end
    damageCache[plate] = mergeComponentState(components)
end)

local function applyWear(state, km, speedKmh, rpm, collisionDamage)
    local base = (km * Config.BaseWearPerKm)

    state.engine = clamp(state.engine - (base * (1.15 + rpm * 0.9)) - collisionDamage * 0.65, 0.0, 100.0)
    state.transmission = clamp(state.transmission - (base * (0.8 + speedKmh / 260.0)) - collisionDamage * 0.45, 0.0, 100.0)
    state.brakes = clamp(state.brakes - (base * (0.72 + speedKmh / 300.0)) - collisionDamage * 0.60, 0.0, 100.0)
    state.suspension = clamp(state.suspension - (base * (0.68 + speedKmh / 280.0)) - collisionDamage * 0.90, 0.0, 100.0)
    state.electronics = clamp(state.electronics - (base * (0.52 + rpm * 0.55)) - collisionDamage * 0.35, 0.0, 100.0)
    state.body = clamp(state.body - (base * 0.40) - collisionDamage * 1.12, 0.0, 100.0)
    state.fuel = clamp(state.fuel - (base * (0.48 + speedKmh / 320.0)) - collisionDamage * 0.35, 0.0, 100.0)
    state.cooling = clamp(state.cooling - (base * (0.66 + rpm * 0.45)) - collisionDamage * 0.42, 0.0, 100.0)
    state.exhaust = clamp(state.exhaust - (base * (0.74 + rpm * 0.5)) - collisionDamage * 0.38, 0.0, 100.0)
    state.turbo = clamp(state.turbo - (base * (0.84 + rpm * 0.75)) - collisionDamage * 0.40, 0.0, 100.0)
end

local function applyVehicleEffects(vehicle, state)
    local driveHealth = math.min(state.engine, state.transmission, state.fuel, state.cooling)
    local engineHealth = 250.0 + (state.engine * 7.2)
    SetVehicleEngineHealth(vehicle, engineHealth)

    local powerPenalty = clamp((100.0 - driveHealth) / 100.0, 0.0, 1.0)
    SetVehicleEnginePowerMultiplier(vehicle, -(powerPenalty * 55.0))

    if state.engine < 20.0 and math.random() < 0.045 then
        SetVehicleEngineOn(vehicle, false, true, true)
        SetTimeout(800, function()
            if DoesEntityExist(vehicle) then
                SetVehicleEngineOn(vehicle, true, true, false)
            end
        end)
    end
end

CreateThread(function()
    while true do
        local waitTime = Config.DamageTickMs
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)

        if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped then
            local plate = normalizePlate(GetVehicleNumberPlateText(vehicle))
            if plate ~= "" then
                local coords = GetEntityCoords(vehicle)
                local speedKmh = GetEntitySpeed(vehicle) * 3.6
                local rpm = GetVehicleCurrentRpm(vehicle)
                local bodyHealth = GetVehicleBodyHealth(vehicle)
                local engineHealth = GetVehicleEngineHealth(vehicle)

                local state = damageCache[plate] or buildDefaultComponents()
                damageCache[plate] = state

                local distanceKm = 0.0
                local collisionDamage = 0.0

                if lastVehicleSample and lastVehicleSample.plate == plate then
                    distanceKm = #(coords - lastVehicleSample.coords) / 1000.0

                    local deltaBody = math.max(0.0, lastVehicleSample.bodyHealth - bodyHealth)
                    local deltaEngine = math.max(0.0, lastVehicleSample.engineHealth - engineHealth)
                    local impact = deltaBody + deltaEngine

                    if impact > Config.CollisionThreshold then
                        collisionDamage = impact * Config.CollisionScale
                    end
                end

                applyWear(state, distanceKm, speedKmh, rpm, collisionDamage)
                applyVehicleEffects(vehicle, state)

                mileageSession[plate] = (mileageSession[plate] or 0.0) + distanceKm
                lastVehicleSample = {
                    plate = plate,
                    coords = coords,
                    bodyHealth = bodyHealth,
                    engineHealth = engineHealth
                }

                local now = GetGameTimer()
                if now - lastSyncAt >= Config.SyncIntervalMs then
                    TriggerServerEvent("ultra_mechanic:server:syncVehicleState", {
                        plate = plate,
                        model = GetEntityModel(vehicle),
                        components = state,
                        mileage = mileageSession[plate] or 0.0
                    })

                    mileageSession[plate] = 0.0
                    lastSyncAt = now
                end

                waitTime = 0
            end
        else
            lastVehicleSample = nil
        end

        Wait(waitTime)
    end
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pCoords = GetEntityCoords(ped)
        local closestId, closestDistance = getClosestWorkshop()
        local waitTime = 800

        if closestId then
            local workshop = Config.Workshops[closestId]
            if workshop and closestDistance <= workshop.radius + 12.0 then
                waitTime = 0
                DrawMarker(
                    1,
                    workshop.coords.x,
                    workshop.coords.y,
                    workshop.coords.z - 1.0,
                    0.0, 0.0, 0.0,
                    0.0, 0.0, 0.0,
                    1.6, 1.6, 0.85,
                    workshop.markerColor.r,
                    workshop.markerColor.g,
                    workshop.markerColor.b,
                    workshop.markerColor.a,
                    false, false, 2, false, nil, nil, false
                )

                if closestDistance <= Config.WorkshopInteractDistance then
                    BeginTextCommandDisplayHelp("STRING")
                    AddTextComponentSubstringPlayerName(("~INPUT_CONTEXT~ %s"):format(L("open_panel")))
                    EndTextCommandDisplayHelp(0, false, true, -1)

                    if IsControlJustReleased(0, 38) then
                        openPanel(closestId)
                    end
                end
            end
        end

        if uiOpen then
            DisableControlAction(0, 1, true)
            DisableControlAction(0, 2, true)
            DisableControlAction(0, 24, true)
            DisableControlAction(0, 257, true)
        end

        local _ = pCoords
        Wait(waitTime)
    end
end)
