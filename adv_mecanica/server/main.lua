--[[ ═══════════════════════════════════════════════════════════════════════════
     ADV Mecânica – Server Main
     Orchestrates repair workflow, payment, employee payout, event routing.
    ═══════════════════════════════════════════════════════════════════════════ ]]

local activeRepairs = {}   -- [source] = { parts, vehicle, step }

-- ─── Helpers ─────────────────────────────────────────────────────────────────
local function GetPlayer(src)
    if Config.Framework == 'qbx' or Config.Framework == 'qb' then
        return exports['qbx_core']:GetPlayer(src)
    elseif Config.Framework == 'esx' then
        return exports['es_extended']:GetPlayerFromId(src)
    end
end

local function GetJob(src)
    local p = GetPlayer(src)
    if not p then return nil end
    if Config.Framework == 'qbx' or Config.Framework == 'qb' then
        return p.PlayerData.job
    elseif Config.Framework == 'esx' then
        return { name = p.job.name, grade = p.job.grade_name, gradeLevel = p.job.grade }
    end
end

local function IsMechanic(src)
    local job = GetJob(src)
    return job and job.name == Config.MechanicJob
end

local function HasItem(src, item, qty)
    qty = qty or 1
    return exports['ox_inventory']:GetItem(src, item, nil, true) >= qty
end

local function RemoveItem(src, item, qty)
    exports['ox_inventory']:RemoveItem(src, item, qty or 1)
end

local function AddMoney(src, method, amount)
    local p = GetPlayer(src)
    if not p then return end
    if Config.Framework == 'qbx' or Config.Framework == 'qb' then
        if method == 'cash' then
            p.Functions.AddMoney('cash', amount)
        else
            p.Functions.AddMoney('bank', amount)
        end
    elseif Config.Framework == 'esx' then
        if method == 'cash' then
            p.addMoney(amount)
        else
            p.addAccountMoney('bank', amount)
        end
    end
end

local function RemoveMoney(src, method, amount)
    local p = GetPlayer(src)
    if not p then return false end
    if Config.Framework == 'qbx' or Config.Framework == 'qb' then
        if method == 'cash' then
            return p.Functions.RemoveMoney('cash', amount)
        else
            return p.Functions.RemoveMoney('bank', amount)
        end
    elseif Config.Framework == 'esx' then
        if method == 'cash' then
            if p.getMoney() >= amount then p.removeMoney(amount) return true end
        else
            if p.getAccountMoney('bank') >= amount then p.removeAccountMoney('bank', amount) return true end
        end
    end
    return false
end

local function NotifyPlayer(src, msg, type)
    Config.Notify(src, msg, type or 'info', 4000)
end

-- ─── Skill / XP ──────────────────────────────────────────────────────────────
local function GetDiscount(src)
    local data = exports['adv_mecanica']:GetMechanicData(src)
    if not data then return 0 end
    local lvl = 1
    for _, l in ipairs(Config.XP.levels) do
        if data.xp >= l.xpRequired then lvl = l end
    end
    return lvl.discount or 0
end

local function AwardXP(src, amount)
    exports['adv_mecanica']:AddXP(src, amount)
end

-- ─── Repair Request ───────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:requestRepair', function(payload)
    local src     = source
    local parts   = payload.parts
    local netVeh  = payload.vehicle
    local method  = payload.paymentMethod or Config.Economy.defaultMethod

    if not IsMechanic(src) then
        NotifyPlayer(src, Locale('not_mechanic'), 'error')
        return
    end

    if activeRepairs[src] then
        NotifyPlayer(src, Locale('already_repairing'), 'error')
        return
    end

    -- Validate parts and calculate total cost
    local totalCost = 0
    local totalTime = 0
    local totalXP   = 0
    local missingItems = {}

    for _, partKey in ipairs(parts) do
        local cfg = Config.Parts[partKey]
        if not cfg then goto continue end

        if not HasItem(src, cfg.item, 1) then
            -- Check workshop stock
            local stockQty = exports['adv_mecanica']:GetStockQty(cfg.item)
            if stockQty < 1 then
                missingItems[#missingItems+1] = cfg.item
            end
        end

        totalCost = totalCost + cfg.cost
        totalTime = totalTime + cfg.time
        totalXP   = totalXP   + cfg.exp
        ::continue::
    end

    if #missingItems > 0 then
        NotifyPlayer(src, Locale('missing_items', table.concat(missingItems, ', ')), 'error')
        return
    end

    -- Apply discount
    local discount  = GetDiscount(src)
    local finalCost = math.floor(totalCost * (1 - discount))
    local tax       = math.floor(finalCost * Config.Economy.tax)
    local charged   = finalCost + tax

    -- Charge customer (use owner data from vehicle or self)
    if not RemoveMoney(src, method, charged) then
        NotifyPlayer(src, Locale('insufficient_funds', FormatMoney(charged)), 'error')
        return
    end

    -- Consume items from inventory or workshop stock
    for _, partKey in ipairs(parts) do
        local cfg = Config.Parts[partKey]
        if cfg then
            if HasItem(src, cfg.item, 1) then
                RemoveItem(src, cfg.item, 1)
            else
                exports['adv_mecanica']:ConsumeStock(cfg.item, 1)
            end
        end
    end

    -- Mark active repair
    activeRepairs[src] = { parts = parts, step = 0, netVeh = netVeh, method = method,
                           totalXP = totalXP, payout = math.floor(charged * Config.Economy.employeePay) }

    NotifyPlayer(src, Locale('repair_started', FormatMoney(charged)), 'info')

    -- Begin sequential repair steps
    CreateThread(function()
        for i, partKey in ipairs(parts) do
            if not activeRepairs[src] then return end  -- cancelled
            local cfg = Config.Parts[partKey]
            if not cfg then goto next end

            activeRepairs[src].step = i

            -- Notify client to animate + show progress
            TriggerClientEvent('adv_mecanica:client:beginRepairStep', src, partKey, i, #parts, cfg.time)

            -- Wait for animation duration
            Wait(cfg.time * 1000)

            -- Save individual part repair to DB
            exports['adv_mecanica']:SavePartRepair(src, netVeh, partKey)

            ::next::
        end

        -- All done
        local repair = activeRepairs[src]
        activeRepairs[src] = nil

        -- Pay employee
        AddMoney(src, 'bank', repair.payout)
        AwardXP(src, repair.totalXP)

        -- Save damage state
        exports['adv_mecanica']:SaveDamageAfterRepair(src, netVeh, parts)

        TriggerClientEvent('adv_mecanica:client:repairComplete', src, parts, repair.totalXP, repair.payout)
        NotifyPlayer(src, Locale('repair_complete_pay', FormatMoney(repair.payout)), 'success')

        -- Log to DB
        exports['adv_mecanica']:LogRepair(src, netVeh, parts, charged, repair.payout)
    end)
end)

-- ─── Cancel Repair ────────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:cancelRepair', function()
    local src = source
    if activeRepairs[src] then
        activeRepairs[src] = nil
        NotifyPlayer(src, Locale('repair_cancelled'), 'warning')
    end
end)

-- ─── Sync Player Data ─────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:syncPlayerData', function()
    local src  = source
    local data = exports['adv_mecanica']:GetMechanicData(src)
    TriggerClientEvent('adv_mecanica:client:syncData', src, data or { xp = 0, repairs = 0 })
end)

-- ─── Stock Request ────────────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:getStock', function(cb)
    local src   = source
    local stock = exports['adv_mecanica']:GetAllStock()
    TriggerClientEvent('adv_mecanica:client:stockResponse', src, stock)
    if cb then cb(stock) end
end)

-- ─── Buy Part (player buys from workshop inventory) ─────────────────────────
RegisterNetEvent('adv_mecanica:server:buyPart', function(item, qty)
    local src = source
    qty = math.max(1, math.min(qty or 1, 10))

    local stockQty = exports['adv_mecanica']:GetStockQty(item)
    if stockQty < qty then
        NotifyPlayer(src, Locale('stock_insufficient', item), 'error')
        return
    end

    -- Find item cost in Config.Parts
    local unitCost = 0
    for _, cfg in pairs(Config.Parts) do
        if cfg.item == item then unitCost = cfg.cost * 0.6 break end  -- 60% retail value
    end

    local total = unitCost * qty
    if total > 0 and not RemoveMoney(src, Config.Economy.defaultMethod, total) then
        NotifyPlayer(src, Locale('insufficient_funds', FormatMoney(total)), 'error')
        return
    end

    exports['adv_mecanica']:ConsumeStock(item, qty)
    exports['ox_inventory']:AddItem(src, item, qty)
    NotifyPlayer(src, Locale('item_purchased', qty, item), 'success')
end)

-- ─── Add Stock (boss only) ────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:addStock', function(item, qty)
    local src = source
    local job = GetJob(src)
    if not job then return end

    local isBoss = false
    for _, g in ipairs(Config.BossGrades) do
        if job.gradeLevel == g then isBoss = true break end
    end

    if not isBoss then
        NotifyPlayer(src, Locale('not_authorized'), 'error')
        return
    end

    qty = math.max(1, math.min(qty or 1, Config.Stock.maxPerItem))
    exports['adv_mecanica']:AddStock(item, qty)
    local stock = exports['adv_mecanica']:GetAllStock()
    TriggerClientEvent('adv_mecanica:client:stockUpdated', src, stock)
    NotifyPlayer(src, Locale('stock_added', qty, item), 'success')
end)

-- ─── Save Vehicle Damage ──────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:saveDamage', function(netVeh, state)
    exports['adv_mecanica']:SaveVehicleDamage(netVeh, state)
end)

-- ─── Load Vehicle Damage ──────────────────────────────────────────────────────
RegisterNetEvent('adv_mecanica:server:loadDamage', function(netVeh, cb)
    local src   = source
    local state = exports['adv_mecanica']:LoadVehicleDamage(netVeh)
    TriggerClientEvent('adv_mecanica:client:damageLoaded', src, netVeh, state)
    if cb then cb(state) end
end)

-- ─── Helpers (exported for stock.lua / database.lua) ─────────────────────────
local function FormatMoney(amount)
    return string.format('R$ %s', math.floor(amount))
end

-- ─── Resource start/stop ─────────────────────────────────────────────────────
AddEventHandler('onResourceStart', function(res)
    if res ~= GetCurrentResourceName() then return end
    print('[ADV_MEC] Sistema de Mecânica Iniciado.')
    exports['adv_mecanica']:InitDatabase()
    exports['adv_mecanica']:InitStock()
end)

AddEventHandler('onResourceStop', function(res)
    if res ~= GetCurrentResourceName() then return end
    for src, repair in pairs(activeRepairs) do
        TriggerClientEvent('adv_mecanica:client:repairFailed', src, 'Servidor reiniciado.')
    end
    activeRepairs = {}
end)
