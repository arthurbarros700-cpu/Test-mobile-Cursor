local ResourceName = GetCurrentResourceName()

local State = {
    framework = 'standalone',
    storageMode = 'json',
    workshops = {},
    vehicles = {},
    metrics = {
        completedServices = 0,
        invoices = 0,
        revenue = 0,
    },
}

local function debugLog(...)
    if not Config.Debug then
        return
    end

    print(('[%s]'):format(ResourceName), ...)
end

local function notify(source, kind, message)
    local template = Config.Notifications[kind] or Config.Notifications.info
    TriggerClientEvent('chat:addMessage', source, {
        color = { 255, 255, 255 },
        multiline = false,
        args = { '', template:format(message) }
    })
end

local function safeDecode(raw, fallback)
    if not raw or raw == '' then
        return fallback
    end

    local ok, decoded = pcall(json.decode, raw)
    if ok and decoded then
        return decoded
    end

    return fallback
end

local function safeReadJson(path, fallback)
    return safeDecode(LoadResourceFile(ResourceName, path), fallback)
end

local function safeWriteJson(path, payload)
    SaveResourceFile(ResourceName, path, json.encode(payload or {}, { indent = true }), -1)
end

local function getVehiclesPath()
    return 'data/vehicles.json'
end

local function getStockPath()
    return 'data/stock.json'
end

local function detectFramework()
    if Config.Framework ~= 'auto' then
        State.framework = Config.Framework
        return
    end

    if GetResourceState('qb-core') == 'started' then
        State.framework = 'qbcore'
    elseif GetResourceState('es_extended') == 'started' then
        State.framework = 'esx'
    else
        State.framework = 'standalone'
    end
end

local function detectStorageMode()
    if Config.StorageMode ~= 'auto' then
        State.storageMode = Config.StorageMode
        return
    end

    if GetResourceState('oxmysql') == 'started' then
        State.storageMode = 'oxmysql'
    else
        State.storageMode = 'json'
    end
end

local function getFrameworkPlayer(source)
    if State.framework == 'qbcore' then
        local core = exports['qb-core']:GetCoreObject()
        return core.Functions.GetPlayer(source)
    end

    if State.framework == 'esx' then
        return exports['es_extended']:getSharedObject().GetPlayerFromId(source)
    end

    return nil
end

local function getPlayerIdentifier(source)
    for _, identifier in ipairs(GetPlayerIdentifiers(source)) do
        if identifier:match('license:') then
            return identifier
        end
    end

    return ('player:%s'):format(source)
end

local function getPlayerNameSafe(source)
    return GetPlayerName(source) or ('ID %s'):format(source)
end

local function resolvePlayerJob(source)
    local player = getFrameworkPlayer(source)
    if not player then
        return 'civil'
    end

    if State.framework == 'qbcore' then
        return player.PlayerData.job and player.PlayerData.job.name or 'civil'
    end

    if State.framework == 'esx' then
        return player.job and player.job.name or 'civil'
    end

    return 'civil'
end

local function hasMechanicAccess(source)
    if Config.AllowSelfServiceWithoutJob then
        return true
    end

    return Config.MechanicJobs[resolvePlayerJob(source)] == true
end

local function chargePlayer(source, amount)
    amount = math.floor(tonumber(amount) or 0)
    if amount <= 0 then
        return true, 0
    end

    local player = getFrameworkPlayer(source)
    if not player then
        return true, amount
    end

    if State.framework == 'qbcore' then
        if player.Functions.RemoveMoney('bank', amount, 'vx-mechanic-pro') then
            return true, amount
        end
        if player.Functions.RemoveMoney('cash', amount, 'vx-mechanic-pro') then
            return true, amount
        end
        return false, 0
    end

    if State.framework == 'esx' then
        local bank = player.getAccount('bank')
        if bank and bank.money >= amount then
            player.removeAccountMoney('bank', amount)
            return true, amount
        end
        if player.getMoney() >= amount then
            player.removeMoney(amount)
            return true, amount
        end
        return false, 0
    end

    return true, amount
end

local function ensureWorkshopState(workshopId)
    local workshop = State.workshops[workshopId]
    if workshop then
        return workshop
    end

    local configured = VehicleUtils.findWorkshopById(workshopId)
    if not configured then
        return nil
    end

    workshop = {
        id = configured.id,
        label = configured.label,
        laborRate = configured.laborRate,
        stockMarkup = configured.stockMarkup,
        reputation = configured.reputation,
        specialty = configured.specialty,
        stock = VehicleUtils.defaultWorkshopStock(),
        history = {},
        metrics = {
            completedOrders = 0,
            revenue = 0,
            averageTicket = 0,
            stockOrders = 0,
        },
        balance = Config.WorkshopEconomy.defaultBalance,
        pendingOrders = {},
    }

    State.workshops[workshopId] = workshop
    return workshop
end

local function ensureAllWorkshops()
    for _, workshop in ipairs(Config.Workshops) do
        ensureWorkshopState(workshop.id)
    end
end

local function appendWorkshopHistory(workshop, entry)
    workshop.history = workshop.history or {}
    table.insert(workshop.history, 1, entry)

    while #workshop.history > Config.MaxHistoryEntries do
        table.remove(workshop.history, #workshop.history)
    end
end

local function ensureVehicleRecord(props)
    local vehicleKey = VehicleUtils.vehicleKeyFromProps(props)
    local record = State.vehicles[vehicleKey]
    if record then
        record.plate = props.plate or record.plate
        record.modelHash = props.modelHash or record.modelHash
        record.displayName = props.displayName or record.displayName
        record.class = props.class or record.class
        record.classLabel = props.classLabel or record.classLabel
        return record, vehicleKey
    end

    record = VehicleUtils.newVehicleRecord(props)
    State.vehicles[vehicleKey] = record
    return record, vehicleKey
end

local function vehiclesSnapshot()
    return State.vehicles
end

local function workshopsSnapshot()
    local payload = {}
    for workshopId, workshop in pairs(State.workshops) do
        payload[workshopId] = {
            id = workshop.id,
            label = workshop.label,
            laborRate = workshop.laborRate,
            stockMarkup = workshop.stockMarkup,
            reputation = workshop.reputation,
            specialty = workshop.specialty,
            stock = workshop.stock,
            history = workshop.history,
            metrics = workshop.metrics,
            balance = workshop.balance,
            pendingOrders = workshop.pendingOrders,
        }
    end
    return payload
end

local function ensureDatabase()
    if State.storageMode ~= 'oxmysql' then
        return
    end

    exports.oxmysql:executeSync([[
        CREATE TABLE IF NOT EXISTS vx_mechanic_vehicles (
            vehicle_key VARCHAR(80) PRIMARY KEY,
            plate VARCHAR(20) NULL,
            model_name VARCHAR(80) NULL,
            data LONGTEXT NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        )
    ]])

    exports.oxmysql:executeSync([[
        CREATE TABLE IF NOT EXISTS vx_mechanic_workshops (
            workshop_id VARCHAR(50) PRIMARY KEY,
            data LONGTEXT NOT NULL,
            updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
        )
    ]])
end

local function loadJsonStorage()
    ensureAllWorkshops()
    State.vehicles = safeReadJson(getVehiclesPath(), {}) or {}

    local workshopData = safeReadJson(getStockPath(), {}) or {}
    for workshopId, snapshot in pairs(workshopData) do
        local workshop = ensureWorkshopState(workshopId)
        if workshop then
            workshop.stock = snapshot.stock or workshop.stock
            workshop.history = snapshot.history or workshop.history
            workshop.metrics = snapshot.metrics or workshop.metrics
            workshop.balance = snapshot.balance or workshop.balance
            workshop.pendingOrders = snapshot.pendingOrders or workshop.pendingOrders
        end
    end
end

local function saveJsonStorage()
    safeWriteJson(getVehiclesPath(), vehiclesSnapshot())
    safeWriteJson(getStockPath(), workshopsSnapshot())
end

local function loadDatabaseStorage()
    ensureAllWorkshops()
    ensureDatabase()

    State.vehicles = {}
    local vehicleRows = exports.oxmysql:executeSync('SELECT vehicle_key, data FROM vx_mechanic_vehicles')
    for _, row in ipairs(vehicleRows or {}) do
        local decoded = safeDecode(row.data, nil)
        if decoded then
            State.vehicles[row.vehicle_key] = decoded
        end
    end

    local workshopRows = exports.oxmysql:executeSync('SELECT workshop_id, data FROM vx_mechanic_workshops')
    for _, row in ipairs(workshopRows or {}) do
        local decoded = safeDecode(row.data, nil)
        local workshop = ensureWorkshopState(row.workshop_id)
        if decoded and workshop then
            workshop.stock = decoded.stock or workshop.stock
            workshop.history = decoded.history or workshop.history
            workshop.metrics = decoded.metrics or workshop.metrics
            workshop.balance = decoded.balance or workshop.balance
            workshop.pendingOrders = decoded.pendingOrders or workshop.pendingOrders
        end
    end
end

local function saveDatabaseStorage()
    for workshopId, workshop in pairs(State.workshops) do
        exports.oxmysql:insertSync([[
            INSERT INTO vx_mechanic_workshops (workshop_id, data)
            VALUES (?, ?)
            ON DUPLICATE KEY UPDATE data = VALUES(data)
        ]], {
            workshopId,
            json.encode({
                stock = workshop.stock,
                history = workshop.history,
                metrics = workshop.metrics,
                balance = workshop.balance,
                pendingOrders = workshop.pendingOrders,
            })
        })
    end

    for vehicleKey, record in pairs(State.vehicles) do
        exports.oxmysql:insertSync([[
            INSERT INTO vx_mechanic_vehicles (vehicle_key, plate, model_name, data)
            VALUES (?, ?, ?, ?)
            ON DUPLICATE KEY UPDATE
                plate = VALUES(plate),
                model_name = VALUES(model_name),
                data = VALUES(data)
        ]], {
            vehicleKey,
            record.plate,
            record.displayName,
            json.encode(record)
        })
    end
end

local function loadStorage()
    if State.storageMode == 'oxmysql' then
        loadDatabaseStorage()
    else
        loadJsonStorage()
    end
end

local function saveStorage()
    if State.storageMode == 'oxmysql' then
        saveDatabaseStorage()
    else
        saveJsonStorage()
    end
end

local function processPendingStock(workshop)
    workshop.pendingOrders = workshop.pendingOrders or {}

    for orderId, order in pairs(workshop.pendingOrders) do
        if order.arrivalAt and GetGameTimer() >= order.arrivalAt then
            local stockEntry = workshop.stock[order.item]
            if stockEntry then
                stockEntry.quantity = math.floor((stockEntry.quantity or 0) + (order.amount or 0))
            end

            appendWorkshopHistory(workshop, {
                action = 'stock_arrived',
                actionLabel = 'Estoque recebido',
                item = order.item,
                itemLabel = VehicleUtils.itemLabel(order.item),
                actorName = order.actorName,
                amount = order.amount,
                at = os.time(),
                notes = 'Pedido entregue pelo fornecedor',
            })

            workshop.pendingOrders[orderId] = nil
        end
    end
end

local function buildWorkshopUi(workshop)
    processPendingStock(workshop)
    return {
        id = workshop.id,
        label = workshop.label,
        laborRate = workshop.laborRate,
        stockMarkup = workshop.stockMarkup,
        reputation = workshop.reputation,
        specialty = workshop.specialty,
        stock = VehicleUtils.buildStockPayload(workshop.stock),
        metrics = workshop.metrics,
        balance = workshop.balance,
        history = VehicleUtils.decorateHistory(workshop.history or {}),
    }
end

local function buildPanelPayload(record, workshop)
    return {
        workshop = workshop and buildWorkshopUi(workshop) or nil,
        vehicle = VehicleUtils.vehicleUiPayload(record),
        serviceQuotes = VehicleUtils.buildServiceQuotes(record, workshop),
        tuningPresets = VehicleUtils.buildTuningList(),
        history = VehicleUtils.decorateHistory(record.history or {}),
        stock = workshop and VehicleUtils.buildStockPayload(workshop.stock) or {},
    }
end

local function pushPanelUpdate(source, record)
    local workshopId = record.workshopId or (Config.Workshops[1] and Config.Workshops[1].id)
    local workshop = workshopId and ensureWorkshopState(workshopId) or nil
    TriggerClientEvent('vx_mechanic:client:updatePanel', source, buildPanelPayload(record, workshop))
end

local function updateWorkshopMetrics(workshop, amount)
    workshop.metrics.completedOrders = math.floor((workshop.metrics.completedOrders or 0) + 1)
    workshop.metrics.revenue = math.floor((workshop.metrics.revenue or 0) + amount)
    workshop.metrics.averageTicket = math.floor((workshop.metrics.revenue or 0) / math.max(1, workshop.metrics.completedOrders))
end

local function performService(source, record, workshop, componentId, service, mode)
    local quote = VehicleUtils.buildServiceQuote(record, componentId, service, workshop, mode or 'premium')
    if not quote then
        return false, 'Servico ou componente invalido'
    end

    if not VehicleUtils.hasStock(workshop.stock, quote.items) then
        return false, 'Estoque insuficiente para executar este servico'
    end

    local paid, paidAmount = chargePlayer(source, quote.price)
    if not paid then
        return false, 'Pagamento recusado'
    end

    VehicleUtils.consumeStock(workshop.stock, quote.items)
    VehicleUtils.applyServiceResult(record, componentId, service)

    local entry = {
        action = service,
        actionLabel = VehicleUtils.serviceLabel(service),
        componentId = componentId,
        componentLabel = VehicleUtils.componentLabel(componentId),
        actorName = getPlayerNameSafe(source),
        price = paidAmount,
        at = os.time(),
        notes = ('Modo %s'):format(mode or 'premium'),
    }

    VehicleUtils.pushHistory(record.history, entry)
    appendWorkshopHistory(workshop, entry)
    updateWorkshopMetrics(workshop, paidAmount)
    State.metrics.completedServices = State.metrics.completedServices + 1
    State.metrics.invoices = State.metrics.invoices + 1
    State.metrics.revenue = State.metrics.revenue + paidAmount

    return true, quote
end

local function applyUpgrade(source, record, workshop, upgradeId)
    local preset = MechanicCatalog.TuningPresets[upgradeId]
    if not preset then
        return false, 'Preset de tunagem invalido'
    end

    local ok, reason = VehicleUtils.canApplyPreset(record, preset)
    if not ok then
        return false, reason
    end

    local quote = VehicleUtils.buildPresetQuote(workshop, preset)
    if not quote then
        return false, 'Nao foi possivel gerar o pacote'
    end

    if not VehicleUtils.hasStock(workshop.stock, quote.items) then
        return false, 'Estoque insuficiente para esse pacote'
    end

    local paid, paidAmount = chargePlayer(source, quote.price)
    if not paid then
        return false, 'Pagamento recusado'
    end

    VehicleUtils.consumeStock(workshop.stock, quote.items)
    VehicleUtils.applyPreset(record, upgradeId)

    local entry = {
        action = 'upgrade',
        actionLabel = 'Tunagem',
        upgradeId = upgradeId,
        upgradeLabel = preset.label,
        actorName = getPlayerNameSafe(source),
        price = paidAmount,
        at = os.time(),
        notes = preset.description,
    }

    VehicleUtils.pushHistory(record.history, entry)
    appendWorkshopHistory(workshop, entry)
    updateWorkshopMetrics(workshop, paidAmount)
    State.metrics.completedServices = State.metrics.completedServices + 1
    State.metrics.invoices = State.metrics.invoices + 1
    State.metrics.revenue = State.metrics.revenue + paidAmount

    return true, quote
end

local function registerStockOrder(source, workshop, itemId, amount)
    if not workshop.stock[itemId] then
        return false, 'Item nao encontrado no estoque'
    end

    amount = math.max(1, math.floor(tonumber(amount) or 1))
    local orderId = VehicleUtils.makeId('stock')
    workshop.pendingOrders[orderId] = {
        item = itemId,
        amount = amount,
        actorName = getPlayerNameSafe(source),
        arrivalAt = GetGameTimer() + math.random(Config.WorkshopEconomy.orderLeadMinMs, Config.WorkshopEconomy.orderLeadMaxMs),
        createdAt = os.time(),
    }

    workshop.metrics.stockOrders = math.floor((workshop.metrics.stockOrders or 0) + 1)
    appendWorkshopHistory(workshop, {
        action = 'stock_order',
        actionLabel = 'Pedido de estoque',
        item = itemId,
        itemLabel = VehicleUtils.itemLabel(itemId),
        actorName = getPlayerNameSafe(source),
        amount = amount,
        at = os.time(),
        notes = 'Pedido enviado ao fornecedor',
    })

    return true
end

RegisterNetEvent('vx_mechanic:server:requestVehicleProfile', function(payload)
    local source = source
    if type(payload) ~= 'table' or type(payload.vehicleProps) ~= 'table' then
        return
    end

    local props = payload.vehicleProps
    local workshopId = payload.workshopId or (Config.Workshops[1] and Config.Workshops[1].id)
    local workshop = ensureWorkshopState(workshopId)
    if not workshop then
        notify(source, 'error', 'Oficina nao encontrada')
        return
    end

    local record = ensureVehicleRecord(props)
    record.workshopId = workshopId
    record.ownerIdentifier = record.ownerIdentifier or getPlayerIdentifier(source)
    record.summary = VehicleUtils.computeSummary(record)

    local eventName = payload.openUi and 'vx_mechanic:client:openPanel' or 'vx_mechanic:client:updatePanel'
    TriggerClientEvent(eventName, source, buildPanelPayload(record, workshop))
end)

RegisterNetEvent('vx_mechanic:server:syncTelemetry', function(payload)
    local source = source
    if type(payload) ~= 'table' or type(payload.vehicleProps) ~= 'table' then
        return
    end

    local record = ensureVehicleRecord(payload.vehicleProps)
    record.workshopId = payload.workshopId or record.workshopId or (Config.Workshops[1] and Config.Workshops[1].id)
    record.ownerIdentifier = record.ownerIdentifier or getPlayerIdentifier(source)

    VehicleUtils.applyTelemetry(record, payload.telemetry or {})
end)

RegisterNetEvent('vx_mechanic:server:performService', function(payload)
    local source = source
    if type(payload) ~= 'table' or type(payload.vehicleProps) ~= 'table' then
        return
    end

    if not hasMechanicAccess(source) then
        notify(source, 'error', 'Acesso negado para executar servicos')
        return
    end

    local workshop = ensureWorkshopState(payload.workshopId or (Config.Workshops[1] and Config.Workshops[1].id))
    if not workshop then
        notify(source, 'error', 'Oficina nao encontrada')
        return
    end

    local record = ensureVehicleRecord(payload.vehicleProps)
    record.workshopId = workshop.id

    local success, reason = performService(source, record, workshop, payload.componentId, payload.service, payload.mode)
    if not success then
        notify(source, 'error', reason)
        return
    end

    notify(source, 'success', ('Servico concluido: %s'):format(VehicleUtils.componentLabel(payload.componentId)))
    pushPanelUpdate(source, record)
end)

RegisterNetEvent('vx_mechanic:server:applyUpgrade', function(payload)
    local source = source
    if type(payload) ~= 'table' or type(payload.vehicleProps) ~= 'table' then
        return
    end

    if not hasMechanicAccess(source) then
        notify(source, 'error', 'Acesso negado para aplicar tunagem')
        return
    end

    local workshop = ensureWorkshopState(payload.workshopId or (Config.Workshops[1] and Config.Workshops[1].id))
    if not workshop then
        notify(source, 'error', 'Oficina nao encontrada')
        return
    end

    local record = ensureVehicleRecord(payload.vehicleProps)
    record.workshopId = workshop.id

    local success, reason = applyUpgrade(source, record, workshop, payload.upgradeId)
    if not success then
        notify(source, 'error', reason)
        return
    end

    notify(source, 'success', ('Tunagem aplicada: %s'):format(MechanicCatalog.TuningPresets[payload.upgradeId].label))
    pushPanelUpdate(source, record)
end)

RegisterNetEvent('vx_mechanic:server:orderStock', function(payload)
    local source = source
    if type(payload) ~= 'table' then
        return
    end

    if not hasMechanicAccess(source) then
        notify(source, 'error', 'Apenas mecanicos podem repor estoque')
        return
    end

    local workshop = ensureWorkshopState(payload.workshopId or (Config.Workshops[1] and Config.Workshops[1].id))
    if not workshop then
        notify(source, 'error', 'Oficina nao encontrada')
        return
    end

    local success, reason = registerStockOrder(source, workshop, payload.item, payload.amount)
    if not success then
        notify(source, 'error', reason)
        return
    end

    notify(source, 'success', 'Pedido de estoque registrado')
    TriggerClientEvent('vx_mechanic:client:updateWorkshopStock', source, buildWorkshopUi(workshop))
end)

RegisterNetEvent('vx_mechanic:server:requestDiagnostic', function(payload)
    local source = source
    if type(payload) ~= 'table' or type(payload.vehicleProps) ~= 'table' then
        return
    end

    local workshop = ensureWorkshopState(payload.workshopId or (Config.Workshops[1] and Config.Workshops[1].id))
    if not workshop then
        notify(source, 'error', 'Oficina nao encontrada')
        return
    end

    local record = ensureVehicleRecord(payload.vehicleProps)
    record.workshopId = workshop.id
    record.summary = VehicleUtils.computeSummary(record)
    pushPanelUpdate(source, record)
    notify(source, 'info', 'Diagnostico profundo atualizado')
end)

RegisterNetEvent('vx_mechanic:server:closePanel', function()
    TriggerClientEvent('vx_mechanic:client:closePanel', source)
end)

RegisterCommand(Config.AdminCommand, function(source)
    if source == 0 then
        print(json.encode({
            metrics = State.metrics,
            workshops = workshopsSnapshot(),
            vehicles = vehiclesSnapshot(),
        }, { indent = true }))
        return
    end

    notify(source, 'info', 'Use /' .. Config.OpenCommand .. ' perto de um veiculo para abrir o painel')
end, true)

CreateThread(function()
    detectFramework()
    detectStorageMode()
    ensureAllWorkshops()
    loadStorage()
    debugLog('Framework:', State.framework, 'Storage:', State.storageMode)
end)

CreateThread(function()
    while true do
        Wait(1000)
        for _, workshop in pairs(State.workshops) do
            processPendingStock(workshop)
        end
    end
end)

CreateThread(function()
    while true do
        Wait(Config.SaveIntervalMs)
        saveStorage()
    end
end)

AddEventHandler('onResourceStop', function(stoppedResource)
    if stoppedResource ~= ResourceName then
        return
    end

    saveStorage()
end)
