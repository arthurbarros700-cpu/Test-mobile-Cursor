--[[ Uso do item de NF — ox_inventory / QBCore ]]

local function openFromToken(token)
    if not token or token == '' then return end
    TriggerServerEvent('spartan_mechanic:nfeValidateToken', token)
end

--- ox_inventory: no items.lua do seu servidor:
---   client = { export = 'spartan_mechanic.useNfeItem' }
exports('useNfeItem', function(data, slot)
    local meta = (data and data.metadata) or (slot and slot.metadata) or {}
    local token = meta.nfe_token or meta.nfeToken
    if token then openFromToken(token) end
end)

RegisterNetEvent('spartan_mechanic:nfeUseOx', function(token)
    openFromToken(token)
end)

--- QBCore: RegisterUsableItem no servidor deve fazer TriggerClientEvent('spartan_mechanic:nfeUseQb', src, token)
RegisterNetEvent('spartan_mechanic:nfeUseQb', function(token)
    openFromToken(token)
end)
