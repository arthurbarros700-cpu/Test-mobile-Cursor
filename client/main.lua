local uiOpen = false
local currentWorkshop = nil
local currentVehicle = nil
local currentProfile = nil
local lastSnapshot = nil
local lastSyncAt = 0
local activeBlips = {}

local function notify(kind, message)
    local format = Config.Notifications[kind] or Config.Notifications.info
    local text = format:format(message)

    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandThefeedPostTicker(false, false)
end

local function getVehicleLabel(vehicle)
    local displayName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
    local label = GetLabelText(displayName)

    if label and label ~= 'NULL' then
        return label
    end

    return displayName
end

local function getVehicleClassLabel(classId)
    local labels = {
        [0] = 'Compacto',
        [1] = 'Sedan',
        [2] = 'SUV',
        [3] = 'Coupe',
        [4] = 'Muscle',
        [5] = 'Classico',
        [6] = 'Esportivo',
        [7] = 'Super',
        [8] = 'Moto',
        [9] = 'Off-road',
        [10] = 'Industrial',
        [11] = 'Utilitario',
        [12] = 'Van',
        [13] = 'Bike',
        [14] = 'Barco',
        [15] = 'Helicoptero',
        [16] = 'Aviao',
        [17] = 'Servico',
        [18] = 'Emergencia',
        [19] = 'Militar',
        [20] = 'Comercial',
        [21] = 'Trem',
    }

    return labels[classId] or ('Classe %s'):format(classId)
end

local function detectWorkshop(coords)
    for _, workshop in ipairs(Config.Workshops) do
        if #(coords - workshop.coords) <= workshop.radius then
            return workshop
        end
    end

    return nil
end

local function getTrackedVehicle()
    local ped = PlayerPedId()

    if IsPedInAnyVehicle(ped, false) then
        return GetVehiclePedIsIn(ped, false)
    end

    local coords = GetEntityCoords(ped)
    local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, Config.OpenVehicleRange, 0, 71)
    if vehicle == 0 or not DoesEntityExist(vehicle) then
        return nil
    end

    return vehicle
end

local function buildVehicleProps(vehicle)
    local classId = GetVehicleClass(vehicle)
    return {
        plate = VehicleUtils.plateNormalize(GetVehicleNumberPlateText(vehicle)),
        modelHash = GetEntityModel(vehicle),
        modelName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)),
        displayName = getVehicleLabel(vehicle),
        class = classId,
        classLabel = getVehicleClassLabel(classId),
    }
end

local function buildTelemetry(vehicle, previous)
    local engineHealth = GetVehicleEngineHealth(vehicle)
    local bodyHealth = GetVehicleBodyHealth(vehicle)
    local tankHealth = GetVehiclePetrolTankHealth(vehicle)
    local speed = GetEntitySpeed(vehicle)
    local rpm = GetVehicleCurrentRpm(vehicle)
    local engineTemp = GetVehicleEngineTemperature(vehicle)
    local rotation = GetEntityRotation(vehicle, 2)

    local collision = 0.0
    local engineDrop = 0.0
    local bodyDrop = 0.0
    local tankDrop = 0.0
    local hardBrake = false

    if previous then
        engineDrop = math.max(0.0, previous.engineHealth - engineHealth)
        bodyDrop = math.max(0.0, previous.bodyHealth - bodyHealth)
        tankDrop = math.max(0.0, previous.tankHealth - tankHealth)
        collision = bodyDrop + engineDrop
        hardBrake = previous.speed > 18.0 and speed < previous.speed - 6.0
    end

    local offroad = false
    local surfaceMaterial = GetVehicleWheelSurfaceMaterial(vehicle, 0)
    if surfaceMaterial ~= 1 and speed > 5.0 then
        offroad = true
    end

    local airborneImpact = false
    local wheelsOnGround = true
    for wheel = 0, 3 do
        if DoesVehicleHaveDoor(vehicle, wheel) then
            -- no-op, keeps loop deterministic on some builds
        end

        if not IsVehicleWheelOnGround(vehicle, wheel) then
            wheelsOnGround = false
            break
        end
    end

    if previous and not wheelsOnGround and previous.speed > 13.0 then
        airborneImpact = true
    end

    local burnout = rpm > 0.92 and speed < 2.5
    local driftFactor = math.abs(rotation.y or 0.0) > 14.0 and speed > 12.0
    local aggressiveUsage = (burnout and 3.0 or 0.0) + (hardBrake and 2.0 or 0.0) + (offroad and 1.5 or 0.0) + (driftFactor and 2.0 or 0.0)

    return {
        speed = speed,
        rpm = rpm,
        -- Speed is in m/s; convert sample distance to km for odometer accuracy.
        odometerDelta = (speed * (Config.InspectionIntervalMs / 1000.0)) / 1000.0,
        mileage = speed * (Config.InspectionIntervalMs / 1000.0),
        collision = collision,
        engineDrop = engineDrop,
        bodyDrop = bodyDrop,
        tankDrop = tankDrop,
        hardBrake = hardBrake,
        burnout = burnout,
        offroad = offroad,
        airborneImpact = airborneImpact,
        engineTemp = engineTemp or 85.0,
        aggressiveUsage = aggressiveUsage,
    }, {
        engineHealth = engineHealth,
        bodyHealth = bodyHealth,
        tankHealth = tankHealth,
        speed = speed,
    }
end

local function applyVehicleState(vehicle, profile)
    if vehicle == nil or vehicle == 0 or not DoesEntityExist(vehicle) or not profile or not profile.components then
        return
    end

    local components = profile.components
    local summary = profile.summary or {}
    local tuning = profile.tuning or {}

    local engineComponent = components.engine_block or { health = 100 }
    local bodyComponent = components.body_structure or { health = 100 }
    local coolingComponent = components.cooling_system or { health = 100 }
    local brakeComponent = components.brake_system or { health = 100 }
    local tireComponent = components.tires or { health = 100 }
    local fuelComponent = components.fuel_system or { health = 100 }

    SetVehicleEngineHealth(vehicle, math.min(1000.0, 280.0 + VehicleUtils.clamp(engineComponent.health, 0, 100) * 7.2))
    SetVehicleBodyHealth(vehicle, math.min(1000.0, 250.0 + VehicleUtils.clamp(bodyComponent.health, 0, 100) * 7.5))
    SetVehiclePetrolTankHealth(vehicle, math.min(1000.0, 250.0 + VehicleUtils.clamp(fuelComponent.health, 0, 100) * 7.2))

    SetVehicleModKit(vehicle, 0)

    local modifiers = tuning.modifiers or {}
    local mods = tuning.mods or {}
    local enginePower = ((modifiers.enginePower or 0.0) * 100.0) + ((VehicleUtils.clamp(engineComponent.health, 0, 100) - 80.0) * 0.09)
    SetVehicleEnginePowerMultiplier(vehicle, enginePower)
    SetVehicleEngineTorqueMultiplier(vehicle, 1.0 + ((modifiers.enginePower or 0.0) * 0.35))

    if mods.engine and mods.engine >= 0 then
        SetVehicleMod(vehicle, 11, mods.engine, false)
    end

    if mods.brakes and mods.brakes >= 0 then
        SetVehicleMod(vehicle, 12, mods.brakes, false)
    end

    if mods.transmission and mods.transmission >= 0 then
        SetVehicleMod(vehicle, 13, mods.transmission, false)
    end

    if mods.suspension and mods.suspension >= 0 then
        SetVehicleMod(vehicle, 15, mods.suspension, false)
    end

    if mods.turbo ~= nil then
        ToggleVehicleMod(vehicle, 18, mods.turbo)
    end

    SetVehicleSuspensionHeight(vehicle, modifiers.suspensionDrop or 0.0)
    SetVehicleReduceGrip(vehicle, VehicleUtils.clamp(tireComponent.health, 0, 100) < 46)

    if VehicleUtils.clamp(brakeComponent.health, 0, 100) <= Config.ConditionThresholds.critical then
        SetVehicleBrakeLights(vehicle, true)
    end

    if VehicleUtils.clamp(coolingComponent.health, 0, 100) <= Config.ConditionThresholds.failed then
        SetVehicleUndriveable(vehicle, true)
    else
        SetVehicleUndriveable(vehicle, false)
    end

    if summary.healthScore and summary.healthScore <= Config.ConditionThresholds.failed then
        SetVehicleEngineOn(vehicle, false, true, true)
    end
end

local function openPanel(payload)
    SendNUIMessage({
        action = 'open',
        payload = payload
    })
    SetNuiFocus(true, Config.NuiFocusMouse)
    uiOpen = true
end

local function updatePanel(payload)
    SendNUIMessage({
        action = 'update',
        payload = payload
    })
end

local function closePanel()
    uiOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'close' })
end

local function requestPanelOpen()
    local vehicle = getTrackedVehicle()
    if not vehicle then
        notify('error', 'Nenhum veiculo encontrado nas proximidades.')
        return
    end

    local coords = GetEntityCoords(PlayerPedId())
    currentWorkshop = detectWorkshop(coords)
    currentVehicle = vehicle
    local props = buildVehicleProps(vehicle)

    TriggerServerEvent('vx_mechanic:server:requestVehicleProfile', {
        vehicleProps = props,
        workshopId = currentWorkshop and currentWorkshop.id or (Config.Workshops[1] and Config.Workshops[1].id or nil),
        openUi = true,
    })
end

local function requestDiagnosticRefresh()
    if not currentVehicle or not DoesEntityExist(currentVehicle) then
        requestPanelOpen()
        return
    end

    local props = buildVehicleProps(currentVehicle)
    TriggerServerEvent('vx_mechanic:server:requestDiagnostic', {
        vehicleProps = props,
        workshopId = currentWorkshop and currentWorkshop.id or (currentProfile and currentProfile.workshop and currentProfile.workshop.id) or (Config.Workshops[1] and Config.Workshops[1].id or nil),
    })
end

local function syncTelemetry(forceSync)
    local vehicle = getTrackedVehicle()
    if not vehicle then
        currentVehicle = nil
        lastSnapshot = nil
        return
    end

    currentVehicle = vehicle

    local now = GetGameTimer()
    if not forceSync and now - lastSyncAt < Config.SyncDebounceMs then
        return
    end

    local telemetry, snapshot = buildTelemetry(vehicle, lastSnapshot)
    local props = buildVehicleProps(vehicle)
    lastSnapshot = snapshot
    lastSyncAt = now

    TriggerServerEvent('vx_mechanic:server:syncTelemetry', {
        vehicleProps = props,
        workshopId = currentWorkshop and currentWorkshop.id or (Config.Workshops[1] and Config.Workshops[1].id or nil),
        telemetry = telemetry,
    })
end

RegisterCommand(Config.OpenCommand, function()
    requestPanelOpen()
end, false)

RegisterKeyMapping(Config.OpenCommand, 'Abrir central de mecanica profissional', 'keyboard', 'F6')

RegisterNetEvent('vx_mechanic:client:openPanel', function(payload)
    currentProfile = payload

    if currentVehicle and payload and payload.vehicle then
        applyVehicleState(currentVehicle, payload.vehicle)
    end

    openPanel(payload)
end)

RegisterNetEvent('vx_mechanic:client:updatePanel', function(payload)
    currentProfile = payload

    if currentVehicle and payload and payload.vehicle then
        applyVehicleState(currentVehicle, payload.vehicle)
    end

    if uiOpen then
        updatePanel(payload)
    end
end)

RegisterNetEvent('vx_mechanic:client:updateWorkshopStock', function(workshop)
    if not currentProfile then
        currentProfile = {}
    end

    currentProfile.workshop = workshop
    currentProfile.stock = workshop and workshop.stock or {}

    if uiOpen then
        updatePanel(currentProfile)
    end
end)

RegisterNetEvent('vx_mechanic:client:notify', function(payload)
    if not payload then
        return
    end

    notify(payload.kind or 'info', payload.message or 'Atualizacao recebida.')
end)

RegisterNetEvent('vx_mechanic:client:closePanel', function()
    closePanel()
end)

CreateThread(function()
    while true do
        Wait(Config.InspectionIntervalMs)
        syncTelemetry(false)
    end
end)

CreateThread(function()
    while true do
        local waitMs = 1000
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local workshop = detectWorkshop(coords)

        if workshop and Config.EnableMarkers then
            local distance = #(coords - workshop.coords)
            if distance <= Config.MarkerDrawDistance then
                waitMs = 0

                DrawMarker(
                    2,
                    workshop.coords.x,
                    workshop.coords.y,
                    workshop.coords.z + 0.2,
                    0.0, 0.0, 0.0,
                    0.0, 0.0, 0.0,
                    0.35, 0.35, 0.35,
                    87, 211, 255, 140,
                    false, true, 2, false, nil, nil, false
                )

                if distance <= Config.OpenDistance then
                    BeginTextCommandDisplayHelp('STRING')
                    AddTextComponentSubstringPlayerName('Pressione ~INPUT_CONTEXT~ para abrir a central de mecanica premium')
                    EndTextCommandDisplayHelp(0, false, true, -1)

                    if IsControlJustReleased(0, 38) then
                        requestPanelOpen()
                    end
                end
            end
        end

        Wait(waitMs)
    end
end)

CreateThread(function()
    if not Config.EnableBlips then
        return
    end

    for _, workshop in ipairs(Config.Workshops) do
        local blip = AddBlipForCoord(workshop.coords.x, workshop.coords.y, workshop.coords.z)
        SetBlipSprite(blip, 446)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.85)
        SetBlipColour(blip, 38)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(workshop.label)
        EndTextCommandSetBlipName(blip)
        activeBlips[#activeBlips + 1] = blip
    end
end)

RegisterNUICallback('closePanel', function(_, cb)
    closePanel()
    TriggerServerEvent('vx_mechanic:server:closePanel')
    cb({ ok = true })
end)

RegisterNUICallback('requestDiagnostic', function(_, cb)
    requestDiagnosticRefresh()
    notify('info', 'Executando diagnostico profundo do veiculo.')
    cb({ ok = true })
end)

RegisterNUICallback('performService', function(data, cb)
    if not currentVehicle or not DoesEntityExist(currentVehicle) then
        cb({ ok = false, message = 'Nenhum veiculo conectado.' })
        return
    end

    local props = buildVehicleProps(currentVehicle)
    TriggerServerEvent('vx_mechanic:server:performService', {
        vehicleProps = props,
        workshopId = currentWorkshop and currentWorkshop.id or (currentProfile and currentProfile.workshop and currentProfile.workshop.id) or (Config.Workshops[1] and Config.Workshops[1].id or nil),
        componentId = data.componentId,
        service = data.service,
        mode = data.mode or 'premium',
    })

    cb({ ok = true })
end)

RegisterNUICallback('orderStock', function(data, cb)
    TriggerServerEvent('vx_mechanic:server:orderStock', {
        workshopId = currentWorkshop and currentWorkshop.id or (currentProfile and currentProfile.workshop and currentProfile.workshop.id) or (Config.Workshops[1] and Config.Workshops[1].id or nil),
        item = data.item,
        amount = tonumber(data.amount) or 1,
    })

    cb({ ok = true })
end)

RegisterNUICallback('applyUpgrade', function(data, cb)
    if not currentVehicle or not DoesEntityExist(currentVehicle) then
        cb({ ok = false, message = 'Nenhum veiculo conectado.' })
        return
    end

    local props = buildVehicleProps(currentVehicle)
    TriggerServerEvent('vx_mechanic:server:applyUpgrade', {
        vehicleProps = props,
        workshopId = currentWorkshop and currentWorkshop.id or (currentProfile and currentProfile.workshop and currentProfile.workshop.id) or (Config.Workshops[1] and Config.Workshops[1].id or nil),
        upgradeId = data.upgradeId,
    })

    cb({ ok = true })
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then
        return
    end

    for _, blip in ipairs(activeBlips) do
        if DoesBlipExist(blip) then
            RemoveBlip(blip)
        end
    end

    if uiOpen then
        closePanel()
    end
end)
