--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Client Main
     Handles workshop detection, vehicle inspection, repair workflow and towing.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local QBX        = exports['qbx_core']:GetCoreObject()
local inWorkshop = false
local currentWorkshop = nil
local onLift      = false
local towRope     = nil
local towTarget   = nil

-- ─── State ────────────────────────────────────────────────────────────────────
local vehicleOnLift    = 0
local repairQueue      = {}   -- { partKey, stepDone, totalSteps }
local currentRepair    = nil
local playerSkillLevel = 1
local playerXP         = 0

-- ─── Helpers ──────────────────────────────────────────────────────────────────
local function DebugPrint(msg)
    if Config.Debug then print('[ADV_MEC] ' .. tostring(msg)) end
end

local function GetNearestVehicle(maxDist)
    local playerPed = PlayerPedId()
    local pos       = GetEntityCoords(playerPed)
    local vehicle   = 0
    local dist      = maxDist or 10.0
    local vehicles  = GetGamePool('CVehicle')
    for _, v in ipairs(vehicles) do
        local vPos = GetEntityCoords(v)
        local d    = #(pos - vPos)
        if d < dist then
            dist    = d
            vehicle = v
        end
    end
    return vehicle ~= 0 and vehicle or nil
end

local function IsInWorkshopZone()
    local pos = GetEntityCoords(PlayerPedId())
    for _, ws in ipairs(Config.Workshops) do
        if #(pos - ws.coords) <= ws.radius then
            return true, ws
        end
    end
    return false, nil
end

local function FormatMoney(amount)
    return string.format('R$ %s', lib.math.groupdigits(math.floor(amount)))
end

-- ─── XP / Level ───────────────────────────────────────────────────────────────
local function GetLevelData(xp)
    local current = Config.XP.levels[1]
    for _, lvl in ipairs(Config.XP.levels) do
        if xp >= lvl.xpRequired then current = lvl end
    end
    return current
end

local function UpdateXPDisplay()
    local lvl = GetLevelData(playerXP)
    SendNUIMessage({
        action = 'updateXP',
        xp     = playerXP,
        level  = lvl.level,
        name   = lvl.name,
        discount = lvl.discount,
    })
end

-- ─── Workshop Entry / Exit ────────────────────────────────────────────────────
local function OnEnterWorkshop(ws)
    if inWorkshop then return end
    inWorkshop      = true
    currentWorkshop = ws
    lib.notify({ title = Locale('workshop'), description = ws.name, type = 'info', duration = 3000 })
    TriggerServerEvent('adv_mecanica:server:syncPlayerData')
end

local function OnLeaveWorkshop()
    if not inWorkshop then return end
    inWorkshop      = false
    currentWorkshop = nil
    SendNUIMessage({ action = 'closePanel' })
end

-- ─── Lift Logic ───────────────────────────────────────────────────────────────
local function LiftVehicle(vehicle)
    if onLift then return end
    onLift = true
    vehicleOnLift = vehicle

    local zOffset = 1.8
    local startZ  = GetEntityCoords(vehicle).z
    local targetZ = startZ + zOffset

    TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
    Wait(1000)

    CreateThread(function()
        local elapsed = 0
        local duration = 2000
        while elapsed < duration do
            Wait(0)
            elapsed = elapsed + GetFrameTime() * 1000
            local t = math.min(elapsed / duration, 1.0)
            local eased = t * t * (3 - 2 * t)  -- smoothstep
            local coords = GetEntityCoords(vehicle)
            SetEntityCoords(vehicle, coords.x, coords.y, startZ + eased * zOffset, false, false, false, false)
        end
        FreezeEntityPosition(vehicle, true)
        ClearPedTasks(PlayerPedId())

        lib.notify({ title = Locale('lift_raised'), type = 'success' })
        TriggerEvent('adv_mecanica:client:vehicleLifted', vehicle)
    end)
end

local function LowerVehicle()
    if not onLift or vehicleOnLift == 0 then return end
    FreezeEntityPosition(vehicleOnLift, false)

    local startZ   = GetEntityCoords(vehicleOnLift).z
    local targetZ  = startZ - 1.8

    CreateThread(function()
        local elapsed = 0
        local duration = 2000
        while elapsed < duration do
            Wait(0)
            elapsed = elapsed + GetFrameTime() * 1000
            local t = math.min(elapsed / duration, 1.0)
            local eased = t * t * (3 - 2 * t)
            local coords = GetEntityCoords(vehicleOnLift)
            SetEntityCoords(vehicleOnLift, coords.x, coords.y, startZ - eased * 1.8, false, false, false, false)
        end
        onLift        = false
        vehicleOnLift = 0
        lib.notify({ title = Locale('lift_lowered'), type = 'info' })
    end)
end

exports('IsOnLift', function() return onLift end)
exports('GetVehicleOnLift', function() return vehicleOnLift end)

-- ─── Open Workshop Panel ──────────────────────────────────────────────────────
local function OpenWorkshopPanel(vehicle)
    if not vehicle or vehicle == 0 then
        lib.notify({ title = Locale('no_vehicle'), type = 'error' })
        return
    end

    local damage  = exports['adv_mecanica']:GetVehicleDamageReport(vehicle)
    local stockCb = function(stock)
        SetNuiFocus(true, true)
        SendNUIMessage({
            action      = 'openPanel',
            damage      = damage,
            stock       = stock,
            parts       = Config.Parts,
            partGroups  = Config.PartGroups,
            economy     = Config.Economy,
            playerXP    = playerXP,
            playerLevel = GetLevelData(playerXP),
            workshop    = currentWorkshop,
        })
    end

    TriggerServerEvent('adv_mecanica:server:getStock', function(stock)
        stockCb(stock)
    end)
end

-- ─── Towing System ────────────────────────────────────────────────────────────
local function AttachTowRope(towTruck, target)
    if towRope then DeleteRope(towRope) towRope = nil end
    if not towTruck or not target then return end

    towRope   = AddRope(
        GetEntityCoords(towTruck).x, GetEntityCoords(towTruck).y, GetEntityCoords(towTruck).z,
        0.0, 0.0, 0.0,
        Config.Towing.ropeLength,
        1, Config.Towing.ropeLength, 1.0, 0.0, false, false, false, 1.0, false
    )
    AttachRopeToEntity(towRope, towTruck, 0.0, -2.5, 0.5, true)
    AttachRopeToEntity(towRope, target,   0.0,  2.5, 0.5, true)
    towTarget = target

    lib.notify({ title = Locale('tow_attached'), type = 'success' })
end

local function DetachTowRope()
    if towRope then
        DeleteRope(towRope)
        towRope   = nil
        towTarget = nil
        lib.notify({ title = Locale('tow_detached'), type = 'info' })
    end
end

-- ─── NUI Callbacks ────────────────────────────────────────────────────────────
RegisterNUICallback('closePanel', function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closePanel' })
    cb('ok')
end)

RegisterNUICallback('startRepair', function(data, cb)
    -- data: { parts = { partKey, ... }, paymentMethod }
    if not data.parts or #data.parts == 0 then
        cb({ success = false, reason = Locale('no_parts_selected') })
        return
    end

    TriggerServerEvent('adv_mecanica:server:requestRepair', {
        parts         = data.parts,
        vehicle       = VehToNet(vehicleOnLift ~= 0 and vehicleOnLift or GetNearestVehicle(8.0)),
        paymentMethod = data.paymentMethod or Config.Economy.defaultMethod,
    })
    cb({ success = true })
end)

RegisterNUICallback('buyPart', function(data, cb)
    TriggerServerEvent('adv_mecanica:server:buyPart', data.item, data.qty or 1)
    cb({ success = true })
end)

RegisterNUICallback('addStock', function(data, cb)
    TriggerServerEvent('adv_mecanica:server:addStock', data.item, data.qty)
    cb({ success = true })
end)

RegisterNUICallback('liftVehicle', function(_, cb)
    local v = GetNearestVehicle(6.0)
    if v then LiftVehicle(v) cb({ success = true }) else cb({ success = false }) end
end)

RegisterNUICallback('lowerVehicle', function(_, cb)
    LowerVehicle()
    cb({ success = true })
end)

RegisterNUICallback('towVehicle', function(_, cb)
    local towTruck = GetVehiclePedIsIn(PlayerPedId(), false)
    local target   = GetNearestVehicle(12.0)
    if towTruck ~= 0 and target then
        AttachTowRope(towTruck, target)
        cb({ success = true })
    else
        cb({ success = false })
    end
end)

RegisterNUICallback('detachTow', function(_, cb)
    DetachTowRope()
    cb({ success = true })
end)

-- ─── Server → Client Events ───────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:client:syncData', function(data)
    playerXP         = data.xp or 0
    playerSkillLevel = GetLevelData(playerXP).level
    UpdateXPDisplay()
    DebugPrint('SyncData XP=' .. playerXP .. ' LVL=' .. playerSkillLevel)
end)

RegisterNetEvent('adv_mecanica:client:beginRepairStep', function(partKey, stepIndex, totalSteps, duration)
    TriggerEvent('adv_mecanica:client:animateRepair', partKey, duration)
    SendNUIMessage({
        action    = 'repairProgress',
        part      = partKey,
        step      = stepIndex,
        total     = totalSteps,
        duration  = duration,
    })
end)

RegisterNetEvent('adv_mecanica:client:repairComplete', function(parts, xpEarned, payout)
    SendNUIMessage({ action = 'repairDone', parts = parts, xpEarned = xpEarned, payout = payout })
    playerXP = playerXP + xpEarned
    UpdateXPDisplay()

    local vehicle = vehicleOnLift ~= 0 and vehicleOnLift or GetNearestVehicle(8.0)
    if vehicle then
        TriggerEvent('adv_mecanica:client:applyRepairs', vehicle, parts)
    end
    lib.notify({ title = Locale('repair_done'), description = Locale('earned_xp', xpEarned), type = 'success', duration = 5000 })
end)

RegisterNetEvent('adv_mecanica:client:repairFailed', function(reason)
    lib.notify({ title = Locale('repair_failed'), description = reason, type = 'error' })
    SendNUIMessage({ action = 'repairError', reason = reason })
end)

RegisterNetEvent('adv_mecanica:client:stockUpdated', function(stock)
    SendNUIMessage({ action = 'updateStock', stock = stock })
end)

-- ─── Main Workshop Loop ───────────────────────────────────────────────────────
CreateThread(function()
    while true do
        Wait(500)
        local inside, ws = IsInWorkshopZone()
        if inside and not inWorkshop then
            OnEnterWorkshop(ws)
        elseif not inside and inWorkshop then
            OnLeaveWorkshop()
        end
    end
end)

-- ─── Context Menu (ox_lib) ────────────────────────────────────────────────────
CreateThread(function()
    while true do
        Wait(0)
        if inWorkshop then
            local vehicle = GetNearestVehicle(6.0)
            if vehicle and IsControlJustReleased(0, 38) then  -- E key
                local menu = {
                    { title = Locale('open_workshop'), icon = 'fa-wrench',
                      onSelect = function() OpenWorkshopPanel(vehicle) end },
                    { title = Locale('inspect_vehicle'), icon = 'fa-search',
                      onSelect = function() TriggerEvent('adv_mecanica:client:openInspection', vehicle) end },
                }
                if not onLift then
                    menu[#menu+1] = { title = Locale('lift_vehicle'), icon = 'fa-arrow-up',
                        onSelect = function() LiftVehicle(vehicle) end }
                else
                    menu[#menu+1] = { title = Locale('lower_vehicle'), icon = 'fa-arrow-down',
                        onSelect = function() LowerVehicle() end }
                end
                if Config.Towing.enabled then
                    if not towRope then
                        menu[#menu+1] = { title = Locale('tow_vehicle'), icon = 'fa-truck',
                            onSelect = function()
                                local truck = GetVehiclePedIsIn(PlayerPedId(), false)
                                if truck ~= 0 then AttachTowRope(truck, vehicle) end
                            end }
                    else
                        menu[#menu+1] = { title = Locale('detach_tow'), icon = 'fa-unlink',
                            onSelect = function() DetachTowRope() end }
                    end
                end
                lib.registerContext({ id = 'mec_workshop_menu', title = Locale('workshop'), options = menu })
                lib.showContext('mec_workshop_menu')
            end
        end
    end
end)

-- ─── Blip ─────────────────────────────────────────────────────────────────────
CreateThread(function()
    for _, ws in ipairs(Config.Workshops) do
        local blip = AddBlipForCoord(ws.coords.x, ws.coords.y, ws.coords.z)
        SetBlipSprite(blip, Config.WorkshopBlip.sprite)
        SetBlipColour(blip, Config.WorkshopBlip.color)
        SetBlipScale(blip, Config.WorkshopBlip.scale)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(ws.name)
        EndTextCommandSetBlipName(blip)
    end
end)
