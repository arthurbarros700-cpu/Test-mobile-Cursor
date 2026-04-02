--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Client Damage Engine
     Tracks realistic part degradation, fluid leaks, visual effects and applies
     mechanical consequences (engine stall, brake fade, suspension bounce, etc.)
    ═══════════════════════════════════════════════════════════════════════════ ]]

local trackedVehicles = {}   -- [netId] = DamageState{}
local smokeParticles  = {}
local oilParticles    = {}

-- ─── Damage State Blueprint ───────────────────────────────────────────────────
local function NewDamageState()
    local state = {
        -- Mechanical health 0-1000 per component
        engine        = 1000.0,
        radiator      = 1000.0,
        turbo         = 1000.0,
        gearbox       = 1000.0,
        clutch        = 1000.0,
        driveshaft    = 1000.0,
        suspension_fl = 1000.0, suspension_fr = 1000.0,
        suspension_rl = 1000.0, suspension_rr = 1000.0,
        brakes_fl     = 1000.0, brakes_fr     = 1000.0,
        brakes_rl     = 1000.0, brakes_rr     = 1000.0,
        tyre_fl       = 1000.0, tyre_fr       = 1000.0,
        tyre_rl       = 1000.0, tyre_rr       = 1000.0,
        body_front    = 1000.0, body_rear      = 1000.0,
        body_left     = 1000.0, body_right     = 1000.0,
        windshield    = 1000.0,
        exhaust       = 1000.0,
        -- Fluids 0-1
        oil           = 1.0,
        coolant       = 1.0,
        brake_fluid   = 1.0,
        -- Flags
        engineOn      = false,
        oilLeak       = false,
        coolantLeak   = false,
        brakeFade     = 0.0,
        overheating   = false,
        odometre      = 0.0,   -- km driven
        lastUpdate    = GetGameTimer(),
    }
    return state
end

-- ─── Particle Helpers ─────────────────────────────────────────────────────────
local function StartOilLeak(vehicle)
    if oilParticles[vehicle] then return end
    RequestNamedPtfxAsset('core')
    while not HasNamedPtfxAssetLoaded('core') do Wait(10) end
    UseParticleFxAssetNextCall('core')
    local pt = StartParticleFxLoopedOnEntityBone('ent_anim_oil_drip', vehicle,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetEntityBoneIndexByName(vehicle, 'engine'), false, false, false, 0.6)
    oilParticles[vehicle] = pt
end

local function StopOilLeak(vehicle)
    if oilParticles[vehicle] then
        StopParticleFxLooped(oilParticles[vehicle], false)
        oilParticles[vehicle] = nil
    end
end

local function StartEngineSteam(vehicle)
    if smokeParticles[vehicle] then return end
    RequestNamedPtfxAsset('core')
    while not HasNamedPtfxAssetLoaded('core') do Wait(10) end
    UseParticleFxAssetNextCall('core')
    local pt = StartParticleFxLoopedOnEntityBone('ent_anim_engine_steam', vehicle,
        0.0, 0.3, 0.0, 0.0, 0.0, 0.0, GetEntityBoneIndexByName(vehicle, 'engine'), false, false, false, 1.2)
    smokeParticles[vehicle] = pt
end

local function StopEngineSteam(vehicle)
    if smokeParticles[vehicle] then
        StopParticleFxLooped(smokeParticles[vehicle], false)
        smokeParticles[vehicle] = nil
    end
end

-- ─── Apply Mechanical Consequences ───────────────────────────────────────────
local function ApplyConsequences(vehicle, state)
    if not DoesEntityExist(vehicle) then return end

    -- Engine power curve based on health
    local engineRatio = math.max(state.engine / 1000.0, 0.0)
    local engineMod   = -1 + (engineRatio * 2) - 1  -- map 0-1000 → -1 to 1 (setEnginePowerMultiplier range)
    SetVehicleEnginePowerMultiplier(vehicle, math.max(engineMod, -1.0))

    -- Engine torque
    local torqueRatio = math.max(state.gearbox / 1000.0, 0.0) * engineRatio
    SetVehicleEngineTorqueMultiplier(vehicle, math.max((torqueRatio * 2.0) - 1.0, -1.0))

    -- Stall if critical engine
    if state.engine <= Config.DamageThresholds.critical then
        SetVehicleEngineOn(vehicle, false, true, false)
    end

    -- Brake fade
    local brakeAvg = (state.brakes_fl + state.brakes_fr + state.brakes_rl + state.brakes_rr) / 4000.0
    state.brakeFade = 1.0 - brakeAvg
    -- Reduced braking is handled through tyre grip
    SetVehicleReduceGrip(vehicle, state.brakeFade > 0.5)

    -- Burst tyres
    if state.tyre_fl <= 0 then SetVehicleTyreBurst(vehicle, 0, true, 1000.0) end
    if state.tyre_fr <= 0 then SetVehicleTyreBurst(vehicle, 1, true, 1000.0) end
    if state.tyre_rl <= 0 then SetVehicleTyreBurst(vehicle, 2, true, 1000.0) end
    if state.tyre_rr <= 0 then SetVehicleTyreBurst(vehicle, 3, true, 1000.0) end

    -- Suspension stiffness override
    local avgSusp = (state.suspension_fl + state.suspension_fr + state.suspension_rl + state.suspension_rr) / 4000.0
    SetVehicleSuspensionOverride(vehicle, math.max(avgSusp * 2.0 - 1.0, -1.0))

    -- Overheating / coolant
    if state.coolant < 0.15 then
        state.overheating = true
        StartEngineSteam(vehicle)
        -- Damage engine while overheating
        if state.engine > 0 then
            state.engine = math.max(0, state.engine - 0.5)
        end
    else
        state.overheating = false
        StopEngineSteam(vehicle)
    end

    -- Oil leak visual
    if state.oil < 0.4 then
        state.oilLeak = true
        StartOilLeak(vehicle)
    else
        state.oilLeak = false
        StopOilLeak(vehicle)
    end

    -- Critical oil – engine damage
    if state.oil < Config.Fluids.criticalOil and state.engine > 0 then
        state.engine = math.max(0, state.engine - 1.0)
    end
end

-- ─── Per-Frame Fluid Drain ────────────────────────────────────────────────────
local function DrainFluids(vehicle, state)
    if not IsVehicleEngineOn(vehicle) then return end
    local speed = GetEntitySpeed(vehicle)
    local dist  = speed * GetFrameTime() / 1000.0  -- approx km/frame (very small)

    state.oil         = math.max(0.0, state.oil         - Config.Fluids.oilDrainRate    * (1 + (1 - state.engine / 1000) * 3))
    state.coolant     = math.max(0.0, state.coolant     - Config.Fluids.coolantDrainRate * (1 + (state.overheating and 5 or 0)))
    state.brake_fluid = math.max(0.0, state.brake_fluid - Config.Fluids.brakeFluidDrain)
    state.odometre    = state.odometre + dist
end

-- ─── Collision / Impact Damage ────────────────────────────────────────────────
local function HandleCollisionDamage(vehicle, state)
    local speed    = GetEntitySpeed(vehicle) * 3.6  -- km/h
    local bodyDmg  = GetVehicleBodyHealth(vehicle)
    local engDmg   = GetVehicleEngineHealth(vehicle)

    -- Body health changes
    local bodyDiff = (state._lastBodyHealth or bodyDmg) - bodyDmg
    if bodyDiff > 50 then
        local severity = bodyDiff / 1000.0
        if severity > 0.3 then
            local rng = math.random()
            if rng < 0.3 then state.suspension_fl = math.max(0, state.suspension_fl - bodyDiff * 0.8) end
            if rng < 0.3 then state.suspension_fr = math.max(0, state.suspension_fr - bodyDiff * 0.8) end
            state.body_front = math.max(0, state.body_front - bodyDiff * 2)
            state.windshield = math.max(0, state.windshield - bodyDiff * 1.5)
        end
    end
    state._lastBodyHealth = bodyDmg

    -- Engine health changes
    local engDiff = (state._lastEngHealth or engDmg) - engDmg
    if engDiff > 50 then
        state.engine  = math.max(0, state.engine  - engDiff * 0.6)
        state.radiator= math.max(0, state.radiator - engDiff * 0.3)
        if engDiff > 200 then
            state.coolant = math.max(0, state.coolant - 0.2)
        end
    end
    state._lastEngHealth = engDmg

    -- Wheel / tyre damage from terrain/crash
    if IsVehicleTyreBurst(vehicle, 0, false) then state.tyre_fl = math.min(state.tyre_fl, 50) end
    if IsVehicleTyreBurst(vehicle, 1, false) then state.tyre_fr = math.min(state.tyre_fr, 50) end
    if IsVehicleTyreBurst(vehicle, 2, false) then state.tyre_rl = math.min(state.tyre_rl, 50) end
    if IsVehicleTyreBurst(vehicle, 3, false) then state.tyre_rr = math.min(state.tyre_rr, 50) end
end

-- ─── Sync damage to server periodically ──────────────────────────────────────
local function SyncDamage(vehicle, state)
    local now = GetGameTimer()
    if now - state.lastUpdate < 15000 then return end  -- sync every 15s
    state.lastUpdate = now

    if not NetworkGetEntityIsNetworked(vehicle) then return end
    TriggerServerEvent('adv_mecanica:server:saveDamage', VehToNet(vehicle), state)
end

-- ─── Register / Deregister ────────────────────────────────────────────────────
local function RegisterVehicle(vehicle)
    if not DoesEntityExist(vehicle) then return end
    local netId = VehToNet(vehicle)
    if trackedVehicles[netId] then return end

    -- Request saved state from server
    TriggerServerEvent('adv_mecanica:server:loadDamage', netId, function(saved)
        local state = saved or NewDamageState()
        state._lastBodyHealth = GetVehicleBodyHealth(vehicle)
        state._lastEngHealth  = GetVehicleEngineHealth(vehicle)
        trackedVehicles[netId] = state
        DebugPrint('Registered vehicle ' .. netId)
    end)
end

local function DeregisterVehicle(vehicle)
    if not DoesEntityExist(vehicle) then return end
    local netId = VehToNet(vehicle)
    if trackedVehicles[netId] then
        SyncDamage(vehicle, trackedVehicles[netId])
        trackedVehicles[netId] = nil
        StopOilLeak(vehicle)
        StopEngineSteam(vehicle)
    end
end

-- ─── Apply Repairs ────────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:client:applyRepairs', function(vehicle, parts)
    if not DoesEntityExist(vehicle) then return end
    local netId = VehToNet(vehicle)
    local state = trackedVehicles[netId]
    if not state then state = NewDamageState() trackedVehicles[netId] = state end

    for _, partKey in ipairs(parts) do
        if state[partKey] ~= nil then
            state[partKey] = 1000.0
        end
    end

    -- Restore GTA native health values too
    local hasTyre = false
    for _, p in ipairs(parts) do
        if p == 'engine' or p == 'radiator' or p == 'turbo' then
            SetVehicleEngineHealth(vehicle, 1000.0)
        end
        if p == 'body_front' or p == 'body_rear' or p == 'body_left' or p == 'body_right' then
            SetVehicleBodyHealth(vehicle, 1000.0)
        end
        if p == 'tyre_fl' then SetVehicleTyreFixed(vehicle, 0) end
        if p == 'tyre_fr' then SetVehicleTyreFixed(vehicle, 1) end
        if p == 'tyre_rl' then SetVehicleTyreFixed(vehicle, 2) end
        if p == 'tyre_rr' then SetVehicleTyreFixed(vehicle, 3) end
        if p == 'oil' then state.oil = 1.0 end
        if p == 'coolant' then state.coolant = 1.0 end
        if p == 'brake_fluid' then state.brake_fluid = 1.0 end
    end

    ApplyConsequences(vehicle, state)
    lib.notify({ title = Locale('repairs_applied'), type = 'success' })
end)

-- ─── Inspection Event ────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:client:openInspection', function(vehicle)
    if not DoesEntityExist(vehicle) then return end
    local netId = VehToNet(vehicle)
    local state = trackedVehicles[netId] or NewDamageState()

    SetNuiFocus(true, true)
    SendNUIMessage({
        action  = 'openInspection',
        damage  = state,
        vehicle = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)),
    })
end)

AddEventHandler('adv_mecanica:client:openInspection', function(vehicle)
    TriggerEvent('adv_mecanica:client:openInspection', vehicle)
end)

-- ─── Export: GetVehicleDamageReport ─────────────────────────────────────────
exports('GetVehicleDamageReport', function(vehicle)
    if not DoesEntityExist(vehicle) then return {} end
    local netId = VehToNet(vehicle)
    return trackedVehicles[netId] or NewDamageState()
end)

-- ─── Main Update Loop ─────────────────────────────────────────────────────────
CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local vehicle   = GetVehiclePedIsIn(playerPed, false)

        if vehicle ~= 0 and IsVehicleDriveable(vehicle, false) then
            RegisterVehicle(vehicle)
            local netId = VehToNet(vehicle)
            local state = trackedVehicles[netId]
            if state then
                DrainFluids(vehicle, state)
                HandleCollisionDamage(vehicle, state)
                ApplyConsequences(vehicle, state)
                SyncDamage(vehicle, state)
            end
        end

        Wait(50)  -- ~20 Hz physics updates
    end
end)

-- ─── Nearby vehicle registration ─────────────────────────────────────────────
CreateThread(function()
    while true do
        Wait(5000)
        if inWorkshop then
            local vehicles = GetGamePool('CVehicle')
            local ped      = PlayerPedId()
            local myPos    = GetEntityCoords(ped)
            for _, v in ipairs(vehicles) do
                if #(GetEntityCoords(v) - myPos) < 20.0 then
                    RegisterVehicle(v)
                end
            end
        end
    end
end)
