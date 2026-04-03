--[[
    Catálogo de peças: SKU, compatibilidade por família de veículo, lead time simulado,
    ponto de reordenação e fornecedor. Usado pelo servidor e referenciado no painel.
]]

VEHICLE_FAMILY = {
    COMPACT = "COMPACT",
    SEDAN = "SEDAN",
    SUV = "SUV",
    SPORT = "SPORT",
    COMMERCIAL = "COMMERCIAL",
    MOTORCYCLE = "MOTORCYCLE",
}

PARTS_CATALOG = {
    ["SKU-BRK-PAD-F"] = {
        name = "Pastilha de freio dianteira (cerâmica)",
        family = { VEHICLE_FAMILY.COMPACT, VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SUV },
        unit = "par",
        reorder_point = 8,
        lead_time_min = 25,
        supplier = "FreioMax Distribuidora",
        hazard = false,
    },
    ["SKU-BRK-ROT-F"] = {
        name = "Disco de freio ventilado 288mm",
        family = { VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SPORT, VEHICLE_FAMILY.SUV },
        unit = "un",
        reorder_point = 4,
        lead_time_min = 40,
        supplier = "MetalParts SP",
        hazard = false,
    },
    ["SKU-ENG-OIL5W30"] = {
        name = "Óleo sintético 5W-30 (5L)",
        family = {
            VEHICLE_FAMILY.COMPACT,
            VEHICLE_FAMILY.SEDAN,
            VEHICLE_FAMILY.SUV,
            VEHICLE_FAMILY.SPORT,
            VEHICLE_FAMILY.COMMERCIAL,
            VEHICLE_FAMILY.MOTORCYCLE,
        },
        unit = "galão",
        reorder_point = 12,
        lead_time_min = 15,
        supplier = "Lubrificantes Sul",
        hazard = true,
    },
    ["SKU-ENG-FILTER"] = {
        name = "Filtro de óleo spin-on universal premium",
        family = {
            VEHICLE_FAMILY.COMPACT,
            VEHICLE_FAMILY.SEDAN,
            VEHICLE_FAMILY.SUV,
            VEHICLE_FAMILY.SPORT,
            VEHICLE_FAMILY.MOTORCYCLE,
        },
        unit = "un",
        reorder_point = 20,
        lead_time_min = 10,
        supplier = "FilterCo",
        hazard = false,
    },
    ["SKU-SUS-SHOCK-R"] = {
        name = "Amortecedor traseiro a gás",
        family = { VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SUV },
        unit = "par",
        reorder_point = 6,
        lead_time_min = 55,
        supplier = "Suspensão Pro",
        hazard = false,
    },
    ["SKU-ELEC-ALT-120A"] = {
        name = "Alternador 120A com regulador integrado",
        family = { VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SUV, VEHICLE_FAMILY.COMMERCIAL },
        unit = "un",
        reorder_point = 2,
        lead_time_min = 90,
        supplier = "Elétrica Central",
        hazard = false,
    },
    ["SKU-ELEC-BAT-60AH"] = {
        name = "Bateria 60Ah AGM start-stop",
        family = {
            VEHICLE_FAMILY.COMPACT,
            VEHICLE_FAMILY.SEDAN,
            VEHICLE_FAMILY.SUV,
            VEHICLE_FAMILY.SPORT,
        },
        unit = "un",
        reorder_point = 5,
        lead_time_min = 20,
        supplier = "EnergyCell",
        hazard = true,
    },
    ["SKU-COOL-RAD"] = {
        name = "Radiador alumínio núcleo reforçado",
        family = { VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SUV, VEHICLE_FAMILY.SPORT },
        unit = "un",
        reorder_point = 3,
        lead_time_min = 70,
        supplier = "Thermal Systems",
        hazard = false,
    },
    ["SKU-DRIV-CV-JOINT"] = {
        name = "Junta homocinética lado roda",
        family = { VEHICLE_FAMILY.COMPACT, VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SUV },
        unit = "un",
        reorder_point = 6,
        lead_time_min = 35,
        supplier = "DriveLine Parts",
        hazard = false,
    },
    ["SKU-TIRE-R17-AS"] = {
        name = "Pneu 225/45R17 all-season",
        family = { VEHICLE_FAMILY.SEDAN, VEHICLE_FAMILY.SPORT, VEHICLE_FAMILY.SUV, VEHICLE_FAMILY.MOTORCYCLE },
        unit = "un",
        reorder_point = 16,
        lead_time_min = 30,
        supplier = "RubberWorld",
        hazard = false,
    },
}

function catalogFamiliesForSku(sku)
    local p = PARTS_CATALOG[sku]
    if not p then return {} end
    return p.family or {}
end

function catalogIsMegacatalog()
    return PARTS_CATALOG["SKU-GEN-000001"] ~= nil
end

--[[
    Lista SKUs para painel / snapshots. Com catálogo gerado em massa (somente servidor),
    expõe apenas itens "core" (não SKU-GEN-*) para evitar dezenas de milhares de linhas na UI.
]]
function catalogSkuList()
    local t = {}
    local mega = catalogIsMegacatalog()
    for sku in pairs(PARTS_CATALOG) do
        if not mega or sku:sub(1, 8) ~= "SKU-GEN-" then
            t[#t + 1] = sku
        end
    end
    table.sort(t)
    return t
end
