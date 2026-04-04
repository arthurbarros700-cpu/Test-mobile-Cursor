--[[ Registro opcional de item usável (QBCore). ox_inventory usa export no client. ]]

local function itemName()
    local c = Config.NfeItem
    return c and c.item_name or 'spartan_nfe'
end

CreateThread(function()
    Wait(2000)
    local cfg = Config.NfeItem
    if not cfg or not cfg.enabled then return end
    if GetResourceState('qb-core') ~= 'started' then return end
    local ok, QBCore = pcall(function() return exports['qb-core']:GetCoreObject() end)
    if not ok or not QBCore then return end
    QBCore.Functions.CreateUseableItem(itemName(), function(src, item)
        local meta = (item and item.info) or (item and item.metadata) or {}
        local token = meta.nfe_token or meta.nfeToken
        if token then
            TriggerClientEvent('spartan_mechanic:nfeUseQb', src, token)
        end
    end)
end)
