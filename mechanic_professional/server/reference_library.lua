--[[
    Camada de consulta sobre as bases geradas (TSB, torque, fornecedores, flat-rate).
    Leve em tempo de execução: sem varrer tabelas inteiras.
]]

local ReferenceLibrary = {}
ReferenceLibrary.__index = ReferenceLibrary

function ReferenceLibrary:new()
    local o = {}
    setmetatable(o, self)
    return o
end

function ReferenceLibrary:supplierByCode(code)
    if type(SUPPLIERS_MASTER) ~= "table" then return nil end
    return SUPPLIERS_MASTER[code]
end

function ReferenceLibrary:tsbByIndex(i)
    if type(TSB_INDEX) ~= "table" or not MECHANIC_GEN_TSB_COUNT or MECHANIC_GEN_TSB_COUNT < 1 then return nil end
    local idx = ((i or 1) - 1) % MECHANIC_GEN_TSB_COUNT + 1
    return TSB_INDEX[string.format("TSB-%06d", idx)]
end

function ReferenceLibrary:torqueByIndex(i)
    if type(TORQUE_SPECS) ~= "table" or not MECHANIC_GEN_TORQUE_COUNT or MECHANIC_GEN_TORQUE_COUNT < 1 then return nil end
    local idx = ((i or 1) - 1) % MECHANIC_GEN_TORQUE_COUNT + 1
    return TORQUE_SPECS[string.format("TQ-%06d", idx)]
end

function ReferenceLibrary:flatLaborByIndex(i)
    if type(LABOR_FLAT_RATE) ~= "table" or not MECHANIC_GEN_LABOR_FLAT_COUNT or MECHANIC_GEN_LABOR_FLAT_COUNT < 1 then return nil end
    local idx = ((i or 1) - 1) % MECHANIC_GEN_LABOR_FLAT_COUNT + 1
    return LABOR_FLAT_RATE[string.format("L-FLT-%06d", idx)]
end

function ReferenceLibrary:vehicleProfileByIndex(i)
    if type(VEHICLE_PROFILES) ~= "table" or not MECHANIC_GEN_VEHICLE_COUNT or MECHANIC_GEN_VEHICLE_COUNT < 1 then return nil end
    local idx = ((i or 1) - 1) % MECHANIC_GEN_VEHICLE_COUNT + 1
    return VEHICLE_PROFILES[string.format("VP-%06d", idx)]
end

function ReferenceLibrary:snapshotForJob(job)
    if not job then return {} end
    local seed = (job.mileage_km or 0) + (job.id and #tostring(job.id) or 0) * 17
    return {
        tsb = self:tsbByIndex(seed),
        torque = self:torqueByIndex(seed * 3),
        flat_labor = self:flatLaborByIndex(seed * 5),
        vehicle_ref = self:vehicleProfileByIndex(seed * 7),
    }
end

_G.MechanicReference = ReferenceLibrary:new()
