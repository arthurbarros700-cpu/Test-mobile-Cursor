local resourceName = GetCurrentResourceName()
local stockPath = GetResourcePath(resourceName) .. '/stock.json'
local defaultStockPath = GetResourcePath(resourceName) .. '/data/stock_default.json'

local ShopStock = {} --- [shopId] = { partId = count }
local PendingRepair = {} --- [src] = { partId, shopId, price, at }

local function loadJsonFile(path)
    local f = io.open(path, 'r')
    if not f then return nil end
    local content = f:read('*a')
    f:close()
    if not content or content == '' then return nil end
    return json.decode(content)
end

local function saveStock()
    local encoded = json.encode(ShopStock)
    local f = io.open(stockPath, 'w')
    if f then
        f:write(encoded)
        f:close()
    end
end

local function deepCopyDefaults()
    local t = {}
    local def = loadJsonFile(defaultStockPath) or {}
    for _, shop in ipairs(Config.Shops) do
        t[shop.id] = {}
        for partId, amount in pairs(def) do
            t[shop.id][partId] = amount
        end
    end
    return t
end

local function ensureStock()
    local disk = loadJsonFile(stockPath)
    if disk and type(disk) == 'table' then
        ShopStock = disk
    else
        ShopStock = deepCopyDefaults()
        saveStock()
    end
    for _, shop in ipairs(Config.Shops) do
        if not ShopStock[shop.id] then
            ShopStock[shop.id] = loadJsonFile(defaultStockPath) or {}
        end
    end
end

local function getPlayerMoney(src)
    if Config.Framework == 'esx' then
        local ESX = exports['es_extended']:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(src)
        if not xPlayer then return 0 end
        return xPlayer.getMoney() or 0
    elseif Config.Framework == 'qb' then
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return 0 end
        return Player.Functions.GetMoney('cash') or 0
    end
    return 999999999
end

local function removePlayerMoney(src, amount)
    if amount <= 0 then return true end
    if Config.Framework == 'esx' then
        local ESX = exports['es_extended']:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(src)
        if not xPlayer then return false end
        if (xPlayer.getMoney() or 0) < amount then return false end
        xPlayer.removeMoney(amount)
        return true
    elseif Config.Framework == 'qb' then
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return false end
        return Player.Functions.RemoveMoney('cash', amount)
    end
    return true
end

local function addPlayerMoney(src, amount)
    if amount <= 0 then return end
    if Config.Framework == 'esx' then
        local ESX = exports['es_extended']:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(src)
        if xPlayer then xPlayer.addMoney(amount) end
    elseif Config.Framework == 'qb' then
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(src)
        if Player then Player.Functions.AddMoney('cash', amount) end
    end
end

local function playerHasShopJob(src, shop)
    if not shop.jobs then return true end
    if Config.Framework == 'esx' then
        local ESX = exports['es_extended']:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(src)
        if not xPlayer then return false end
        local j = xPlayer.job and xPlayer.job.name
        for _, allowed in ipairs(shop.jobs) do
            if j == allowed then return true end
        end
        return false
    elseif Config.Framework == 'qb' then
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return false end
        local j = Player.PlayerData.job.name
        for _, allowed in ipairs(shop.jobs) do
            if j == allowed then return true end
        end
        return false
    end
    return true
end

local function getShopForCoords(coords)
    if not coords then return nil end
    for _, shop in ipairs(Config.Shops) do
        local d = #(vector3(coords.x, coords.y, coords.z) - shop.coords)
        if d <= shop.radius then
            return shop
        end
    end
    return nil
end

local function priceForPart(partId)
    local p = Config.Parts[partId]
    if not p then return nil end
    return p.basePrice
end

RegisterNetEvent('mechanic:server:getPanelData', function(coordsJson, vehicleNetId)
    local src = source
    local coords = json.decode(coordsJson)
    local shop = getShopForCoords(coords)
    local stock = shop and ShopStock[shop.id] or {}
    local money = getPlayerMoney(src)
    local canUseShop = true
    if shop and shop.jobs and not playerHasShopJob(src, shop) then
        canUseShop = false
    end
    TriggerClientEvent('mechanic:client:panelData', src, {
        shop = shop and { id = shop.id, label = shop.label } or nil,
        stock = stock,
        money = money,
        canUseShop = canUseShop,
        vehicleNetId = vehicleNetId,
    })
end)

RegisterNetEvent('mechanic:server:repairRequest', function(payloadJson)
    local src = source
    local data = json.decode(payloadJson)
    if type(data) ~= 'table' then return end
    local partId = data.partId
    local coords = data.coords
    local shop = getShopForCoords(coords)
    local part = Config.Parts[partId]
    if not part then
        TriggerClientEvent('mechanic:client:repairResult', src, false, 'invalid_part')
        return
    end
    if part.requiresShop and not shop then
        TriggerClientEvent('mechanic:client:repairResult', src, false, 'not_in_shop')
        return
    end
    if shop and shop.jobs and not playerHasShopJob(src, shop) then
        TriggerClientEvent('mechanic:client:repairResult', src, false, 'no_job')
        return
    end
    local shopId = shop and shop.id or 'field'
    if shop then
        local s = ShopStock[shopId]
        if not s or (s[partId] or 0) < 1 then
            TriggerClientEvent('mechanic:client:repairResult', src, false, 'no_stock')
            return
        end
    end
    local price = priceForPart(partId)
    if not price then
        TriggerClientEvent('mechanic:client:repairResult', src, false, 'invalid_part')
        return
    end
    if getPlayerMoney(src) < price then
        TriggerClientEvent('mechanic:client:repairResult', src, false, 'not_enough_money')
        return
    end
    if not removePlayerMoney(src, price) then
        TriggerClientEvent('mechanic:client:repairResult', src, false, 'not_enough_money')
        return
    end
    if shop then
        ShopStock[shopId][partId] = (ShopStock[shopId][partId] or 0) - 1
        if ShopStock[shopId][partId] < 0 then ShopStock[shopId][partId] = 0 end
        saveStock()
    end
    PendingRepair[src] = {
        partId = partId,
        shopId = shopId,
        price = price,
        at = os.time(),
    }
    TriggerClientEvent('mechanic:client:repairResult', src, true, 'ok', {
        repairMs = part.repairMs,
        isExhaust = part.isExhaustJob == true,
        partId = partId,
    })
end)

RegisterNetEvent('mechanic:server:repairCommit', function()
    local src = source
    PendingRepair[src] = nil
    TriggerClientEvent('mechanic:client:toast', src, L('repair_done'))
end)

RegisterNetEvent('mechanic:server:repairAbort', function()
    local src = source
    local p = PendingRepair[src]
    if not p then return end
    PendingRepair[src] = nil
    addPlayerMoney(src, p.price)
    if p.shopId and p.shopId ~= 'field' and ShopStock[p.shopId] then
        ShopStock[p.shopId][p.partId] = (ShopStock[p.shopId][p.partId] or 0) + 1
        saveStock()
    end
    TriggerClientEvent('mechanic:client:toast', src, L('cancelled'))
end)

RegisterNetEvent('mechanic:server:adjustStock', function(shopId, partId, delta)
    local src = source
    if not IsPlayerAceAllowed(src, 'mechanic.admin') then
        return
    end
    if not ShopStock[shopId] or not Config.Parts[partId] then return end
    ShopStock[shopId][partId] = math.max(0, (ShopStock[shopId][partId] or 0) + (delta or 0))
    saveStock()
end)

RegisterNetEvent('mechanic:server:syncVehicleHealth', function(netId, healthPayloadJson)
    if not Config.SyncHealthToServer then return end
    local ent = NetworkGetEntityFromNetworkId(netId)
    if ent == 0 or not DoesEntityExist(ent) then return end
    local payload = json.decode(healthPayloadJson)
    if type(payload) ~= 'table' then return end
    pcall(function()
        Entity(ent).state:set('mechanic_health', payload, true)
    end)
end)

AddEventHandler('playerDropped', function()
    local src = source
    local p = PendingRepair[src]
    if p then
        PendingRepair[src] = nil
        addPlayerMoney(src, p.price)
        if p.shopId and p.shopId ~= 'field' and ShopStock[p.shopId] and p.partId then
            ShopStock[p.shopId][p.partId] = (ShopStock[p.shopId][p.partId] or 0) + 1
            saveStock()
        end
    end
end)

CreateThread(function()
    ensureStock()
end)
