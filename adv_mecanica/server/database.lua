--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Server Database
     oxmysql wrappers: mechanic profiles, vehicle damage persistence,
     repair history, audit log.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local cache = {
    mechanics = {},   -- [src] = { xp, repairs, lastSeen }
    damage    = {},   -- [netId] = DamageState{}
}

-- ─── Init ─────────────────────────────────────────────────────────────────────
exports('InitDatabase', function()
    -- Tables are created by SQL file; just verify connectivity
    MySQL.query('SELECT 1', {}, function(res)
        if res then
            print('[ADV_MEC] Database connected.')
        else
            print('[ADV_MEC] WARNING: Database not connected!')
        end
    end)
end)

-- ─── Mechanic Profile ─────────────────────────────────────────────────────────
local function FetchMechanicData(identifier, cb)
    MySQL.single('SELECT * FROM adv_mec_mechanics WHERE identifier = ?', { identifier }, function(row)
        cb(row)
    end)
end

local function UpsertMechanicData(identifier, xp, repairs)
    MySQL.update(
        'INSERT INTO adv_mec_mechanics (identifier, xp, repairs, updated_at) VALUES (?, ?, ?, NOW()) '
     .. 'ON DUPLICATE KEY UPDATE xp = VALUES(xp), repairs = VALUES(repairs), updated_at = NOW()',
        { identifier, xp, repairs }
    )
end

local function GetIdentifier(src)
    if Config.Framework == 'qbx' or Config.Framework == 'qb' then
        local p = exports['qbx_core']:GetPlayer(src)
        return p and p.PlayerData.citizenid or GetPlayerIdentifierByType(src, 'license')
    elseif Config.Framework == 'esx' then
        local p = exports['es_extended']:GetPlayerFromId(src)
        return p and p.identifier or GetPlayerIdentifierByType(src, 'license')
    end
    return GetPlayerIdentifierByType(src, 'license')
end

exports('GetMechanicData', function(src)
    local identifier = GetIdentifier(src)
    if cache.mechanics[identifier] then return cache.mechanics[identifier] end

    local result = MySQL.scalar.await('SELECT xp FROM adv_mec_mechanics WHERE identifier = ?', { identifier })
    local data   = { xp = result or 0, repairs = 0, identifier = identifier }
    cache.mechanics[identifier] = data
    return data
end)

exports('AddXP', function(src, amount)
    local identifier = GetIdentifier(src)
    local data       = exports['adv_mecanica']:GetMechanicData(src)
    data.xp          = data.xp + amount
    data.repairs     = (data.repairs or 0) + 1
    cache.mechanics[identifier] = data
    UpsertMechanicData(identifier, data.xp, data.repairs)
    TriggerClientEvent('adv_mecanica:client:syncData', src, data)
end)

-- ─── Vehicle Damage Persistence ───────────────────────────────────────────────
exports('SaveVehicleDamage', function(netVeh, state)
    local json = json.encode(state)
    MySQL.update(
        'INSERT INTO adv_mec_vehicle_damage (net_id, damage_json, updated_at) VALUES (?, ?, NOW()) '
     .. 'ON DUPLICATE KEY UPDATE damage_json = VALUES(damage_json), updated_at = NOW()',
        { netVeh, json }
    )
    cache.damage[netVeh] = state
end)

exports('LoadVehicleDamage', function(netVeh)
    if cache.damage[netVeh] then return cache.damage[netVeh] end

    local row = MySQL.single.await('SELECT damage_json FROM adv_mec_vehicle_damage WHERE net_id = ?', { netVeh })
    if row and row.damage_json then
        local state = json.decode(row.damage_json)
        cache.damage[netVeh] = state
        return state
    end
    return nil
end)

exports('SaveDamageAfterRepair', function(src, netVeh, parts)
    local state = exports['adv_mecanica']:LoadVehicleDamage(netVeh) or {}
    for _, partKey in ipairs(parts) do
        state[partKey] = 1000.0
    end
    exports['adv_mecanica']:SaveVehicleDamage(netVeh, state)
end)

-- ─── Repair Log ───────────────────────────────────────────────────────────────
exports('SavePartRepair', function(src, netVeh, partKey)
    local identifier = GetIdentifier(src)
    MySQL.insert(
        'INSERT INTO adv_mec_repair_log (identifier, net_id, part_key, repaired_at) VALUES (?, ?, ?, NOW())',
        { identifier, netVeh, partKey }
    )
end)

exports('LogRepair', function(src, netVeh, parts, charged, payout)
    local identifier = GetIdentifier(src)
    local partsJson  = json.encode(parts)
    MySQL.insert(
        'INSERT INTO adv_mec_repair_sessions (identifier, net_id, parts_json, total_charged, mechanic_payout, created_at) '
     .. 'VALUES (?, ?, ?, ?, ?, NOW())',
        { identifier, netVeh, partsJson, charged, payout }
    )
end)

-- ─── Stats Query (boss panel) ─────────────────────────────────────────────────
exports('GetMechanicStats', function(src, cb)
    local identifier = GetIdentifier(src)
    MySQL.query(
        'SELECT part_key, COUNT(*) as total FROM adv_mec_repair_log WHERE identifier = ? GROUP BY part_key ORDER BY total DESC LIMIT 10',
        { identifier },
        function(rows) cb(rows or {}) end
    )
end)

exports('GetShopRevenue', function(days, cb)
    days = days or 30
    MySQL.query(
        'SELECT DATE(created_at) as day, SUM(total_charged) as revenue FROM adv_mec_repair_sessions '
     .. 'WHERE created_at >= DATE_SUB(NOW(), INTERVAL ? DAY) GROUP BY day ORDER BY day DESC',
        { days },
        function(rows) cb(rows or {}) end
    )
end)

-- ─── Player disconnect: flush cache ──────────────────────────────────────────
AddEventHandler('playerDropped', function()
    local src        = source
    local identifier = GetIdentifier(src)
    if cache.mechanics[identifier] then
        local d = cache.mechanics[identifier]
        UpsertMechanicData(identifier, d.xp, d.repairs)
        cache.mechanics[identifier] = nil
    end
end)
