Config = {}

Config.Locale = 'pt-BR'
Config.Debug = false

Config.Framework = 'auto' -- auto | qbcore | esx | standalone
Config.StorageMode = 'auto' -- auto | json | oxmysql

Config.OpenCommand = 'mecanica'
Config.AdminCommand = 'mecanica_admin'
Config.OpenDistance = 3.0
Config.OpenVehicleRange = 6.0
Config.MarkerDrawDistance = 25.0
Config.InspectionIntervalMs = 4000
Config.SaveIntervalMs = 30000
Config.SyncDebounceMs = 4500
Config.NuiFocusMouse = true
Config.AllowSelfServiceWithoutJob = true
Config.EnableBlips = true
Config.EnableMarkers = true
Config.MaxHistoryEntries = 30

Config.WorkshopEconomy = {
    defaultBalance = 250000,
    lowStockThreshold = 2,
    orderLeadMinMs = 15000,
    orderLeadMaxMs = 45000,
}

Config.MechanicJobs = {
    mechanic = true,
    mec = true,
    bennys = true,
}

Config.Workshops = {
    {
        id = 'centro_performance',
        label = 'Centro Performance',
        coords = vector3(-338.76, -136.86, 39.01),
        vehicleBay = vector3(-330.95, -144.31, 39.01),
        stockBay = vector3(-343.16, -131.67, 39.01),
        radius = 16.0,
        laborRate = 185,
        stockMarkup = 1.12,
        reputation = 4.9,
        specialty = 'Preparacao premium, diagnostico e restauracao completa',
    },
    {
        id = 'sandy_heavy_duty',
        label = 'Sandy Heavy Duty Garage',
        coords = vector3(1177.71, 2640.24, 37.75),
        vehicleBay = vector3(1174.96, 2639.76, 37.75),
        stockBay = vector3(1182.22, 2642.48, 37.75),
        radius = 15.0,
        laborRate = 165,
        stockMarkup = 1.08,
        reputation = 4.6,
        specialty = 'Caminhonetes, SUVs, utilitarios e preparacao off-road',
    },
    {
        id = 'paleto_precision',
        label = 'Paleto Precision Motors',
        coords = vector3(110.18, 6626.15, 31.79),
        vehicleBay = vector3(114.29, 6624.31, 31.79),
        stockBay = vector3(108.43, 6630.32, 31.79),
        radius = 14.0,
        laborRate = 150,
        stockMarkup = 1.06,
        reputation = 4.4,
        specialty = 'Manutencao completa, alinhamento e atendimento express',
    },
}

Config.ConditionThresholds = {
    pristine = 85,
    stable = 70,
    warning = 50,
    critical = 30,
    failed = 12,
}

Config.DamageModel = {
    baseWearFactor = 0.018,
    collisionFactor = 0.12,
    burnoutFactor = 0.09,
    brakingFactor = 0.06,
    offroadFactor = 0.07,
    overheatFactor = 0.11,
    driftFactor = 0.05,
    landingFactor = 0.08,
}

Config.ServiceDurations = {
    diagnostic = 8000,
    repair = 14000,
    replace = 22000,
    performance = 26000,
    stockOrder = 5000,
}

Config.ServicePackages = {
    express = {
        label = 'Express',
        laborMultiplier = 1.10,
        stockPriority = 1.0,
    },
    premium = {
        label = 'Premium',
        laborMultiplier = 1.25,
        stockPriority = 1.2,
    },
    restoration = {
        label = 'Restauracao',
        laborMultiplier = 1.45,
        stockPriority = 1.35,
    },
}

Config.VehicleClassWear = {
    [0] = 1.00, -- compacts
    [1] = 1.00, -- sedans
    [2] = 1.05, -- SUVs
    [3] = 1.02, -- coupes
    [4] = 1.08, -- muscle
    [5] = 1.10, -- sports classics
    [6] = 1.16, -- sports
    [7] = 1.24, -- super
    [8] = 0.94, -- motorcycles
    [9] = 1.08, -- off-road
    [10] = 1.22, -- industrial
    [11] = 1.14, -- utility
    [12] = 1.18, -- vans
    [13] = 0.80, -- cycles
    [14] = 0.72, -- boats
    [15] = 1.40, -- helicopters
    [16] = 1.50, -- planes
    [17] = 1.20, -- service
    [18] = 1.08, -- emergency
    [19] = 1.25, -- military
    [20] = 1.16, -- commercial
    [21] = 1.05, -- trains
}

Config.StockOrderAmounts = { 1, 3, 5, 10 }

Config.Notifications = {
    success = '^2[Mecanica]^7 %s',
    error = '^1[Mecanica]^7 %s',
    info = '^3[Mecanica]^7 %s',
}

Config.UiTheme = {
    accent = '#57d3ff',
    accentSoft = 'rgba(87, 211, 255, 0.18)',
    danger = '#ff6f91',
    warning = '#ffc857',
    success = '#3ddc97',
    background = '#07111f',
}
