--[[
    Motor de estoque: on_hand, reserved (por job), lotes simulados, transações atômicas,
    reordenação automática e consistência com FSM.
]]

local Inventory = {}
Inventory.__index = Inventory

function Inventory:new()
    local o = {
        on_hand = {},
        reserved = {}, -- [jobId][sku] = qty
        inbound = {}, -- fila de recebimentos simulados { sku, qty, eta_tick }
        lots = {}, -- [sku] = { { lot="L001", qty=10 }, ... }
        txn_counter = 0,
    }
    setmetatable(o, self)
    for sku in pairs(PARTS_CATALOG) do
        o.on_hand[sku] = math.random(3, 18)
        o.lots[sku] = {
            { lot = "INIT-A", qty = o.on_hand[sku] },
        }
    end
    return o
end

function Inventory:_txnId()
    self.txn_counter = self.txn_counter + 1
    return string.format("TXN-%06d", self.txn_counter)
end

function Inventory:_ensureJobReserve(jobId)
    if not self.reserved[jobId] then
        self.reserved[jobId] = {}
    end
end

function Inventory:available(sku)
    local oh = self.on_hand[sku] or 0
    local r = 0
    for _, jobMap in pairs(self.reserved) do
        r = r + (jobMap[sku] or 0)
    end
    return oh - r
end

function Inventory:reserve(jobId, sku, qty, actor)
    self:_ensureJobReserve(jobId)
    if qty <= 0 then
        MechanicAudit:append(LOG_LEVEL.WARN, "INVENTORY", "reserve qty inválida", { job_id = jobId, sku = sku, qty = qty, actor = actor })
        return false, "invalid_qty"
    end
    local av = self:available(sku)
    if av < qty then
        MechanicAudit:append(LOG_LEVEL.WARN, "INVENTORY", "estoque insuficiente para reserva", {
            job_id = jobId,
            sku = sku,
            requested = qty,
            available = av,
            actor = actor,
        })
        return false, "insufficient"
    end
    self.reserved[jobId][sku] = (self.reserved[jobId][sku] or 0) + qty
    MechanicAudit:append(LOG_LEVEL.INFO, "INVENTORY", "reserva criada", {
        job_id = jobId,
        sku = sku,
        qty = qty,
        txn = self:_txnId(),
        type = TXN.RESERVE,
        actor = actor,
    })
    return true
end

function Inventory:releaseJob(jobId, actor)
    local jm = self.reserved[jobId]
    if not jm then return end
    for sku, qty in pairs(jm) do
        if qty > 0 then
            MechanicAudit:append(LOG_LEVEL.INFO, "INVENTORY", "reserva liberada (job)", {
                job_id = jobId,
                sku = sku,
                qty = qty,
                txn = self:_txnId(),
                type = TXN.RELEASE,
                actor = actor,
            })
        end
    end
    self.reserved[jobId] = nil
end

function Inventory:commitForJob(jobId, sku, qty, actor)
    self:_ensureJobReserve(jobId)
    local held = self.reserved[jobId][sku] or 0
    if held < qty then
        MechanicAudit:append(LOG_LEVEL.ERROR, "INVENTORY", "commit maior que reserva", {
            job_id = jobId,
            sku = sku,
            held = held,
            qty = qty,
            actor = actor,
        })
        return false, "over_commit"
    end
    local oh = self.on_hand[sku] or 0
    if oh < qty then
        return false, "stock_corrupt"
    end
    self.on_hand[sku] = oh - qty
    self.reserved[jobId][sku] = held - qty
    if self.reserved[jobId][sku] <= 0 then
        self.reserved[jobId][sku] = nil
    end
    MechanicAudit:append(LOG_LEVEL.INFO, "INVENTORY", "baixa de estoque (commit)", {
        job_id = jobId,
        sku = sku,
        qty = qty,
        on_hand_after = self.on_hand[sku],
        txn = self:_txnId(),
        type = TXN.COMMIT,
        actor = actor,
    })
    self:_maybeReorder(sku, actor)
    return true
end

function Inventory:receipt(sku, qty, actor, note)
    self.on_hand[sku] = (self.on_hand[sku] or 0) + qty
    local lots = self.lots[sku]
    if lots then
        lots[#lots + 1] = { lot = "RCV-" .. tostring(getTickCount() % 100000), qty = qty }
    end
    MechanicAudit:append(LOG_LEVEL.INFO, "INVENTORY", "entrada de mercadoria", {
        sku = sku,
        qty = qty,
        on_hand_after = self.on_hand[sku],
        txn = self:_txnId(),
        type = TXN.RECEIPT,
        actor = actor,
        note = note,
    })
end

function Inventory:_maybeReorder(sku, actor)
    local cat = PARTS_CATALOG[sku]
    if not cat then return end
    local oh = self.on_hand[sku] or 0
    if oh > cat.reorder_point then return end
    local orderQty = math.max(cat.reorder_point * 2 - oh, cat.reorder_point)
    local eta = getTickCount() + (cat.lead_time_min * 1000)
    self.inbound[#self.inbound + 1] = { sku = sku, qty = orderQty, eta_tick = eta }
    MechanicAudit:append(LOG_LEVEL.WARN, "PROCUREMENT", "pedido automático disparado", {
        sku = sku,
        order_qty = orderQty,
        eta_ms = cat.lead_time_min * 1000,
        actor = actor or "system",
    })
end

function Inventory:tickInbound()
    local now = getTickCount()
    local remain = {}
    for _, row in ipairs(self.inbound) do
        if row.eta_tick <= now then
            self:receipt(row.sku, row.qty, "system", "auto_replenish")
        else
            remain[#remain + 1] = row
        end
    end
    self.inbound = remain
end

function Inventory:snapshot()
    local skus = catalogSkuList()
    local rows = {}
    for _, sku in ipairs(skus) do
        local cat = PARTS_CATALOG[sku]
        rows[#rows + 1] = {
            sku = sku,
            name = cat and cat.name or sku,
            on_hand = self.on_hand[sku] or 0,
            available = self:available(sku),
            reorder_point = cat and cat.reorder_point or 0,
            supplier = cat and cat.supplier or "",
        }
    end
    return rows
end

function Inventory:pendingInbound()
    return self.inbound
end

_G.MechanicInventory = Inventory:new()

setTimer(function()
    MechanicInventory:tickInbound()
end, 5000, 0)
