--[[ Spartan Mechanic — configuração compartilhada ]]

Config = {}

Config.OpenCommand = 'oficina'
Config.OpenKey = 'F6' -- tecla sugerida no README; bind opcional no client

-- Job necessário (nil = qualquer um, para testes)
Config.RequiredJob = 'mechanic'

-- Permissão ACE alternativa (ex.: add_ace group.admin spartan_mechanic allow)
Config.AceBypass = 'spartan_mechanic'

Config.Locale = {
    brand = 'SPARTAN',
    subtitle = 'Motorworks Division',
    tagline = 'Sistema integrado de ordens de serviço',
}

JOB_STATE = {
    INTAKE = 'INTAKE',
    DIAGNOSTIC = 'DIAGNOSTIC',
    PARTS_PULL = 'PARTS_PULL',
    LABOR = 'LABOR',
    QC = 'QC',
    READY = 'READY',
    CLOSED = 'CLOSED',
}

VEHICLE_FAMILY = {
    COMPACT = 'COMPACT',
    SEDAN = 'SEDAN',
    SUV = 'SUV',
    SPORT = 'SPORT',
    COMMERCIAL = 'COMMERCIAL',
    MOTORCYCLE = 'MOTORCYCLE',
}

PARTS_CATALOG = {
    ['SKU-BRK-PAD-F'] = {
        name = 'Pastilha de freio dianteira (cerâmica)',
        family = { 'COMPACT', 'SEDAN', 'SUV' },
        unit = 'par',
        reorder_point = 8,
        supplier = 'FreioMax',
        hazard = false,
    },
    ['SKU-BRK-ROT-F'] = {
        name = 'Disco de freio ventilado 288mm',
        family = { 'SEDAN', 'SPORT', 'SUV' },
        unit = 'un',
        reorder_point = 4,
        supplier = 'MetalParts',
        hazard = false,
    },
    ['SKU-ENG-OIL5W30'] = {
        name = 'Óleo sintético 5W-30 (5L)',
        family = { 'COMPACT', 'SEDAN', 'SUV', 'SPORT', 'COMMERCIAL', 'MOTORCYCLE' },
        unit = 'galão',
        reorder_point = 12,
        supplier = 'Lubrificantes Sul',
        hazard = true,
    },
    ['SKU-ENG-FILTER'] = {
        name = 'Filtro de óleo spin-on premium',
        family = { 'COMPACT', 'SEDAN', 'SUV', 'SPORT', 'MOTORCYCLE' },
        unit = 'un',
        reorder_point = 20,
        supplier = 'FilterCo',
        hazard = false,
    },
    ['SKU-SUS-SHOCK-R'] = {
        name = 'Amortecedor traseiro a gás',
        family = { 'SEDAN', 'SUV' },
        unit = 'par',
        reorder_point = 6,
        supplier = 'Suspensão Pro',
        hazard = false,
    },
    ['SKU-ELEC-ALT-120A'] = {
        name = 'Alternador 120A',
        family = { 'SEDAN', 'SUV', 'COMMERCIAL' },
        unit = 'un',
        reorder_point = 2,
        supplier = 'Elétrica Central',
        hazard = false,
    },
    ['SKU-ELEC-BAT-60AH'] = {
        name = 'Bateria 60Ah AGM',
        family = { 'COMPACT', 'SEDAN', 'SUV', 'SPORT' },
        unit = 'un',
        reorder_point = 5,
        supplier = 'EnergyCell',
        hazard = true,
    },
    ['SKU-COOL-RAD'] = {
        name = 'Radiador alumínio reforçado',
        family = { 'SEDAN', 'SUV', 'SPORT' },
        unit = 'un',
        reorder_point = 3,
        supplier = 'Thermal Systems',
        hazard = false,
    },
    ['SKU-DRIV-CV-JOINT'] = {
        name = 'Junta homocinética lado roda',
        family = { 'COMPACT', 'SEDAN', 'SUV' },
        unit = 'un',
        reorder_point = 6,
        supplier = 'DriveLine',
        hazard = false,
    },
    ['SKU-TIRE-R17-AS'] = {
        name = 'Pneu 225/45R17 all-season',
        family = { 'SEDAN', 'SPORT', 'SUV', 'MOTORCYCLE' },
        unit = 'un',
        reorder_point = 16,
        supplier = 'RubberWorld',
        hazard = false,
    },
}

function CatalogFamiliesForSku(sku)
    local p = PARTS_CATALOG[sku]
    if not p then return {} end
    return p.family or {}
end
