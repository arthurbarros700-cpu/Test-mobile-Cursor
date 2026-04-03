--[[
    Trilha de auditoria em memória com rotação, níveis e correlação por job_id / player.
]]

local AuditLog = {}
AuditLog.__index = AuditLog

local MAX_ENTRIES = 500

function AuditLog:new()
    local o = { entries = {}, seq = 0 }
    setmetatable(o, self)
    return o
end

function AuditLog:_nextId()
    self.seq = self.seq + 1
    return self.seq
end

function AuditLog:append(level, category, message, context)
    context = context or {}
    local id = self:_nextId()
    local entry = {
        id = id,
        ts = getTickCount(),
        level = level,
        category = category,
        message = message,
        context = context,
    }
    table.insert(self.entries, entry)
    while #self.entries > MAX_ENTRIES do
        table.remove(self.entries, 1)
    end
    outputDebugString(
        string.format(
            "[Mechanic][%s][%s] %s | %s",
            LOG_LEVEL_NAME[level] or tostring(level),
            category,
            message,
            toJSON(context, true)
        ),
        level >= LOG_LEVEL.ERROR and 1 or 3
    )
    return entry
end

function AuditLog:recent(maxN, minLevel)
    maxN = maxN or 80
    minLevel = minLevel or LOG_LEVEL.DEBUG
    local out = {}
    for i = #self.entries, 1, -1 do
        local e = self.entries[i]
        if e.level >= minLevel then
            out[#out + 1] = e
            if #out >= maxN then break end
        end
    end
    return out
end

function AuditLog:filterByJob(jobId, maxN)
    maxN = maxN or 50
    local out = {}
    for i = #self.entries, 1, -1 do
        local e = self.entries[i]
        if e.context and e.context.job_id == jobId then
            out[#out + 1] = e
            if #out >= maxN then break end
        end
    end
    return out
end

_G.MechanicAudit = AuditLog:new()
