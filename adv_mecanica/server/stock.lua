--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Server Stock Manager
     Manages workshop parts inventory with DB persistence, auto-restock,
     low-stock alerts and boss-grade restocking panel support.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local stockCache = {}   -- [item] = qty

-- ─── Build default stock table from Config ───────────────────────────────────
local function DefaultStock()
    local tbl = {}
    for _, partCfg in pairs(Config.Parts) do
        if not tbl[partCfg.item] then
            tbl[partCfg.item] = math.floor(Config.Stock.maxPerItem * 0.5)
        end
    end
    return tbl
end

-- ─── Init ─────────────────────────────────────────────────────────────────────
exports('InitStock', function()
    -- Load from DB
    MySQL.query('SELECT item, qty FROM adv_mec_stock', {}, function(rows)
        if rows and #rows > 0 then
            for _, row in ipairs(rows) do
                stockCache[row.item] = row.qty
            end
            print('[ADV_MEC] Stock loaded: ' .. #rows .. ' items.')
        else
            -- First run: seed defaults
            stockCache = DefaultStock()
            for item, qty in pairs(stockCache) do
                MySQL.insert('INSERT IGNORE INTO adv_mec_stock (item, qty) VALUES (?, ?)', { item, qty })
            end
            print('[ADV_MEC] Stock seeded with defaults.')
        end
    end)
end)

-- ─── Getters / Setters ────────────────────────────────────────────────────────
exports('GetStockQty', function(item)
    return stockCache[item] or 0
end)

exports('GetAllStock', function()
    return stockCache
end)

exports('ConsumeStock', function(item, qty)
    qty = qty or 1
    local current = stockCache[item] or 0
    local newQty  = math.max(0, current - qty)
    stockCache[item] = newQty
    MySQL.update('UPDATE adv_mec_stock SET qty = ? WHERE item = ?', { newQty, item })

    -- Low stock alert
    if newQty <= Config.Stock.lowWarning then
        -- Notify all online mechanics
        local players = GetPlayers()
        for _, src in ipairs(players) do
            local job = GetJob and GetJob(tonumber(src))
            if job and job.name == Config.MechanicJob then
                Config.Notify(tonumber(src), Locale('low_stock_alert', item, newQty), 'warning', 6000)
            end
        end
    end
end)

exports('AddStock', function(item, qty)
    qty = qty or 1
    local current = stockCache[item] or 0
    local newQty  = math.min(Config.Stock.maxPerItem, current + qty)
    stockCache[item] = newQty

    MySQL.update(
        'INSERT INTO adv_mec_stock (item, qty) VALUES (?, ?) ON DUPLICATE KEY UPDATE qty = VALUES(qty)',
        { item, newQty }
    )
    return newQty
end)

exports('SetStock', function(item, qty)
    stockCache[item] = qty
    MySQL.update(
        'INSERT INTO adv_mec_stock (item, qty) VALUES (?, ?) ON DUPLICATE KEY UPDATE qty = VALUES(qty)',
        { item, qty }
    )
end)

-- ─── Auto-restock Timer ───────────────────────────────────────────────────────
if Config.Stock.restockTime > 0 then
    CreateThread(function()
        while true do
            Wait(Config.Stock.restockTime * 1000)
            local restocked = {}
            for item, qty in pairs(stockCache) do
                if qty < Config.Stock.lowWarning then
                    local add = math.floor(Config.Stock.maxPerItem * 0.3)
                    exports['adv_mecanica']:AddStock(item, add)
                    restocked[#restocked+1] = item
                end
            end
            if #restocked > 0 then
                print('[ADV_MEC] Auto-restocked: ' .. table.concat(restocked, ', '))
                -- Notify online bosses
                local players = GetPlayers()
                for _, src in ipairs(players) do
                    local job = GetJob and GetJob(tonumber(src))
                    if job and job.name == Config.MechanicJob then
                        local isBoss = false
                        for _, g in ipairs(Config.BossGrades) do
                            if job.gradeLevel == g then isBoss = true break end
                        end
                        if isBoss then
                            Config.Notify(tonumber(src), Locale('auto_restocked', #restocked), 'info', 5000)
                        end
                    end
                end
            end
        end
    end)
end

-- ─── Restock Order (server-side) ─────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:restockOrder', function(orders)
    local src = source
    -- Validate boss
    local job = GetJob and GetJob(src)
    if not job then return end
    local isBoss = false
    for _, g in ipairs(Config.BossGrades) do
        if job.gradeLevel == g then isBoss = true break end
    end
    if not isBoss then
        Config.Notify(src, Locale('not_authorized'), 'error')
        return
    end

    local totalCost = 0
    for _, order in ipairs(orders) do
        -- Each unit costs retail price * 0.4 (wholesale)
        local cfg = nil
        for _, partCfg in pairs(Config.Parts) do
            if partCfg.item == order.item then cfg = partCfg break end
        end
        if cfg then
            totalCost = totalCost + cfg.cost * 0.4 * order.qty
        end
    end

    -- Deduct from mechanic society account (placeholder – integrate with society money)
    -- RemoveSocietyMoney(totalCost)

    for _, order in ipairs(orders) do
        exports['adv_mecanica']:AddStock(order.item, order.qty)
    end

    local updatedStock = exports['adv_mecanica']:GetAllStock()
    TriggerClientEvent('adv_mecanica:client:stockUpdated', src, updatedStock)
    Config.Notify(src, Locale('restock_complete', #orders), 'success')
end)
