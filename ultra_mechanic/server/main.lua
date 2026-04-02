local RESOURCE = GetCurrentResourceName()

local framework = {
    name = "standalone",
    object = nil
}

local hasDatabase = false
local hasMySQLAwait = false
local vehicleCache = {}
local stockCache = {}
local quoteCache = {}
local repairCache = {}
local quoteCounter = 0
local repairCounter = 0
local rpcCooldown = {}

local function now()
    return os.time()
end

local function clamp(value, minValue, maxValue)
    if value < minValue then
        return minValue
    end
    if value > maxValue then
        return maxValue
    end
    return value
end

local function round(value)
    return math.floor(value + 0.5)
end

local function normalizePlate(rawPlate)
    if type(rawPlate) ~= "string" then
        return ""
    end
    return rawPlate:gsub("^%s*(.-)%s*$", "%1"):upper()
end

local function parseDbTimestamp(value)
    if type(value) == "number" then
        return math.floor(value)
    end

    if type(value) ~= "string" or value == "" then
        return nil
    end

    local year, month, day, hour, min, sec = value:match("^(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)$")
    if not year then
        return nil
    end

    return os.time({
        year = tonumber(year),
        month = tonumber(month),
        day = tonumber(day),
        hour = tonumber(hour),
        min = tonumber(min),
        sec = tonumber(sec)
    })
end

local function decodeJson(value, fallback)
    if type(value) ~= "string" or value == "" then
        return fallback
    end

    local ok, parsed = pcall(json.decode, value)
    if not ok then
        return fallback
    end
    return parsed
end

local function encodeJson(value)
    local ok, encoded = pcall(json.encode, value)
    if not ok then
        return "{}"
    end
    return encoded
end

local function copyTable(data)
    if type(data) ~= "table" then
        return data
    end
    local result = {}
    for k, v in pairs(data) do
        result[k] = copyTable(v)
    end
    return result
end

local function defaultComponents()
    local components = {}
    for componentId in pairs(Config.Components) do
        components[componentId] = 100.0
    end
    return components
end

local function mergeComponents(rawState)
    local merged = defaultComponents()
    if type(rawState) ~= "table" then
        return merged
    end
    for componentId in pairs(Config.Components) do
        merged[componentId] = clamp(tonumber(rawState[componentId]) or 100.0, 0.0, 100.0)
    end
    return merged
end

local function identifyFramework()
    local desired = Config.Framework or "auto"
    if desired == "qb" or (desired == "auto" and GetResourceState("qb-core") == "started") then
        local ok, obj = pcall(function()
            return exports["qb-core"]:GetCoreObject()
        end)
        if ok and obj then
            framework.name = "qb"
            framework.object = obj
            return
        end
    end

    if desired == "esx" or (desired == "auto" and GetResourceState("es_extended") == "started") then
        local ok, obj = pcall(function()
            return exports["es_extended"]:getSharedObject()
        end)
        if ok and obj then
            framework.name = "esx"
            framework.object = obj
            return
        end
    end

    framework.name = "standalone"
    framework.object = nil
end

local function getIdentifier(src)
    if framework.name == "qb" then
        local player = framework.object.Functions.GetPlayer(src)
        if player and player.PlayerData then
            return player.PlayerData.citizenid or player.PlayerData.license or ("player:%d"):format(src)
        end
    elseif framework.name == "esx" then
        local xPlayer = framework.object.GetPlayerFromId(src)
        if xPlayer then
            return xPlayer.getIdentifier()
        end
    end

    local ids = GetPlayerIdentifiers(src)
    return ids[1] or ("player:%d"):format(src)
end

local function hasMechanicPermission(src)
    if not Config.RequireMechanicJob then
        return true
    end

    if framework.name == "qb" then
        local player = framework.object.Functions.GetPlayer(src)
        local job = player and player.PlayerData and player.PlayerData.job and player.PlayerData.job.name
        return job and Config.AllowedJobs[job] == true or false
    end

    if framework.name == "esx" then
        local xPlayer = framework.object.GetPlayerFromId(src)
        local jobData = xPlayer and xPlayer.getJob and xPlayer.getJob()
        local job = jobData and jobData.name
        return job and Config.AllowedJobs[job] == true or false
    end

    return IsPlayerAceAllowed(src, "ultra_mechanic.use")
end

local function notify(src, message, kind)
    TriggerClientEvent("ultra_mechanic:client:notify", src, message, kind or "info")
end

local function removeMoney(src, amount)
    amount = math.max(0, round(amount))
    if amount <= 0 then
        return true
    end

    if framework.name == "qb" then
        local player = framework.object.Functions.GetPlayer(src)
        if not player then
            return false
        end
        if player.Functions.RemoveMoney("bank", amount, "ultra_mechanic") then
            return true
        end
        return player.Functions.RemoveMoney("cash", amount, "ultra_mechanic")
    end

    if framework.name == "esx" then
        local xPlayer = framework.object.GetPlayerFromId(src)
        if not xPlayer then
            return false
        end

        local bank = xPlayer.getAccount("bank")
        if bank and (bank.money or 0) >= amount then
            xPlayer.removeAccountMoney("bank", amount)
            return true
        end

        if (xPlayer.getMoney() or 0) >= amount then
            xPlayer.removeMoney(amount)
            return true
        end

        return false
    end

    return true
end

local function addMoney(src, amount)
    amount = math.max(0, round(amount))
    if amount <= 0 then
        return
    end

    if framework.name == "qb" then
        local player = framework.object.Functions.GetPlayer(src)
        if player then
            player.Functions.AddMoney("bank", amount, "ultra_mechanic_refund")
        end
        return
    end

    if framework.name == "esx" then
        local xPlayer = framework.object.GetPlayerFromId(src)
        if xPlayer then
            xPlayer.addAccountMoney("bank", amount)
        end
    end
end

local function ensureStockCache()
    for workshopId in pairs(Config.Workshops) do
        stockCache[workshopId] = stockCache[workshopId] or {}
        for item, amount in pairs(Config.DefaultStock) do
            if stockCache[workshopId][item] == nil then
                stockCache[workshopId][item] = amount
            end
        end
    end
end

local function oxQueryAwait(kind, query, params)
    local p = promise.new()
    params = params or {}

    if kind == "single" then
        exports.oxmysql:single(query, params, function(result)
            p:resolve(result)
        end)
    elseif kind == "insert" then
        exports.oxmysql:insert(query, params, function(result)
            p:resolve(result)
        end)
    else
        exports.oxmysql:query(query, params, function(result)
            p:resolve(result)
        end)
    end

    return Citizen.Await(p)
end

local function dbExec(query, params)
    if not hasDatabase then
        return true
    end
    if hasMySQLAwait then
        MySQL.query.await(query, params or {})
    else
        oxQueryAwait("query", query, params or {})
    end
    return true
end

local function dbQuery(query, params)
    if not hasDatabase then
        return {}
    end
    if hasMySQLAwait then
        return MySQL.query.await(query, params or {})
    end
    return oxQueryAwait("query", query, params or {})
end

local function dbSingle(query, params)
    if not hasDatabase then
        return nil
    end
    if hasMySQLAwait then
        return MySQL.single.await(query, params or {})
    end
    return oxQueryAwait("single", query, params or {})
end

local function dbInsert(query, params)
    if not hasDatabase then
        return nil
    end
    if hasMySQLAwait then
        return MySQL.insert.await(query, params or {})
    end
    return oxQueryAwait("insert", query, params or {})
end

local function saveStock(workshopId, item, amount)
    if not hasDatabase then
        return
    end
    dbExec([[
        INSERT INTO um_workshop_stock (workshop_id, item, amount, updated_at)
        VALUES (?, ?, ?, NOW())
        ON DUPLICATE KEY UPDATE amount = VALUES(amount), updated_at = NOW()
    ]], { workshopId, item, amount })
end

local function getStock(workshopId, item)
    workshopId = tonumber(workshopId)
    if not workshopId or not stockCache[workshopId] then
        return 0
    end
    return tonumber(stockCache[workshopId][item]) or 0
end

local function adjustStock(workshopId, item, delta)
    workshopId = tonumber(workshopId)
    if not workshopId or not stockCache[workshopId] then
        return false, 0
    end

    local current = getStock(workshopId, item)
    local nextAmount = current + delta
    if nextAmount < 0 then
        return false, current
    end

    stockCache[workshopId][item] = nextAmount
    saveStock(workshopId, item, nextAmount)
    return true, nextAmount
end

local function saveVehicleState(plate, model, components, mileage)
    plate = normalizePlate(plate)
    if plate == "" then
        return
    end

    local merged = mergeComponents(components)
    vehicleCache[plate] = {
        plate = plate,
        model = model or 0,
        components = merged,
        mileage = tonumber(mileage) or 0.0,
        updatedAt = now()
    }

    if hasDatabase then
        dbExec([[
            INSERT INTO um_vehicles (plate, model, mileage, components, updated_at)
            VALUES (?, ?, ?, ?, NOW())
            ON DUPLICATE KEY UPDATE
                model = VALUES(model),
                mileage = VALUES(mileage),
                components = VALUES(components),
                updated_at = NOW()
        ]], { plate, model or 0, mileage or 0.0, encodeJson(merged) })
    end
end

local function getVehicleState(plate, model)
    plate = normalizePlate(plate)
    if plate == "" then
        return nil
    end

    local cached = vehicleCache[plate]
    if cached then
        return copyTable(cached)
    end

    if hasDatabase then
        local row = dbSingle("SELECT plate, model, mileage, components FROM um_vehicles WHERE plate = ? LIMIT 1", { plate })
        if row then
            local loaded = {
                plate = plate,
                model = tonumber(row.model) or model or 0,
                mileage = tonumber(row.mileage) or 0.0,
                components = mergeComponents(decodeJson(row.components, {})),
                updatedAt = now()
            }
            vehicleCache[plate] = loaded
            return copyTable(loaded)
        end
    end

    local created = {
        plate = plate,
        model = model or 0,
        mileage = 0.0,
        components = defaultComponents(),
        updatedAt = now()
    }
    vehicleCache[plate] = created
    saveVehicleState(plate, model, created.components, created.mileage)
    return copyTable(created)
end

local function damageSeverity(health)
    if health >= 85.0 then
        return "ideal"
    end
    if health >= 65.0 then
        return "atencao"
    end
    if health >= 40.0 then
        return "grave"
    end
    return "critico"
end

local function normalizeSelection(selection)
    local map = {}
    if type(selection) ~= "table" then
        return map
    end

    local hasArrayEntries = false
    for k, v in pairs(selection) do
        if type(k) == "number" and type(v) == "string" then
            hasArrayEntries = true
            map[v] = true
        end
    end

    if hasArrayEntries then
        return map
    end

    for componentId, value in pairs(selection) do
        if value == true then
            map[componentId] = true
        end
    end
    return map
end

local function buildQuote(src, workshopId, plate, model, tierId, selection)
    local tier = Config.RepairTiers[tierId]
    if not tier then
        return false, { message = L("invalid_request") }
    end

    local state = getVehicleState(plate, model)
    if not state then
        return false, { message = L("no_vehicle") }
    end

    local selected = normalizeSelection(selection)
    local lines = {}
    local stockNeeds = {}
    local finalComponents = copyTable(state.components)
    local totalPrice = 0
    local totalDuration = 0

    for componentId, cfg in pairs(Config.Components) do
        local isSelected = selected[componentId] == true
        if isSelected then
            local currentHealth = clamp(tonumber(state.components[componentId]) or 100.0, 0.0, 100.0)
            local targetHealth = clamp(currentHealth + tier.restore, 0.0, 100.0)
            local gain = targetHealth - currentHealth
            if gain > 0.01 then
                local part = Config.Parts[cfg.item] or { label = cfg.item, price = 1000 }
                local damageFactor = (100.0 - currentHealth) / 100.0
                local linePrice = round(((part.price + cfg.labor) * tier.priceMult * (0.55 + damageFactor)) * Config.EconomyMultiplier)
                local lineDuration = math.max(6, round(cfg.repairTime * tier.timeMult))
                local consume = math.max(1, round(cfg.stockConsumption * tier.stockMult))

                totalPrice = totalPrice + linePrice
                totalDuration = totalDuration + lineDuration
                finalComponents[componentId] = targetHealth
                stockNeeds[cfg.item] = (stockNeeds[cfg.item] or 0) + consume

                lines[#lines + 1] = {
                    componentId = componentId,
                    label = cfg.label,
                    from = round(currentHealth),
                    to = round(targetHealth),
                    price = linePrice,
                    duration = lineDuration,
                    consumeItem = cfg.item,
                    consumeAmount = consume
                }
            end
        end
    end

    if #lines == 0 then
        return false, { message = L("invalid_request") }
    end

    quoteCounter = quoteCounter + 1
    local quote = {
        id = quoteCounter,
        plate = normalizePlate(plate),
        workshopId = workshopId,
        model = model,
        tier = tierId,
        status = "draft",
        createdAt = now(),
        expiresAt = now() + Config.QuoteTimeoutSeconds,
        createdBy = src,
        mechanicIdentifier = getIdentifier(src),
        totalPrice = totalPrice,
        totalDuration = totalDuration,
        lines = lines,
        stockNeeds = stockNeeds,
        componentsBefore = copyTable(state.components),
        componentsAfter = finalComponents
    }

    if hasDatabase then
        local insertId = dbInsert([[
            INSERT INTO um_quotes (
                plate, workshop_id, model, tier, status, created_by, mechanic_identifier,
                total_price, total_duration, lines_json, stock_json, before_json, after_json,
                created_at, expires_at
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), DATE_ADD(NOW(), INTERVAL ? SECOND))
        ]], {
            quote.plate,
            quote.workshopId,
            quote.model,
            quote.tier,
            quote.status,
            tostring(src),
            quote.mechanicIdentifier,
            quote.totalPrice,
            quote.totalDuration,
            encodeJson(lines),
            encodeJson(stockNeeds),
            encodeJson(quote.componentsBefore),
            encodeJson(quote.componentsAfter),
            Config.QuoteTimeoutSeconds
        })
        if insertId then
            quote.id = insertId
            quoteCounter = math.max(quoteCounter, insertId)
        end
    end

    quoteCache[quote.id] = quote
    return true, quote
end

local function getQuoteById(quoteId)
    quoteId = tonumber(quoteId)
    if not quoteId then
        return nil
    end

    if quoteCache[quoteId] then
        return quoteCache[quoteId]
    end

    if hasDatabase then
        local row = dbSingle("SELECT * FROM um_quotes WHERE id = ? LIMIT 1", { quoteId })
        if row then
            local expiresAt = parseDbTimestamp(row.expires_at) or (now() + Config.QuoteTimeoutSeconds)
            local loaded = {
                id = tonumber(row.id),
                plate = normalizePlate(row.plate),
                workshopId = tonumber(row.workshop_id),
                model = tonumber(row.model) or 0,
                tier = row.tier,
                status = row.status,
                createdAt = parseDbTimestamp(row.created_at) or now(),
                expiresAt = expiresAt,
                createdBy = tonumber(row.created_by) or 0,
                mechanicIdentifier = row.mechanic_identifier,
                totalPrice = tonumber(row.total_price) or 0,
                totalDuration = tonumber(row.total_duration) or 0,
                lines = decodeJson(row.lines_json, {}),
                stockNeeds = decodeJson(row.stock_json, {}),
                componentsBefore = mergeComponents(decodeJson(row.before_json, {})),
                componentsAfter = mergeComponents(decodeJson(row.after_json, {}))
            }
            quoteCache[quoteId] = loaded
            return loaded
        end
    end

    return nil
end

local function saveQuoteStatus(quoteId, status)
    local quote = quoteCache[quoteId]
    if quote then
        quote.status = status
    end

    if hasDatabase then
        dbExec("UPDATE um_quotes SET status = ?, updated_at = NOW() WHERE id = ?", { status, quoteId })
    end
end

local function saveRepair(repair)
    if hasDatabase then
        if not repair.persisted then
            local insertId = dbInsert([[
                INSERT INTO um_repairs (
                    quote_id, plate, workshop_id, model, status, started_by, mechanic_identifier,
                    total_price, duration_ms, stock_json, before_json, after_json, started_at
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())
            ]], {
                repair.quoteId,
                repair.plate,
                repair.workshopId,
                repair.model,
                repair.status,
                tostring(repair.source),
                repair.mechanicIdentifier,
                repair.totalPrice,
                repair.durationMs,
                encodeJson(repair.stockNeeds),
                encodeJson(repair.componentsBefore),
                encodeJson(repair.componentsAfter)
            })
            if insertId then
                repair.id = insertId
                repairCounter = math.max(repairCounter, insertId)
                repair.persisted = true
            end
        else
            dbExec([[
                UPDATE um_repairs
                SET status = ?, finished_at = CASE WHEN ? THEN NOW() ELSE finished_at END, updated_at = NOW()
                WHERE id = ?
            ]], { repair.status, repair.status == "completed" or repair.status == "cancelled", repair.id })
        end
    end
    if repair.id then
        repairCache[repair.id] = repair
    end
end

local function buildPanelData(workshopId, plate, model)
    local workshop = Config.Workshops[workshopId]
    if not workshop then
        return false, { message = L("not_in_workshop") }
    end

    local vehicleState = getVehicleState(plate, model)
    if not vehicleState then
        return false, { message = L("no_vehicle") }
    end

    local componentRows = {}
    for componentId, cfg in pairs(Config.Components) do
        local health = clamp(tonumber(vehicleState.components[componentId]) or 100.0, 0.0, 100.0)
        local part = Config.Parts[cfg.item] or { label = cfg.item, price = 1000 }
        componentRows[#componentRows + 1] = {
            id = componentId,
            label = cfg.label,
            health = round(health),
            severity = damageSeverity(health),
            item = cfg.item,
            itemLabel = part.label,
            stock = getStock(workshopId, cfg.item),
            recommend = health <= 80
        }
    end
    table.sort(componentRows, function(a, b) return a.label < b.label end)

    local tierRows = {}
    for tierId, tier in pairs(Config.RepairTiers) do
        tierRows[#tierRows + 1] = {
            id = tierId,
            label = tier.label,
            restore = tier.restore,
            timeMult = tier.timeMult,
            priceMult = tier.priceMult
        }
    end
    table.sort(tierRows, function(a, b) return a.label < b.label end)

    local stockRows = {}
    for item, part in pairs(Config.Parts) do
        stockRows[#stockRows + 1] = {
            item = item,
            label = part.label,
            amount = getStock(workshopId, item),
            price = round(part.price * Config.StockSupplierMultiplier * Config.EconomyMultiplier)
        }
    end
    table.sort(stockRows, function(a, b) return a.label < b.label end)

    local quotes = {}
    for _, quote in pairs(quoteCache) do
        if quote.plate == normalizePlate(plate) and quote.workshopId == workshopId and quote.status == "draft" then
            if now() > (quote.expiresAt or 0) then
                saveQuoteStatus(quote.id, "expired")
            else
                quotes[#quotes + 1] = {
                    id = quote.id,
                    tier = quote.tier,
                    totalPrice = quote.totalPrice,
                    totalDuration = quote.totalDuration,
                    createdAt = quote.createdAt,
                    expiresAt = quote.expiresAt
                }
            end
        end
    end
    table.sort(quotes, function(a, b) return a.id > b.id end)

    return true, {
        title = L("panel_title"),
        subtitle = L("panel_subtitle"),
        workshop = {
            id = workshopId,
            name = workshop.name
        },
        vehicle = {
            plate = normalizePlate(plate),
            model = model or vehicleState.model,
            mileage = round((vehicleState.mileage or 0.0) * 100.0) / 100.0
        },
        components = componentRows,
        tiers = tierRows,
        stock = stockRows,
        quotes = quotes,
        settings = {
            timeoutSeconds = Config.QuoteTimeoutSeconds
        }
    }
end

local function tableToArrayMap(tbl)
    local out = {}
    if type(tbl) ~= "table" then
        return out
    end
    for k, v in pairs(tbl) do
        out[#out + 1] = { item = k, amount = v }
    end
    table.sort(out, function(a, b) return a.item < b.item end)
    return out
end

local function rpcHasPermission(src)
    if hasMechanicPermission(src) then
        return true, { allowed = true }
    end
    return true, { allowed = false, message = L("no_permission") }
end

local function rpcGetPanelData(src, payload)
    if not hasMechanicPermission(src) then
        return false, { message = L("no_permission") }
    end
    return buildPanelData(tonumber(payload.workshopId), payload.plate, payload.model)
end

local function rpcCreateQuote(src, payload)
    if not hasMechanicPermission(src) then
        return false, { message = L("no_permission") }
    end

    local workshopId = tonumber(payload.workshopId)
    if not workshopId or not Config.Workshops[workshopId] then
        return false, { message = L("not_in_workshop") }
    end

    local plate = normalizePlate(payload.plate)
    if plate == "" then
        return false, { message = L("no_vehicle") }
    end

    local ok, quoteOrErr = buildQuote(src, workshopId, plate, payload.model, payload.tier or "pro", payload.components)
    if not ok then
        return false, quoteOrErr
    end

    notify(src, L("quote_created"), "success")
    return true, {
        quote = {
            id = quoteOrErr.id,
            tier = quoteOrErr.tier,
            totalPrice = quoteOrErr.totalPrice,
            totalDuration = quoteOrErr.totalDuration,
            lines = quoteOrErr.lines,
            stock = tableToArrayMap(quoteOrErr.stockNeeds),
            expiresAt = quoteOrErr.expiresAt
        }
    }
end

local function rpcStartRepair(src, payload)
    if not hasMechanicPermission(src) then
        return false, { message = L("no_permission") }
    end

    local workshopId = tonumber(payload.workshopId)
    if not workshopId or not Config.Workshops[workshopId] then
        return false, { message = L("not_in_workshop") }
    end

    local quote = getQuoteById(payload.quoteId)
    if not quote or quote.workshopId ~= workshopId or quote.status ~= "draft" then
        return false, { message = L("invalid_request") }
    end

    if now() > (quote.expiresAt or 0) then
        saveQuoteStatus(quote.id, "expired")
        return false, { message = L("invalid_request") }
    end

    for item, amount in pairs(quote.stockNeeds) do
        if getStock(workshopId, item) < amount then
            return false, { message = L("not_enough_stock") }
        end
    end

    if not removeMoney(src, quote.totalPrice) then
        return false, { message = L("payment_failed") }
    end

    for item, amount in pairs(quote.stockNeeds) do
        adjustStock(workshopId, item, -amount)
    end

    saveQuoteStatus(quote.id, "in_progress")

    repairCounter = repairCounter + 1
    local repair = {
        id = repairCounter,
        quoteId = quote.id,
        source = src,
        mechanicIdentifier = getIdentifier(src),
        plate = quote.plate,
        workshopId = quote.workshopId,
        model = quote.model,
        totalPrice = quote.totalPrice,
        durationMs = math.max(5000, quote.totalDuration * 1000),
        stockNeeds = copyTable(quote.stockNeeds),
        componentsBefore = copyTable(quote.componentsBefore),
        componentsAfter = copyTable(quote.componentsAfter),
        status = "in_progress",
        startedAt = now()
    }

    saveRepair(repair)
    notify(src, L("repair_started"), "success")

    return true, {
        repairId = repair.id,
        quoteId = quote.id,
        plate = repair.plate,
        durationMs = repair.durationMs,
        finalComponents = repair.componentsAfter
    }
end

local function rpcFinishRepair(src, payload)
    local repairId = tonumber(payload.repairId)
    local repair = repairId and repairCache[repairId] or nil
    if not repair or repair.source ~= src or repair.status ~= "in_progress" then
        return false, { message = L("invalid_request") }
    end

    local success = payload.success == true
    if success then
        local vehicle = getVehicleState(repair.plate, repair.model)
        vehicle.components = mergeComponents(repair.componentsAfter)
        saveVehicleState(repair.plate, repair.model, vehicle.components, vehicle.mileage)
        TriggerClientEvent("ultra_mechanic:client:updateVehicleState", -1, repair.plate, vehicle.components)

        repair.status = "completed"
        saveQuoteStatus(repair.quoteId, "completed")
        notify(src, L("payment_success"), "success")
    else
        repair.status = "cancelled"
        saveQuoteStatus(repair.quoteId, "cancelled")
        addMoney(src, repair.totalPrice)
        for item, amount in pairs(repair.stockNeeds) do
            adjustStock(repair.workshopId, item, amount)
        end
    end

    repair.finishedAt = now()
    saveRepair(repair)
    return true, { ok = true }
end

local function rpcOrderStock(src, payload)
    if not hasMechanicPermission(src) then
        return false, { message = L("no_permission") }
    end

    local workshopId = tonumber(payload.workshopId)
    local item = payload.item
    local amount = clamp(tonumber(payload.amount) or 0, 1, 50)
    local part = Config.Parts[item]
    if not workshopId or not Config.Workshops[workshopId] or not part then
        return false, { message = L("invalid_request") }
    end

    local price = round(part.price * amount * Config.StockSupplierMultiplier * Config.EconomyMultiplier)
    if not removeMoney(src, price) then
        return false, { message = L("payment_failed") }
    end

    local _, newAmount = adjustStock(workshopId, item, amount)
    notify(src, L("stock_updated"), "success")

    return true, {
        item = item,
        amount = amount,
        cost = price,
        newAmount = newAmount
    }
end

local rpcHandlers = {
    hasPermission = rpcHasPermission,
    getPanelData = rpcGetPanelData,
    createQuote = rpcCreateQuote,
    startRepair = rpcStartRepair,
    finishRepair = rpcFinishRepair,
    orderStock = rpcOrderStock
}

RegisterNetEvent("ultra_mechanic:server:rpc", function(requestId, action, payload)
    local src = source
    local nowTs = GetGameTimer()
    if rpcCooldown[src] and nowTs - rpcCooldown[src] < 150 then
        TriggerClientEvent("ultra_mechanic:client:rpc:response", src, requestId, false, { message = L("cooldown_active") })
        return
    end
    rpcCooldown[src] = nowTs

    local handler = rpcHandlers[action]
    if not handler then
        TriggerClientEvent("ultra_mechanic:client:rpc:response", src, requestId, false, { message = L("invalid_request") })
        return
    end

    local ok, response = handler(src, payload or {})
    TriggerClientEvent("ultra_mechanic:client:rpc:response", src, requestId, ok == true, response or {})
end)

RegisterNetEvent("ultra_mechanic:server:syncVehicleState", function(payload)
    local plate = normalizePlate(payload and payload.plate or "")
    if plate == "" then
        return
    end

    local current = getVehicleState(plate, payload.model)
    if not current then
        return
    end

    local merged = mergeComponents(payload.components or {})
    current.components = merged
    current.mileage = (current.mileage or 0.0) + math.max(0.0, tonumber(payload.mileage) or 0.0)
    saveVehicleState(plate, payload.model, current.components, current.mileage)
end)

AddEventHandler("playerDropped", function()
    local src = source
    for _, repair in pairs(repairCache) do
        if repair.source == src and repair.status == "in_progress" then
            repair.status = "cancelled"
            repair.finishedAt = now()
            addMoney(src, repair.totalPrice)
            for item, amount in pairs(repair.stockNeeds) do
                adjustStock(repair.workshopId, item, amount)
            end
            saveQuoteStatus(repair.quoteId, "cancelled")
            saveRepair(repair)
        end
    end
end)

CreateThread(function()
    identifyFramework()
    hasMySQLAwait = type(MySQL) == "table" and MySQL.query and MySQL.query.await ~= nil
    hasDatabase = hasMySQLAwait or GetResourceState("oxmysql") == "started"

    ensureStockCache()

    if hasDatabase then
        dbExec([[
            CREATE TABLE IF NOT EXISTS um_vehicles (
                plate VARCHAR(16) NOT NULL PRIMARY KEY,
                model BIGINT NOT NULL DEFAULT 0,
                mileage DOUBLE NOT NULL DEFAULT 0,
                components LONGTEXT NULL,
                updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        ]])

        dbExec([[
            CREATE TABLE IF NOT EXISTS um_workshop_stock (
                workshop_id INT NOT NULL,
                item VARCHAR(64) NOT NULL,
                amount INT NOT NULL DEFAULT 0,
                updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                PRIMARY KEY (workshop_id, item)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        ]])

        dbExec([[
            CREATE TABLE IF NOT EXISTS um_quotes (
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                plate VARCHAR(16) NOT NULL,
                workshop_id INT NOT NULL,
                model BIGINT NOT NULL DEFAULT 0,
                tier VARCHAR(32) NOT NULL,
                status VARCHAR(32) NOT NULL DEFAULT 'draft',
                created_by VARCHAR(64) NULL,
                mechanic_identifier VARCHAR(80) NULL,
                total_price INT NOT NULL DEFAULT 0,
                total_duration INT NOT NULL DEFAULT 0,
                lines_json LONGTEXT NULL,
                stock_json LONGTEXT NULL,
                before_json LONGTEXT NULL,
                after_json LONGTEXT NULL,
                created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
                expires_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
                updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                INDEX idx_plate_status (plate, status)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        ]])

        dbExec([[
            CREATE TABLE IF NOT EXISTS um_repairs (
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                quote_id INT NOT NULL,
                plate VARCHAR(16) NOT NULL,
                workshop_id INT NOT NULL,
                model BIGINT NOT NULL DEFAULT 0,
                status VARCHAR(32) NOT NULL DEFAULT 'in_progress',
                started_by VARCHAR(64) NULL,
                mechanic_identifier VARCHAR(80) NULL,
                total_price INT NOT NULL DEFAULT 0,
                duration_ms INT NOT NULL DEFAULT 0,
                stock_json LONGTEXT NULL,
                before_json LONGTEXT NULL,
                after_json LONGTEXT NULL,
                started_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
                finished_at TIMESTAMP NULL,
                updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                INDEX idx_plate_status (plate, status)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        ]])

        local stockRows = dbQuery("SELECT workshop_id, item, amount FROM um_workshop_stock", {})
        for _, row in ipairs(stockRows) do
            local workshopId = tonumber(row.workshop_id)
            if workshopId and stockCache[workshopId] then
                stockCache[workshopId][row.item] = tonumber(row.amount) or 0
            end
        end

        for workshopId, stock in pairs(stockCache) do
            for item, amount in pairs(stock) do
                saveStock(workshopId, item, amount)
            end
        end
    end

    print(("[%-18s] iniciado | framework=%s | database=%s"):format(RESOURCE, framework.name, hasDatabase and "on" or "off"))
end)
