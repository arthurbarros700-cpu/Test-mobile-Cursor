VehicleUtils = {}

local jsonRef = json or {}

function VehicleUtils.round(value, decimals)
    local power = 10 ^ (decimals or 0)
    return math.floor((tonumber(value) or 0) * power + 0.5) / power
end

function VehicleUtils.clamp(value, minValue, maxValue)
    value = tonumber(value) or 0
    if value < minValue then
        return minValue
    end

    if value > maxValue then
        return maxValue
    end

    return value
end

function VehicleUtils.deepCopy(value)
    if type(value) ~= 'table' then
        return value
    end

    local result = {}
    for key, nested in pairs(value) do
        result[key] = VehicleUtils.deepCopy(nested)
    end

    return result
end

function VehicleUtils.makeId(prefix)
    return ('%s_%d_%d'):format(prefix or 'id', os.time(), math.random(100000, 999999))
end

function VehicleUtils.encode(data)
    if jsonRef and jsonRef.encode then
        return jsonRef.encode(data)
    end

    return '{}'
end

function VehicleUtils.decode(data)
    if not data or data == '' then
        return nil
    end

    if jsonRef and jsonRef.decode then
        return jsonRef.decode(data)
    end

    return nil
end

function VehicleUtils.plateNormalize(plate)
    if not plate then
        return 'UNKNOWN'
    end

    local normalized = tostring(plate):upper():gsub('%s+', '')
    return normalized ~= '' and normalized or 'UNKNOWN'
end

function VehicleUtils.vehicleKeyFromProps(props)
    if not props then
        return 'UNKNOWN'
    end

    return VehicleUtils.plateNormalize(props.plate or props.vehicleKey or props.key)
end

function VehicleUtils.componentLabel(componentId)
    local definition = MechanicCatalog.Components[componentId]
    return definition and definition.label or componentId
end

function VehicleUtils.itemLabel(itemId)
    local stockItem = MechanicCatalog.StockItems[itemId]
    if stockItem and stockItem.label then
        return stockItem.label
    end

    return VehicleUtils.componentLabel(itemId)
end

function VehicleUtils.serviceLabel(service)
    local map = {
        diagnostic = 'Diagnostico',
        repair = 'Reparo',
        replace = 'Substituicao',
        performance = 'Performance',
        upgrade = 'Tunagem',
    }

    return map[service] or service
end

function VehicleUtils.severityLabel(condition)
    condition = tonumber(condition) or 100

    if condition <= Config.ConditionThresholds.failed then
        return 'Falha total'
    elseif condition <= Config.ConditionThresholds.critical then
        return 'Critico'
    elseif condition <= Config.ConditionThresholds.warning then
        return 'Atencao'
    elseif condition <= Config.ConditionThresholds.stable then
        return 'Estavel'
    end

    return 'Pristine'
end

function VehicleUtils.riskLabel(score)
    score = tonumber(score) or 100

    if score <= 15 then
        return 'Imobilizacao iminente'
    elseif score <= 35 then
        return 'Risco alto'
    elseif score <= 60 then
        return 'Risco moderado'
    elseif score <= 80 then
        return 'Operacao monitorada'
    end

    return 'Operacao segura'
end

function VehicleUtils.stageLabel(score)
    score = tonumber(score) or 100

    if score <= 20 then
        return 'Recuperacao estrutural'
    elseif score <= 45 then
        return 'Manutencao corretiva'
    elseif score <= 70 then
        return 'Manutencao preventiva'
    elseif score <= 88 then
        return 'Operacao regular'
    end

    return 'Padrao premium'
end

function VehicleUtils.findWorkshopById(workshopId)
    for _, workshop in ipairs(Config.Workshops or {}) do
        if workshop.id == workshopId then
            return workshop
        end
    end

    return nil
end

function VehicleUtils.defaultWorkshopStock()
    local stock = {}

    for itemId, item in pairs(MechanicCatalog.StockItems or {}) do
        stock[itemId] = {
            item = itemId,
            label = item.label,
            quantity = item.defaultQuantity or 0,
            unitCost = item.unitCost or 0,
            averageCost = item.unitCost or 0,
            minimumStock = item.minimumStock or Config.WorkshopEconomy.lowStockThreshold,
            supplier = item.supplier or 'VX Supply Chain',
            type = item.type or 'material',
        }
    end

    return stock
end

local function baselineTelemetry()
    return {
        speed = 0.0,
        rpm = 0.0,
        mileage = 0.0,
        collision = 0.0,
        engineDrop = 0.0,
        bodyDrop = 0.0,
        tankDrop = 0.0,
        hardBrake = false,
        burnout = false,
        offroad = false,
        airborneImpact = false,
        engineTemp = 82.0,
        aggressiveUsage = 0.0,
        braking = 0.0,
        drift = 0.0,
        landing = 0.0,
        fuelLevel = 100.0,
        dirtLevel = 0.0,
    }
end

local function defaultTuning()
    return {
        presetId = 'stock',
        modifiers = {
            enginePower = 0.0,
            brakeForce = 0.0,
            suspensionDrop = 0.0,
            tractionBias = 0.0,
        },
        mods = {
            engine = -1,
            brakes = -1,
            transmission = -1,
            suspension = -1,
            turbo = false,
        },
    }
end

function VehicleUtils.newVehicleRecord(props)
    props = props or {}

    local components = {}
    for componentId, definition in pairs(MechanicCatalog.Components or {}) do
        local metrics = VehicleUtils.getComponentMetrics and VehicleUtils.getComponentMetrics(componentId, 100) or {
            repairCost = 0,
            replaceCost = 0,
            baseRepairHours = definition.repairHours or 1.0,
            replaceHours = definition.replaceHours or 1.5,
        }

        components[componentId] = {
            id = componentId,
            label = definition.label,
            category = definition.category,
            health = 100.0,
            severity = definition.severity,
            healthStateLabel = VehicleUtils.severityLabel(100),
            repairCost = metrics.repairCost,
            replaceCost = metrics.replaceCost,
            baseRepairHours = metrics.baseRepairHours,
            replaceHours = metrics.replaceHours,
            replacementItem = definition.replacementItem,
            lastService = 0,
            serviceCount = 0,
            wear = 0.0,
            temperature = 20.0,
        }
    end

    return {
        vehicleKey = VehicleUtils.vehicleKeyFromProps(props),
        plate = VehicleUtils.plateNormalize(props.plate),
        displayName = props.displayName or props.label or 'Veiculo',
        modelHash = props.modelHash or 0,
        modelName = props.modelName or props.displayName or 'unknown',
        class = props.class or 0,
        classLabel = props.classLabel or ('Classe %s'):format(props.class or 0),
        engineHealth = 100.0,
        bodyHealth = 100.0,
        tankHealth = 100.0,
        odometerKm = 0.0,
        telemetry = baselineTelemetry(),
        tuning = defaultTuning(),
        currentPreset = 'stock',
        summary = {
            healthScore = 100.0,
            estimatedRepairCost = 0,
            totalRepairHours = 0.0,
            riskLabel = VehicleUtils.riskLabel(100),
            stageLabel = VehicleUtils.stageLabel(100),
            flags = {},
        },
        components = components,
        history = {},
        updatedAt = os.time(),
        ownerIdentifier = nil,
        workshopId = nil,
    }
end

function VehicleUtils.componentMaterialCost(definition, action)
    local recipe = action == 'replace' and definition.replaceItems or definition.repairItems
    local total = 0

    for itemId, amount in pairs(recipe or {}) do
        local stock = MechanicCatalog.StockItems[itemId]
        total = total + ((stock and stock.unitCost or 0) * (tonumber(amount) or 0))
    end

    if action == 'replace' then
        total = total + (definition.unitCost or 0)
    end

    return math.floor(total)
end

function VehicleUtils.getComponentMetrics(componentId, health)
    local definition = MechanicCatalog.Components[componentId]
    if not definition then
        return {
            repairCost = 0,
            replaceCost = 0,
            baseRepairHours = 0.0,
            replaceHours = 0.0,
        }
    end

    local wearRatio = VehicleUtils.clamp((100 - (tonumber(health) or 100)) / 100, 0, 1)
    local repairCost = VehicleUtils.componentMaterialCost(definition, 'repair') + math.floor((definition.unitCost or 0) * 0.18 * wearRatio)
    local replaceCost = VehicleUtils.componentMaterialCost(definition, 'replace')

    return {
        repairCost = repairCost,
        replaceCost = replaceCost,
        baseRepairHours = definition.repairHours or 1.0,
        replaceHours = definition.replaceHours or ((definition.repairHours or 1.0) * 1.65),
    }
end

function VehicleUtils.calculateComponentWear(componentId, telemetry, vehicleClass, presetId)
    local definition = MechanicCatalog.Components[componentId]
    if not definition then
        return 0.0
    end

    telemetry = telemetry or baselineTelemetry()
    local classMultiplier = Config.VehicleClassWear[vehicleClass or 0] or 1.0
    local preset = MechanicCatalog.TuningPresets[presetId or 'stock'] or MechanicCatalog.TuningPresets.stock
    local tuneBias = preset and preset.wearBias or 1.0
    local channels = definition.wearChannels or {}

    local damage = 0.0
    damage = damage + (tonumber(telemetry.mileage) or 0) * Config.DamageModel.baseWearFactor * (channels.mileage or 0)
    damage = damage + (tonumber(telemetry.collision) or 0) * Config.DamageModel.collisionFactor * (channels.collision or 0)
    damage = damage + ((telemetry.burnout and 1 or 0) + (tonumber(telemetry.aggressiveUsage) or 0) * 0.03) * Config.DamageModel.burnoutFactor * (channels.burnout or 0) * 10
    damage = damage + ((telemetry.hardBrake and 1 or 0) * 12 + (tonumber(telemetry.braking) or 0) * 0.4) * Config.DamageModel.brakingFactor * (channels.braking or 0)
    damage = damage + ((telemetry.offroad and 1 or 0) * 12) * Config.DamageModel.offroadFactor * (channels.offroad or 0)
    damage = damage + math.max(0, (tonumber(telemetry.engineTemp) or 82) - 90) * Config.DamageModel.overheatFactor * (channels.heat or 0) * 0.12
    damage = damage + ((tonumber(telemetry.drift) or 0) > 0 and 5 or 0) * Config.DamageModel.driftFactor * (channels.drift or 0)
    damage = damage + ((telemetry.airborneImpact and 1 or 0) * 10 + (tonumber(telemetry.landing) or 0)) * Config.DamageModel.landingFactor * (channels.landing or 0)

    return VehicleUtils.round(damage * classMultiplier * tuneBias, 2)
end

function VehicleUtils.computeSummary(vehicle)
    local score = 0.0
    local count = 0
    local totalCost = 0
    local totalHours = 0.0
    local flags = {}

    for componentId, component in pairs(vehicle.components or {}) do
        score = score + (component.health or 0)
        count = count + 1

        local definition = MechanicCatalog.Components[componentId]
        if component.health < (definition and definition.repairThreshold or 50) then
            totalCost = totalCost + math.floor(component.replaceCost or 0)
            totalHours = totalHours + (component.replaceHours or 0)
            flags[#flags + 1] = {
                id = componentId,
                label = ('%s comprometido'):format(component.label or componentId),
                severity = definition and definition.severity or 'high',
            }
        elseif component.health < 82 then
            totalCost = totalCost + math.floor(component.repairCost or 0)
            totalHours = totalHours + (component.baseRepairHours or 0)
        end
    end

    local componentScore = count > 0 and VehicleUtils.round(score / count, 2) or 100.0
    local globalScore = VehicleUtils.round(
        (componentScore * 0.72) +
        ((vehicle.engineHealth or 100) * 0.14) +
        ((vehicle.bodyHealth or 100) * 0.09) +
        ((vehicle.tankHealth or 100) * 0.05),
        2
    )

    return {
        healthScore = globalScore,
        estimatedRepairCost = math.floor(totalCost),
        totalRepairHours = VehicleUtils.round(totalHours, 1),
        riskLabel = VehicleUtils.riskLabel(globalScore),
        stageLabel = VehicleUtils.stageLabel(globalScore),
        flags = flags,
    }
end

function VehicleUtils.vehicleSummary(vehicle)
    return VehicleUtils.computeSummary(vehicle)
end

function VehicleUtils.applyTelemetry(vehicle, telemetry)
    if not vehicle then
        return vehicle
    end

    local merged = baselineTelemetry()
    for key, value in pairs(telemetry or {}) do
        merged[key] = value
    end

    vehicle.odometerKm = VehicleUtils.round((vehicle.odometerKm or 0) + (tonumber(merged.odometerDelta) or 0), 2)
    vehicle.engineHealth = VehicleUtils.clamp((vehicle.engineHealth or 100) - ((merged.engineDamage or merged.engineDrop or 0) * 0.04), 0, 100)
    vehicle.bodyHealth = VehicleUtils.clamp((vehicle.bodyHealth or 100) - ((merged.bodyDamage or merged.bodyDrop or 0) * 0.05), 0, 100)
    vehicle.tankHealth = VehicleUtils.clamp((vehicle.tankHealth or 100) - ((merged.tankDamage or merged.tankDrop or 0) * 0.06), 0, 100)

    merged.mileage = merged.mileage or merged.odometerDelta or 0
    merged.engineDrop = merged.engineDrop or merged.engineDamage or 0
    merged.bodyDrop = merged.bodyDrop or merged.bodyDamage or 0
    merged.tankDrop = merged.tankDrop or merged.tankDamage or 0
    merged.hardBrake = merged.hardBrake or ((tonumber(merged.braking) or 0) >= 8.0)
    merged.burnout = merged.burnout and (tonumber(merged.burnout) > 0)
    merged.offroad = merged.offroad and (tonumber(merged.offroad) > 0)
    merged.airborneImpact = merged.airborneImpact or ((tonumber(merged.landing) or 0) > 0.7)

    vehicle.telemetry = merged

    for componentId, componentState in pairs(vehicle.components or {}) do
        local wear = VehicleUtils.calculateComponentWear(componentId, merged, vehicle.class, vehicle.currentPreset or 'stock')
        componentState.health = VehicleUtils.clamp((componentState.health or 100) - wear, 0, 100)
        componentState.healthStateLabel = VehicleUtils.severityLabel(componentState.health)
        componentState.wear = VehicleUtils.round(100 - componentState.health, 2)
        componentState.temperature = VehicleUtils.round(20 + math.max(0, (merged.engineTemp or 82) - 60) * 0.65, 1)

        local metrics = VehicleUtils.getComponentMetrics(componentId, componentState.health)
        componentState.repairCost = metrics.repairCost
        componentState.replaceCost = metrics.replaceCost
        componentState.baseRepairHours = metrics.baseRepairHours
        componentState.replaceHours = metrics.replaceHours
    end

    vehicle.summary = VehicleUtils.computeSummary(vehicle)
    vehicle.updatedAt = os.time()
    return vehicle
end

function VehicleUtils.buildServiceQuotes(vehicle, workshop)
    local quotes = {}
    if not vehicle or not workshop then
        return quotes
    end

    for _, componentId in ipairs(MechanicCatalog.ComponentOrder or {}) do
        local component = vehicle.components and vehicle.components[componentId]
        local definition = MechanicCatalog.Components[componentId]
        if component and definition and component.health < 88 then
            local service = component.health <= definition.repairThreshold and 'replace' or 'repair'
            local mode = component.health <= definition.repairThreshold and 'restoration' or 'premium'
            quotes[#quotes + 1] = VehicleUtils.buildQuote(vehicle, componentId, service, workshop, mode)
        end
    end

    table.sort(quotes, function(a, b)
        local av = vehicle.components[a.componentId].health or 0
        local bv = vehicle.components[b.componentId].health or 0
        return av < bv
    end)

    return quotes
end

function VehicleUtils.buildRecommendedQuotes(vehicle, workshop)
    return VehicleUtils.buildServiceQuotes(vehicle, workshop)
end

function VehicleUtils.buildServiceQuote(vehicle, componentId, service, workshop, mode)
    return VehicleUtils.buildQuote(vehicle, componentId, service, workshop, mode)
end

function VehicleUtils.buildQuote(vehicle, componentId, service, workshop, mode)
    local definition = MechanicCatalog.Components[componentId]
    local component = vehicle and vehicle.components and vehicle.components[componentId]
    local pack = Config.ServicePackages[mode or 'premium'] or Config.ServicePackages.premium
    if not definition or not component or not workshop then
        return nil
    end

    local metrics = VehicleUtils.getComponentMetrics(componentId, component.health)
    local action = service or 'repair'
    local partsCost = 0
    local laborHours = 0.0
    local items = {}

    if action == 'replace' then
        partsCost = math.floor(metrics.replaceCost * (workshop.stockMarkup or 1.0))
        laborHours = metrics.replaceHours or definition.replaceHours or 1.0
        items = VehicleUtils.deepCopy(definition.replaceItems or {})
    elseif action == 'performance' then
        partsCost = math.floor((metrics.repairCost + (definition.unitCost or 0) * 0.22) * (workshop.stockMarkup or 1.0))
        laborHours = (definition.replaceHours or 1.0) * 0.6
        items = VehicleUtils.deepCopy(definition.repairItems or {})
    elseif action == 'diagnostic' then
        partsCost = 0
        laborHours = 0.6
        items = {}
    else
        partsCost = math.floor(metrics.repairCost * (workshop.stockMarkup or 1.0))
        laborHours = metrics.baseRepairHours or definition.repairHours or 1.0
        items = VehicleUtils.deepCopy(definition.repairItems or {})
    end

    local laborCost = math.floor((workshop.laborRate or 0) * laborHours * (pack.laborMultiplier or 1.0))
    local requiredItem = definition.replacementItem
    local stockEntry = requiredItem and workshop.stock and workshop.stock[requiredItem] or nil

    return {
        componentId = componentId,
        label = ('%s - %s'):format(VehicleUtils.serviceLabel(action), definition.label),
        service = action,
        mode = mode or 'premium',
        partsCost = partsCost,
        laborCost = laborCost,
        price = partsCost + laborCost,
        durationMs = Config.ServiceDurations[action] or Config.ServiceDurations.repair,
        requiredItem = requiredItem,
        items = items,
        stockAvailable = stockEntry and stockEntry.quantity > 0 or action == 'diagnostic',
        package = pack.label,
    }
end

function VehicleUtils.hasStock(stock, items)
    for itemId, amount in pairs(items or {}) do
        local entry = stock and stock[itemId]
        if not entry or (entry.quantity or 0) < (tonumber(amount) or 0) then
            return false
        end
    end

    return true
end

function VehicleUtils.consumeStock(stock, items)
    for itemId, amount in pairs(items or {}) do
        local entry = stock and stock[itemId]
        if entry then
            entry.quantity = math.max(0, math.floor((entry.quantity or 0) - (tonumber(amount) or 0)))
        end
    end
end

function VehicleUtils.pushHistory(history, entry)
    table.insert(history, 1, entry)

    while #history > Config.MaxHistoryEntries do
        table.remove(history, #history)
    end
end

function VehicleUtils.appendHistory(vehicle, entry)
    vehicle.history = vehicle.history or {}
    VehicleUtils.pushHistory(vehicle.history, entry)
end

function VehicleUtils.decorateHistory(history)
    local result = {}
    for index, entry in ipairs(history or {}) do
        result[index] = VehicleUtils.deepCopy(entry)
        result[index].dateLabel = os.date('%d/%m/%Y %H:%M', entry.at or os.time())
    end
    return result
end

function VehicleUtils.buildTuningStateFromPreset(preset)
    preset = preset or MechanicCatalog.TuningPresets.stock
    return {
        presetId = preset.id,
        modifiers = VehicleUtils.deepCopy(preset.modifiers or {}),
        mods = VehicleUtils.deepCopy(preset.mods or {}),
    }
end

function VehicleUtils.buildPresetQuote(workshop, preset)
    if not workshop or not preset then
        return nil
    end

    local pack = Config.ServicePackages[preset.package or 'premium'] or Config.ServicePackages.premium
    local partsCost = 0
    for itemId, amount in pairs(preset.stockItems or {}) do
        local stockItem = MechanicCatalog.StockItems[itemId]
        partsCost = partsCost + math.floor((stockItem and stockItem.unitCost or 0) * (tonumber(amount) or 0) * (workshop.stockMarkup or 1.0))
    end

    local laborCost = math.floor((workshop.laborRate or 0) * (preset.laborHours or 1.0) * (pack.laborMultiplier or 1.0))

    return {
        label = preset.label,
        items = VehicleUtils.deepCopy(preset.stockItems or {}),
        price = partsCost + laborCost,
        partsCost = partsCost,
        laborCost = laborCost,
        durationMs = Config.ServiceDurations.performance or 26000,
        mode = preset.package or 'premium',
    }
end

function VehicleUtils.validatePresetRequirements(vehicle, preset)
    for componentId, minimumHealth in pairs(preset.requiredComponents or {}) do
        local component = vehicle.components and vehicle.components[componentId]
        if not component or (component.health or 0) < minimumHealth then
            return false, ('%s abaixo do minimo exigido (%s%%)'):format(VehicleUtils.componentLabel(componentId), minimumHealth)
        end
    end

    return true
end

function VehicleUtils.canApplyPreset(vehicle, preset)
    return VehicleUtils.validatePresetRequirements(vehicle, preset)
end

function VehicleUtils.tuningPresetList()
    local presets = {}
    for _, preset in pairs(MechanicCatalog.TuningPresets or {}) do
        presets[#presets + 1] = VehicleUtils.deepCopy(preset)
    end

    table.sort(presets, function(a, b)
        return (a.label or '') < (b.label or '')
    end)

    return presets
end

function VehicleUtils.buildTuningList()
    return VehicleUtils.tuningPresetList()
end

function VehicleUtils.buildStockPayload(stock)
    local entries = {}
    for itemId, state in pairs(stock or {}) do
        entries[itemId] = {
            item = itemId,
            label = state.label or VehicleUtils.itemLabel(itemId),
            quantity = state.quantity or 0,
            averageCost = state.averageCost or state.unitCost or 0,
            minimumStock = state.minimumStock or 0,
            supplier = state.supplier,
            type = state.type,
        }
    end
    return entries
end

function VehicleUtils.applyServiceResult(record, componentId, service)
    local component = record.components and record.components[componentId]
    local definition = MechanicCatalog.Components[componentId]
    if not component or not definition then
        return
    end

    if service == 'replace' then
        component.health = 100.0
        component.wear = 0.0
        component.temperature = 20.0
    elseif service == 'performance' then
        component.health = VehicleUtils.clamp(component.health + 18.0, 0.0, 100.0)
        component.wear = VehicleUtils.clamp(component.wear - 12.0, 0.0, 100.0)
    elseif service == 'diagnostic' then
        component.lastInspection = os.time()
    else
        component.health = VehicleUtils.clamp(component.health + 32.0, 0.0, 100.0)
        component.wear = VehicleUtils.clamp(component.wear - 24.0, 0.0, 100.0)
    end

    local metrics = VehicleUtils.getComponentMetrics(componentId, component.health)
    component.healthStateLabel = VehicleUtils.severityLabel(component.health)
    component.repairCost = metrics.repairCost
    component.replaceCost = metrics.replaceCost
    component.baseRepairHours = metrics.baseRepairHours
    component.replaceHours = metrics.replaceHours
    component.lastService = os.time()
    component.serviceCount = math.floor((component.serviceCount or 0) + 1)
    record.summary = VehicleUtils.computeSummary(record)
    record.updatedAt = os.time()
end

function VehicleUtils.applyPreset(record, presetId)
    local preset = MechanicCatalog.TuningPresets[presetId]
    if not preset then
        return
    end

    record.currentPreset = presetId
    record.tuning = VehicleUtils.buildTuningStateFromPreset(preset)
    record.summary = VehicleUtils.computeSummary(record)
    record.updatedAt = os.time()
end

function VehicleUtils.vehicleUiPayload(record, workshop)
    record.summary = VehicleUtils.computeSummary(record)

    return {
        vehicleKey = record.vehicleKey,
        plate = record.plate,
        displayName = record.displayName,
        class = record.class,
        classLabel = record.classLabel,
        modelHash = record.modelHash,
        modelName = record.modelName,
        odometerKm = record.odometerKm,
        engineHealth = record.engineHealth,
        bodyHealth = record.bodyHealth,
        tankHealth = record.tankHealth,
        telemetry = VehicleUtils.deepCopy(record.telemetry or baselineTelemetry()),
        tuning = VehicleUtils.deepCopy(record.tuning or defaultTuning()),
        summary = VehicleUtils.deepCopy(record.summary),
        components = VehicleUtils.deepCopy(record.components or {}),
        stock = workshop and VehicleUtils.buildStockPayload(workshop.stock) or {},
    }
end
