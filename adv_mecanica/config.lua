---@diagnostic disable: lowercase-global
Config = {}

-- ─── Framework ────────────────────────────────────────────────────────────────
Config.Framework = 'qbx'          -- 'qbx' | 'qb' | 'esx'

-- ─── Mechanic Job ─────────────────────────────────────────────────────────────
Config.MechanicJob      = 'mechanic'
Config.BossGrades       = { 4, 5 }
Config.MaxEmployees     = 10

-- ─── Locations ────────────────────────────────────────────────────────────────
Config.WorkshopBlip = {
    coords  = vector3(360.0, -163.7, 39.2),
    sprite  = 446,
    color   = 5,
    scale   = 0.7,
    label   = 'Oficina Mecânica',
}

Config.Workshops = {
    {
        name   = 'Oficina Principal',
        coords = vector3(360.0, -163.7, 39.2),
        radius = 15.0,
        type   = 'full',       -- 'full' | 'basic' | 'tuning'
    },
    {
        name   = 'Posto de Serviço',
        coords = vector3(-348.2, -136.0, 38.6),
        radius = 12.0,
        type   = 'basic',
    },
}

-- ─── Repair Points (lift / jacks) ─────────────────────────────────────────────
Config.LiftPositions = {
    vector4(367.6, -168.3, 38.9, 0.0),
    vector4(362.4, -168.3, 38.9, 0.0),
    vector4(357.2, -168.3, 38.9, 0.0),
}

-- ─── Vehicle Parts ────────────────────────────────────────────────────────────
--  Each part: item needed to replace it, time to repair (sec), labour cost, experience rewarded
Config.Parts = {
    -- Engine
    engine          = { item = 'motor_kit',       time = 90,  cost = 3500, exp = 120 },
    engine_mounts   = { item = 'engine_mount',    time = 30,  cost = 700,  exp = 30  },
    radiator        = { item = 'radiator',        time = 35,  cost = 900,  exp = 40  },
    alternator      = { item = 'alternator',      time = 25,  cost = 550,  exp = 25  },
    battery         = { item = 'car_battery',     time = 10,  cost = 200,  exp = 10  },
    belt             = { item = 'serpentine_belt', time = 20,  cost = 300,  exp = 15  },
    turbo           = { item = 'turbo_kit',       time = 60,  cost = 2800, exp = 90  },
    -- Transmission
    gearbox         = { item = 'gearbox',         time = 75,  cost = 2500, exp = 100 },
    clutch          = { item = 'clutch_plate',    time = 45,  cost = 1200, exp = 50  },
    driveshaft      = { item = 'driveshaft',      time = 55,  cost = 1600, exp = 60  },
    -- Suspension
    suspension_fl   = { item = 'suspension_kit',  time = 40,  cost = 1100, exp = 45  },
    suspension_fr   = { item = 'suspension_kit',  time = 40,  cost = 1100, exp = 45  },
    suspension_rl   = { item = 'suspension_kit',  time = 40,  cost = 1100, exp = 45  },
    suspension_rr   = { item = 'suspension_kit',  time = 40,  cost = 1100, exp = 45  },
    -- Brakes
    brakes_fl       = { item = 'brake_disc',      time = 25,  cost = 650,  exp = 30  },
    brakes_fr       = { item = 'brake_disc',      time = 25,  cost = 650,  exp = 30  },
    brakes_rl       = { item = 'brake_disc',      time = 20,  cost = 550,  exp = 25  },
    brakes_rr       = { item = 'brake_disc',      time = 20,  cost = 550,  exp = 25  },
    brake_fluid     = { item = 'brake_fluid',     time = 8,   cost = 120,  exp = 8   },
    -- Wheels / Tyres
    tyre_fl         = { item = 'tyre',            time = 12,  cost = 280,  exp = 12  },
    tyre_fr         = { item = 'tyre',            time = 12,  cost = 280,  exp = 12  },
    tyre_rl         = { item = 'tyre',            time = 12,  cost = 280,  exp = 12  },
    tyre_rr         = { item = 'tyre',            time = 12,  cost = 280,  exp = 12  },
    rim_fl          = { item = 'alloy_rim',       time = 10,  cost = 450,  exp = 10  },
    rim_fr          = { item = 'alloy_rim',       time = 10,  cost = 450,  exp = 10  },
    rim_rl          = { item = 'alloy_rim',       time = 10,  cost = 450,  exp = 10  },
    rim_rr          = { item = 'alloy_rim',       time = 10,  cost = 450,  exp = 10  },
    -- Body
    body_front      = { item = 'body_panel',      time = 50,  cost = 1800, exp = 70  },
    body_rear       = { item = 'body_panel',      time = 50,  cost = 1800, exp = 70  },
    body_left       = { item = 'body_panel',      time = 45,  cost = 1600, exp = 65  },
    body_right      = { item = 'body_panel',      time = 45,  cost = 1600, exp = 65  },
    bumper_front    = { item = 'bumper',          time = 30,  cost = 900,  exp = 35  },
    bumper_rear     = { item = 'bumper',          time = 30,  cost = 900,  exp = 35  },
    bonnet          = { item = 'body_panel',      time = 35,  cost = 1200, exp = 40  },
    trunk           = { item = 'body_panel',      time = 35,  cost = 1200, exp = 40  },
    windshield      = { item = 'windshield_glass',time = 20,  cost = 600,  exp = 20  },
    window_fl       = { item = 'window_glass',    time = 12,  cost = 300,  exp = 12  },
    window_fr       = { item = 'window_glass',    time = 12,  cost = 300,  exp = 12  },
    window_rl       = { item = 'window_glass',    time = 12,  cost = 300,  exp = 12  },
    window_rr       = { item = 'window_glass',    time = 12,  cost = 300,  exp = 12  },
    -- Fluids
    oil             = { item = 'engine_oil',      time = 8,   cost = 150,  exp = 8   },
    coolant         = { item = 'coolant',         time = 10,  cost = 180,  exp = 10  },
    fuel_filter     = { item = 'fuel_filter',     time = 15,  cost = 250,  exp = 12  },
    -- Exhaust / Piping
    exhaust         = { item = 'exhaust_pipe',    time = 30,  cost = 800,  exp = 35  },
    catalytic       = { item = 'cat_converter',   time = 25,  cost = 1100, exp = 30  },
    -- Lights
    headlights      = { item = 'headlight_assy',  time = 15,  cost = 450,  exp = 15  },
    taillights      = { item = 'taillight_assy',  time = 15,  cost = 400,  exp = 15  },
}

-- ─── Part Groups (shown as tabs in the UI) ────────────────────────────────────
Config.PartGroups = {
    { id = 'engine',        label = 'Motor',            icon = 'fa-cogs',       parts = { 'engine','engine_mounts','radiator','alternator','battery','belt','turbo' } },
    { id = 'transmission',  label = 'Transmissão',      icon = 'fa-random',     parts = { 'gearbox','clutch','driveshaft' } },
    { id = 'suspension',    label = 'Suspensão',        icon = 'fa-car-side',   parts = { 'suspension_fl','suspension_fr','suspension_rl','suspension_rr' } },
    { id = 'brakes',        label = 'Freios',           icon = 'fa-circle',     parts = { 'brakes_fl','brakes_fr','brakes_rl','brakes_rr','brake_fluid' } },
    { id = 'wheels',        label = 'Rodas / Pneus',    icon = 'fa-circle-dot', parts = { 'tyre_fl','tyre_fr','tyre_rl','tyre_rr','rim_fl','rim_fr','rim_rl','rim_rr' } },
    { id = 'body',          label = 'Carroceria',       icon = 'fa-car',        parts = { 'body_front','body_rear','body_left','body_right','bumper_front','bumper_rear','bonnet','trunk','windshield','window_fl','window_fr','window_rl','window_rr' } },
    { id = 'fluids',        label = 'Fluidos & Filtros',icon = 'fa-tint',       parts = { 'oil','coolant','brake_fluid','fuel_filter' } },
    { id = 'exhaust',       label = 'Escapamento',      icon = 'fa-fire',       parts = { 'exhaust','catalytic' } },
    { id = 'lights',        label = 'Iluminação',       icon = 'fa-lightbulb',  parts = { 'headlights','taillights' } },
}

-- ─── Damage thresholds ────────────────────────────────────────────────────────
Config.DamageThresholds = {
    perfect   = 1000.0,    -- >= 950
    good      = 800.0,
    worn      = 500.0,
    damaged   = 200.0,
    critical  = 0.1,
}

-- ─── Minigame settings ────────────────────────────────────────────────────────
Config.Minigame = {
    enabled       = true,
    type          = 'skillcheck',  -- 'skillcheck' | 'hackbox' | 'none'
    difficulty    = { 'easy', 'medium', 'medium' },
    successRate   = 1.0,           -- multiplier on XP when succeed
    failPenalty   = 0.25,          -- fraction of time penalty on failure
}

-- ─── Experience / Skill System ────────────────────────────────────────────────
Config.XP = {
    enabled     = true,
    levels = {
        { level = 1,  name = 'Aprendiz',     xpRequired = 0,     discount = 0.00 },
        { level = 2,  name = 'Auxiliar',     xpRequired = 500,   discount = 0.05 },
        { level = 3,  name = 'Mecânico',     xpRequired = 1500,  discount = 0.10 },
        { level = 4,  name = 'Especialista', xpRequired = 4000,  discount = 0.15 },
        { level = 5,  name = 'Mestre',       xpRequired = 10000, discount = 0.20 },
    },
}

-- ─── Stock / Inventory ────────────────────────────────────────────────────────
Config.Stock = {
    maxPerItem  = 50,
    restockTime = 3600,   -- seconds; 0 = disable auto-restock
    lowWarning  = 5,
}

-- ─── Economy ──────────────────────────────────────────────────────────────────
Config.Economy = {
    paymentMethods   = { 'cash', 'bank' },
    defaultMethod    = 'bank',
    employeePay      = 0.55,    -- fraction of labour cost paid to employee
    shopCut          = 0.45,
    tax              = 0.10,
}

-- ─── Fuel / Fluids realism ────────────────────────────────────────────────────
Config.Fluids = {
    oilDrainRate    = 0.00008,   -- per metre driven
    coolantDrainRate= 0.00005,
    brakeFluidDrain = 0.00003,
    criticalOil     = 0.10,     -- engine damage multiplier kicks in below this
}

-- ─── Notifications ────────────────────────────────────────────────────────────
Config.Notify = function(src, msg, type, duration)
    -- 'type': 'success' | 'error' | 'info' | 'warning'
    if IsDuplicityVersion() then
        TriggerClientEvent('ox_lib:notify', src, { title = 'Mecânica', description = msg, type = type, duration = duration or 4000 })
    else
        lib.notify({ title = 'Mecânica', description = msg, type = type, duration = duration or 4000 })
    end
end

-- ─── Towing ───────────────────────────────────────────────────────────────────
Config.Towing = {
    enabled     = true,
    calloutCost = 300,
    ropeLength  = 8.0,
}

-- ─── Debug ────────────────────────────────────────────────────────────────────
Config.Debug = false
