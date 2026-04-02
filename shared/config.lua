Config = {}

--- 'standalone' | 'qb' | 'esx'
Config.Framework = 'standalone'

Config.Locale = 'pt'

--- Tecla para abrir o painel (padrão: H — https://docs.fivem.net/docs/game-references/controls/)
Config.OpenKey = 74

--- Distância máxima do veículo para diagnóstico/reparo
Config.MaxVehicleDistance = 4.0

--- Intervalo de amostragem de danos (ms)
Config.DamagePollInterval = 750

--- Sincronizar saúde do veículo com o servidor (útil para anti-cheat leve / persistência futura)
Config.SyncHealthToServer = true
Config.ServerSyncInterval = 5000

--- Oficinas: blip + zona + estoque isolado por id
Config.Shops = {
    {
        id = 'bennys_ls',
        label = 'Benny\'s Original Motor Works',
        coords = vector3(-205.75, -1312.35, 31.29),
        blip = { sprite = 446, color = 5, scale = 0.85 },
        radius = 18.0,
        jobs = nil, -- nil = qualquer um; ou { 'mechanic', 'mechanic2' }
    },
    {
        id = 'lsc_harmony',
        label = 'Los Santos Customs — Harmony',
        coords = vector3(1178.0, 2640.0, 37.75),
        blip = { sprite = 72, color = 5, scale = 0.8 },
        radius = 22.0,
        jobs = nil,
    },
}

--- Peças: custo base, tempo de reparo (ms), se exige oficina
Config.Parts = {
    engine_block = {
        labelKey = 'part_engine_block',
        basePrice = 2500,
        repairMs = 12000,
        requiresShop = true,
        healthKeys = { 'engine' },
    },
    transmission = {
        labelKey = 'part_transmission',
        basePrice = 3200,
        repairMs = 14000,
        requiresShop = true,
        healthKeys = { 'engine' },
    },
    radiator = {
        labelKey = 'part_radiator',
        basePrice = 900,
        repairMs = 7000,
        requiresShop = true,
        healthKeys = { 'engine' },
    },
    brakes_kit = {
        labelKey = 'part_brakes',
        basePrice = 1100,
        repairMs = 8000,
        requiresShop = true,
        healthKeys = { 'body' },
    },
    suspension_kit = {
        labelKey = 'part_suspension',
        basePrice = 1800,
        repairMs = 9000,
        requiresShop = true,
        healthKeys = { 'body' },
    },
    battery = {
        labelKey = 'part_battery',
        basePrice = 450,
        repairMs = 4000,
        requiresShop = false,
        healthKeys = { 'engine' },
    },
    fuel_pump = {
        labelKey = 'part_fuel_pump',
        basePrice = 650,
        repairMs = 5500,
        requiresShop = true,
        healthKeys = { 'tank' },
    },
    tyre = {
        labelKey = 'part_tyre',
        basePrice = 280,
        repairMs = 3500,
        requiresShop = false,
        healthKeys = { 'tyres' },
    },
    door_actuator = {
        labelKey = 'part_door',
        basePrice = 400,
        repairMs = 5000,
        requiresShop = true,
        healthKeys = { 'doors' },
    },
    glass_kit = {
        labelKey = 'part_glass',
        basePrice = 320,
        repairMs = 4500,
        requiresShop = false,
        healthKeys = { 'windows' },
    },
    --- Tubagem / sistema de escape (fluxo multi-etapa no cliente)
    exhaust_system = {
        labelKey = 'part_exhaust',
        basePrice = 1500,
        repairMs = 16000,
        requiresShop = true,
        healthKeys = { 'exhaust' },
        isExhaustJob = true,
    },
}

--- Limiares de diagnóstico (0–1000 escala GTA para motor/corpo; outros são derivados)
Config.Thresholds = {
    engineWarn = 850,
    engineBad = 650,
    bodyWarn = 880,
    bodyBad = 700,
    tankWarn = 900,
    tankBad = 750,
}

Config.MinStockAlert = 3
