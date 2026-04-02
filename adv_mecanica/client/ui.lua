--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Client UI Bridge
     Handles NUI focus, keyboard shortcuts, dynamic part labels and HUD overlay.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local nuiOpen      = false
local hudVisible   = false
local hudVehicle   = 0

-- ─── Locale labels for NUI ───────────────────────────────────────────────────
RegisterNUICallback('getLocale', function(_, cb)
    local tbl = {}
    for k, v in pairs(Locales['pt-BR'] or {}) do
        tbl[k] = v
    end
    cb(tbl)
end)

-- ─── ESC key close ───────────────────────────────────────────────────────────
CreateThread(function()
    while true do
        Wait(0)
        if nuiOpen and IsControlJustReleased(0, 200) then  -- Esc
            SetNuiFocus(false, false)
            SendNUIMessage({ action = 'closePanel' })
            nuiOpen = false
        end
    end
end)

RegisterNUICallback('nuiOpened', function(_, cb)
    nuiOpen = true
    cb('ok')
end)

RegisterNUICallback('nuiClosed', function(_, cb)
    nuiOpen = false
    SetNuiFocus(false, false)
    cb('ok')
end)

-- ─── HUD Overlay ─────────────────────────────────────────────────────────────
-- Shows a compact vehicle status bar on screen when player is in a vehicle.
local function GetConditionLabel(val)
    if val >= Config.DamageThresholds.perfect then return '✓', '#27ae60'
    elseif val >= Config.DamageThresholds.good then return 'BOM', '#f1c40f'
    elseif val >= Config.DamageThresholds.worn then return 'GASTO', '#e67e22'
    elseif val >= Config.DamageThresholds.damaged then return 'DANO', '#e74c3c'
    else return 'CRÍTICO', '#c0392b' end
end

local function DrawHUD(state)
    if not state then return end

    local screenW, screenH = GetActiveScreenResolution()
    local baseX = 0.01
    local baseY = 0.30
    local lineH = 0.022

    local function DrawLine(label, val, y)
        local lbl, color = GetConditionLabel(val)
        local pct  = math.floor(val / 10)
        local text = string.format('%s: %d%%  [%s]', label, pct, lbl)
        SetTextFont(4)
        SetTextScale(0.0, 0.30)
        SetTextColour(220, 220, 220, 200)
        SetTextEntry('STRING')
        AddTextComponentString(text)
        DrawText(baseX, y)
    end

    DrawLine('Motor',    state.engine,   baseY + lineH * 0)
    DrawLine('Câmbio',   state.gearbox,  baseY + lineH * 1)
    DrawLine('Freios',   (state.brakes_fl + state.brakes_fr) / 2, baseY + lineH * 2)
    DrawLine('Pneus',    (state.tyre_fl  + state.tyre_fr)   / 2, baseY + lineH * 3)
    DrawLine('Óleo',     state.oil * 1000,    baseY + lineH * 4)
    DrawLine('Fluido Arref.', state.coolant * 1000, baseY + lineH * 5)
end

CreateThread(function()
    while true do
        Wait(0)
        local ped     = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)

        if vehicle ~= 0 then
            local netId = VehToNet(vehicle)
            local state = exports['adv_mecanica']:GetVehicleDamageReport(vehicle)
            if state and state.engine then
                DrawHUD(state)
            end
        end
    end
end)

-- ─── Inspector NUI ───────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:client:openInspectionUI', function(vehicle)
    local state = exports['adv_mecanica']:GetVehicleDamageReport(vehicle)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action  = 'openInspection',
        damage  = state,
        vehicle = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)),
    })
end)

-- ─── Commands ────────────────────────────────────────────────────────────────
RegisterCommand('mecanica', function()
    if not inWorkshop then
        lib.notify({ title = 'Mecânica', description = Locale('not_in_workshop'), type = 'error' })
        return
    end
    local v = exports['adv_mecanica']:GetVehicleOnLift() ~= 0 and exports['adv_mecanica']:GetVehicleOnLift()
              or GetVehiclePedIsNearby(PlayerPedId(), 6.0)
    if v then
        SetNuiFocus(true, true)
        TriggerEvent('adv_mecanica:client:openWorkshopPanel', v)
    end
end, false)

RegisterCommand('inspecionar', function()
    local ped = PlayerPedId()
    local v   = GetVehiclePedIsNearby(ped, 6.0)
    if not v then
        lib.notify({ title = 'Mecânica', description = Locale('no_vehicle'), type = 'error' })
        return
    end
    TriggerEvent('adv_mecanica:client:openInspectionUI', v)
end, false)
