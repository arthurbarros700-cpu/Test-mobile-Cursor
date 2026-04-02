Config = {}

Config.Locale = "pt-br"
Config.Framework = "auto" -- auto | qb | esx | standalone
Config.RequireMechanicJob = true
Config.AllowedJobs = {
    mechanic = true,
    mecanico = true,
    bennys = true
}

Config.CommandOpenPanel = "mec"
Config.EnableKeybind = true
Config.PanelDistance = 4.5
Config.WorkshopInteractDistance = 2.5

Config.SyncIntervalMs = 15000
Config.DamageTickMs = 1500
Config.BaseWearPerKm = 0.42
Config.CollisionThreshold = 12.0
Config.CollisionScale = 0.08

Config.StockSupplierMultiplier = 0.82
Config.EconomyMultiplier = 1.0
Config.QuoteTimeoutSeconds = 120

Config.Workshops = {
    [1] = {
        name = "Bennys Centro",
        coords = vec3(-211.95, -1324.05, 31.0),
        radius = 30.0,
        markerColor = { r = 0, g = 170, b = 255, a = 130 }
    },
    [2] = {
        name = "Tuning East",
        coords = vec3(734.02, -1085.52, 22.17),
        radius = 28.0,
        markerColor = { r = 255, g = 100, b = 0, a = 130 }
    }
}

Config.Parts = {
    part_engine_block = { label = "Bloco de Motor", price = 2900 },
    part_gearbox = { label = "Caixa de Cambio", price = 2500 },
    part_brake_kit = { label = "Kit de Freio", price = 1700 },
    part_suspension_kit = { label = "Kit de Suspensao", price = 1950 },
    part_ecu = { label = "Modulo Eletronico", price = 3200 },
    part_chassis_kit = { label = "Kit de Chassi", price = 2800 },
    part_fuel_pump = { label = "Bomba de Combustivel", price = 1300 },
    part_radiator = { label = "Radiador", price = 1400 },
    part_exhaust_tube = { label = "Tubagem de Escape", price = 2100 },
    part_turbo_core = { label = "Nucleo do Turbo", price = 3300 }
}

Config.RepairTiers = {
    quick = { label = "Rapido", restore = 22, timeMult = 0.65, priceMult = 0.75, stockMult = 1.2 },
    pro = { label = "Profissional", restore = 45, timeMult = 1.0, priceMult = 1.0, stockMult = 1.0 },
    oem = { label = "OEM Premium", restore = 80, timeMult = 1.35, priceMult = 1.4, stockMult = 0.9 }
}

Config.Components = {
    engine = {
        label = "Motor",
        item = "part_engine_block",
        repairTime = 18,
        labor = 900,
        stockConsumption = 1
    },
    transmission = {
        label = "Transmissao",
        item = "part_gearbox",
        repairTime = 20,
        labor = 850,
        stockConsumption = 1
    },
    brakes = {
        label = "Freios",
        item = "part_brake_kit",
        repairTime = 15,
        labor = 600,
        stockConsumption = 1
    },
    suspension = {
        label = "Suspensao",
        item = "part_suspension_kit",
        repairTime = 16,
        labor = 650,
        stockConsumption = 1
    },
    electronics = {
        label = "Eletronica",
        item = "part_ecu",
        repairTime = 14,
        labor = 780,
        stockConsumption = 1
    },
    body = {
        label = "Estrutura",
        item = "part_chassis_kit",
        repairTime = 22,
        labor = 950,
        stockConsumption = 1
    },
    fuel = {
        label = "Sistema de Combustivel",
        item = "part_fuel_pump",
        repairTime = 13,
        labor = 520,
        stockConsumption = 1
    },
    cooling = {
        label = "Arrefecimento",
        item = "part_radiator",
        repairTime = 12,
        labor = 500,
        stockConsumption = 1
    },
    exhaust = {
        label = "Tubagem",
        item = "part_exhaust_tube",
        repairTime = 19,
        labor = 720,
        stockConsumption = 1
    },
    turbo = {
        label = "Turbo",
        item = "part_turbo_core",
        repairTime = 17,
        labor = 880,
        stockConsumption = 1
    }
}

Config.DefaultStock = {
    part_engine_block = 6,
    part_gearbox = 6,
    part_brake_kit = 12,
    part_suspension_kit = 10,
    part_ecu = 6,
    part_chassis_kit = 5,
    part_fuel_pump = 12,
    part_radiator = 11,
    part_exhaust_tube = 9,
    part_turbo_core = 7
}
