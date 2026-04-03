--[[
    Diagnóstico multi-eixo: sensores simulados, correlação com família do veículo,
    geração de códigos DTC fictícios e plano de peças sugerido.
]]

local Diagnostics = {}
Diagnostics.__index = Diagnostics

local SENSOR = {
    engine_temp = "engine_temp",
    oil_pressure = "oil_pressure",
    battery_v = "battery_v",
    brake_wear_f = "brake_wear_f",
    brake_wear_r = "brake_wear_r",
    abs_pulse_fl = "abs_pulse_fl",
    o2_bank1 = "o2_bank1",
    alternator_load = "alternator_load",
    coolant_level = "coolant_level",
    suspension_travel_r = "suspension_travel_r",
}

function Diagnostics:new()
    local o = {}
    setmetatable(o, self)
    return o
end

local function clamp(x, a, b)
    if x < a then return a end
    if x > b then return b end
    return x
end

function Diagnostics:readSensors(vehicleFamily, mileageKm, seed)
    seed = seed or getTickCount()
    math.randomseed(seed % 2147483647)
    local baseWear = clamp(mileageKm / 120000, 0, 1)
    local hotDay = math.random() < 0.35
    local sensors = {
        [SENSOR.engine_temp] = hotDay and math.random(92, 104) or math.random(86, 96),
        [SENSOR.oil_pressure] = math.random(28, 48) - math.floor(baseWear * 12),
        [SENSOR.battery_v] = 12.4 + math.random() * 0.8 - baseWear * 0.4,
        [SENSOR.brake_wear_f] = clamp(math.random(5, 95) + baseWear * 30, 0, 100),
        [SENSOR.brake_wear_r] = clamp(math.random(10, 90) + baseWear * 22, 0, 100),
        [SENSOR.abs_pulse_fl] = math.random(18, 42),
        [SENSOR.o2_bank1] = 0.85 + math.random() * 0.25,
        [SENSOR.alternator_load] = math.random(40, 95),
        [SENSOR.coolant_level] = math.random(60, 100),
        [SENSOR.suspension_travel_r] = math.random(35, 95) - baseWear * 15,
    }
    if vehicleFamily == VEHICLE_FAMILY.SPORT then
        sensors[SENSOR.engine_temp] = sensors[SENSOR.engine_temp] + math.random(3, 8)
        sensors[SENSOR.oil_pressure] = sensors[SENSOR.oil_pressure] - 3
    end
    if vehicleFamily == VEHICLE_FAMILY.COMMERCIAL then
        sensors[SENSOR.alternator_load] = sensors[SENSOR.alternator_load] + math.random(8, 18)
    end
    return sensors
end

local function evalRules(sensors, family, mileageKm)
    local findings = {}
    local parts = {}
    local dtc = {}

    if sensors[SENSOR.brake_wear_f] > 78 then
        findings[#findings + 1] = "Desgaste elevado no eixo dianteiro; risco de metal em contato."
        dtc[#dtc + 1] = "C1B4-FRONT-WEAR"
        parts[#parts + 1] = { sku = "SKU-BRK-PAD-F", qty = 1, reason = "pastilhas dianteiras" }
        if math.random() < 0.45 then
            parts[#parts + 1] = { sku = "SKU-BRK-ROT-F", qty = 2, reason = "discos com martelamento" }
        end
    end

    if sensors[SENSOR.battery_v] < 12.2 and sensors[SENSOR.alternator_load] > 82 then
        findings[#findings + 1] = "Carga elevada no alternador com tensão de bateria baixa."
        dtc[#dtc + 1] = "ELEC-ALT-LOAD"
        parts[#parts + 1] = { sku = "SKU-ELEC-ALT-120A", qty = 1, reason = "alternador sobrecarregado" }
    elseif sensors[SENSOR.battery_v] < 12.0 then
        findings[#findings + 1] = "Bateria com margem crítica de partida a frio."
        dtc[#dtc + 1] = "ELEC-BAT-LOW"
        parts[#parts + 1] = { sku = "SKU-ELEC-BAT-60AH", qty = 1, reason = "substituição preventiva" }
    end

    if sensors[SENSOR.engine_temp] > 99 and sensors[SENSOR.coolant_level] < 72 then
        findings[#findings + 1] = "Superaquecimento correlacionado a nível de arrefecimento."
        dtc[#dtc + 1] = "COOL-TEMP-LVL"
        parts[#parts + 1] = { sku = "SKU-COOL-RAD", qty = 1, reason = "radiador com obstrução / vazamento" }
    end

    if sensors[SENSOR.oil_pressure] < 22 then
        findings[#findings + 1] = "Pressão de óleo abaixo do nominal em regime."
        dtc[#dtc + 1] = "ENG-OIL-PRES"
        parts[#parts + 1] = { sku = "SKU-ENG-OIL5W30", qty = 1, reason = "troca + flush leve" }
        parts[#parts + 1] = { sku = "SKU-ENG-FILTER", qty = 1, reason = "filtro saturado" }
    end

    if sensors[SENSOR.suspension_travel_r] < 42 then
        findings[#findings + 1] = "Curso amortecedor traseiro reduzido; possível perda de gás."
        dtc[#dtc + 1] = "SUS-TRAVEL-R"
        parts[#parts + 1] = { sku = "SKU-SUS-SHOCK-R", qty = 1, reason = "par traseiro" }
    end

    if sensors[SENSOR.abs_pulse_fl] < 22 and sensors[SENSOR.brake_wear_f] < 40 then
        findings[#findings + 1] = "Pulsos ABS frontais baixos com pastilhas ok — investigar homocinética."
        dtc[#dtc + 1] = "ABS-PULSE-CV"
        parts[#parts + 1] = { sku = "SKU-DRIV-CV-JOINT", qty = 1, reason = "folga na junta" }
    end

    if #findings == 0 then
        findings[#findings + 1] = "Nenhuma anomalia crítica; recomendado checklist preventivo."
        dtc[#dtc + 1] = "SYS-OK-PREV"
        if math.random() < 0.5 then
            parts[#parts + 1] = { sku = "SKU-ENG-OIL5W30", qty = 1, reason = "manutenção programada" }
            parts[#parts + 1] = { sku = "SKU-ENG-FILTER", qty = 1, reason = "manutenção programada" }
        end
    end

    if type(DTC_REGISTRY) == "table" and MECHANIC_GEN_DTC_COUNT and MECHANIC_GEN_DTC_COUNT > 0 then
        local idx = (math.floor(mileageKm or 0) % MECHANIC_GEN_DTC_COUNT) + 1
        local code = string.format("G%05d", idx)
        local row = DTC_REGISTRY[code]
        if row then
            dtc[#dtc + 1] = code
            findings[#findings + 1] = "[Registro estendido] " .. tostring(row.title or code)
            for _, sku in ipairs(row.related_skus or {}) do
                parts[#parts + 1] = { sku = sku, qty = 1, reason = "correlação DTC " .. code }
            end
        end
    end

    local filtered = {}
    for _, line in ipairs(parts) do
        local ok = false
        for _, f in ipairs(catalogFamiliesForSku(line.sku)) do
            if f == family then
                ok = true
                break
            end
        end
        if ok then
            filtered[#filtered + 1] = line
        end
    end
    if #filtered == 0 then
        filtered = { { sku = "SKU-TIRE-R17-AS", qty = math.random(2, 4), reason = "kit rodízio / desgaste irregular" } }
    end

    return findings, dtc, filtered
end

function Diagnostics:runProfile(vehicleFamily, mileageKm)
    local sensors = self:readSensors(vehicleFamily, mileageKm)
    local findings, dtc, partsPlan = evalRules(sensors, vehicleFamily, mileageKm)
    return {
        sensors = sensors,
        findings = findings,
        dtc = dtc,
        parts_plan = partsPlan,
        mileage_km = mileageKm,
        family = vehicleFamily,
    }
end

_G.MechanicDiagnostics = Diagnostics:new()
