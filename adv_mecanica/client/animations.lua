--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Client Animations
     Context-aware repair animations per part, prop attachment and progress FX.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local animating   = false
local currentProp = nil

-- ─── Animation Dictionary ────────────────────────────────────────────────────
local PartAnims = {
    engine       = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    engine_mounts= { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    radiator     = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    alternator   = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    battery      = { dict = 'missfinale_c2mcs_1',        anim = 'fin_c2_mcs_1_camman',  prop = 'prop_tool_screwdvr_02', boneIdx = 28422 },
    belt         = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    turbo        = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    gearbox      = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    clutch       = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    driveshaft   = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    suspension_fl= { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    suspension_fr= { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    suspension_rl= { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    suspension_rr= { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    brakes_fl    = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    brakes_fr    = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    brakes_rl    = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    brakes_rr    = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    tyre_fl      = { dict = 'veh@wheel_brace@',          anim = 'base',                 prop = 'prop_wheel_brace',   boneIdx = 28422 },
    tyre_fr      = { dict = 'veh@wheel_brace@',          anim = 'base',                 prop = 'prop_wheel_brace',   boneIdx = 28422 },
    tyre_rl      = { dict = 'veh@wheel_brace@',          anim = 'base',                 prop = 'prop_wheel_brace',   boneIdx = 28422 },
    tyre_rr      = { dict = 'veh@wheel_brace@',          anim = 'base',                 prop = 'prop_wheel_brace',   boneIdx = 28422 },
    body_front   = { dict = 'anim@heists@fleeca@',       anim = 'drill',                prop = 'prop_tool_hammer',   boneIdx = 28422 },
    body_rear    = { dict = 'anim@heists@fleeca@',       anim = 'drill',                prop = 'prop_tool_hammer',   boneIdx = 28422 },
    body_left    = { dict = 'anim@heists@fleeca@',       anim = 'drill',                prop = 'prop_tool_hammer',   boneIdx = 28422 },
    body_right   = { dict = 'anim@heists@fleeca@',       anim = 'drill',                prop = 'prop_tool_hammer',   boneIdx = 28422 },
    windshield   = { dict = 'anim@heists@fleeca@',       anim = 'drill',                prop = 'prop_tool_hammer',   boneIdx = 28422 },
    oil          = { dict = 'amb@prop_human_parking_meter@male@idle_a', anim = 'idle_a', prop = 'prop_tool_oil_jerrycan', boneIdx = 28422 },
    coolant      = { dict = 'amb@prop_human_parking_meter@male@idle_a', anim = 'idle_a', prop = 'prop_jerrycan',         boneIdx = 28422 },
    exhaust      = { dict = 'mini@repair',               anim = 'fixing_a_player',      prop = 'prop_tool_wrench',   boneIdx = 28422 },
    headlights   = { dict = 'missfinale_c2mcs_1',        anim = 'fin_c2_mcs_1_camman',  prop = 'prop_tool_screwdvr_02', boneIdx = 28422 },
    taillights   = { dict = 'missfinale_c2mcs_1',        anim = 'fin_c2_mcs_1_camman',  prop = 'prop_tool_screwdvr_02', boneIdx = 28422 },
}

-- ─── Helpers ─────────────────────────────────────────────────────────────────
local function LoadDict(dict)
    RequestAnimDict(dict)
    local t = 0
    while not HasAnimDictLoaded(dict) do
        Wait(10)
        t = t + 10
        if t > 5000 then return false end
    end
    return true
end

local function SpawnProp(model, ped, boneIdx)
    local hash = GetHashKey(model)
    RequestModel(hash)
    local t = 0
    while not HasModelLoaded(hash) do
        Wait(10)
        t = t + 10
        if t > 5000 then return nil end
    end
    local coords = GetWorldPositionOfEntityBone(ped, boneIdx)
    local prop = CreateObject(hash, coords.x, coords.y, coords.z, true, true, false)
    AttachEntityToEntityPhysically(prop, ped, boneIdx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50.0, true, false, false, false, 2)
    SetModelAsNoLongerNeeded(hash)
    return prop
end

local function CleanupProp()
    if currentProp and DoesEntityExist(currentProp) then
        DetachEntity(currentProp, true, false)
        DeleteObject(currentProp)
        currentProp = nil
    end
end

-- ─── Play Repair Animation ───────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:client:animateRepair', function(partKey, duration)
    if animating then return end
    animating = true

    local info = PartAnims[partKey] or PartAnims['engine']
    local ped  = PlayerPedId()

    if not LoadDict(info.dict) then
        animating = false
        return
    end

    TaskPlayAnim(ped, info.dict, info.anim, 8.0, -8.0, duration * 1000, 1, 0.0, false, false, false)
    currentProp = SpawnProp(info.prop, ped, info.boneIdx)

    -- Progress bar via ox_lib
    lib.progressBar({
        duration = duration * 1000,
        label    = Locale('repairing_part', partKey),
        useWhileDead   = false,
        canCancel      = false,
        disable = { move = true, car = true, combat = true },
        anim    = { dict = info.dict, clip = info.anim },
    })

    Wait(duration * 1000)
    ClearPedTasks(ped)
    CleanupProp()
    RemoveAnimDict(info.dict)
    animating = false
end)

AddEventHandler('adv_mecanica:client:animateRepair', function(partKey, duration)
    TriggerNetEvent('adv_mecanica:client:animateRepair', partKey, duration)
end)

-- ─── Quick inspect animation (crouch-look) ───────────────────────────────────
RegisterNetEvent('adv_mecanica:client:playInspectAnim', function()
    local ped  = PlayerPedId()
    local dict = 'amb@world_human_mechanics_fix_car@male@base'
    local anim = 'base'
    if LoadDict(dict) then
        TaskPlayAnim(ped, dict, anim, 8.0, -8.0, 3000, 1, 0.0, false, false, false)
        Wait(3000)
        ClearPedTasks(ped)
        RemoveAnimDict(dict)
    end
end)

AddEventHandler('adv_mecanica:client:playInspectAnim', function()
    TriggerNetEvent('adv_mecanica:client:playInspectAnim')
end)
