local function jsonString(s)
    s = tostring(s or "")
    s = s:gsub("\\", "\\\\"):gsub('"', '\\"'):gsub("\r", ""):gsub("\n", "\\n")
    return '"' .. s .. '"'
end

local function encodeBody(t)
    local parts = {}
    for k, v in pairs(t) do
        if type(v) == "string" or type(v) == "number" then
            table.insert(parts, jsonString(k) .. ":" .. jsonString(v))
        end
    end
    return "{" .. table.concat(parts, ",") .. "}"
end

local function postJSON(path, bodyTable)
    if not config or not config.bridgeURL or not config.bridgeSecret then
        outputDebugString("[discord_bridge] config em falta", 1)
        return false
    end
    local url = config.bridgeURL .. path
    local body = encodeBody(bodyTable)
    local headers = {
        ["Content-Type"] = "application/json",
        ["x-bridge-secret"] = config.bridgeSecret,
    }
    fetchRemote(url, {
        method = "POST",
        headers = headers,
        postData = body,
    }, function(data, errno)
        if errno ~= 0 then
            outputDebugString("[discord_bridge] erro HTTP " .. tostring(errno) .. " em " .. path, 2)
        end
    end)
    return true
end

--- Envia um embed para o canal de anúncios do Discord (via bot).
-- @param title string
-- @param description string
function discordAnnounce(title, description)
    postJSON("/mta/announce", {
        title = title,
        description = description,
    })
end

--- Mensagem de texto simples no canal de anúncios.
function discordAnnounceText(content)
    postJSON("/mta/announce", {
        content = content,
    })
end

--- Aviso para o canal de log da staff no Discord.
function discordStaffLog(message)
    postJSON("/mta/staff", {
        message = message,
    })
end

-- Exemplo: anúncio ao arrancar o resource (comente se não quiser)
addEventHandler("onResourceStart", resourceRoot, function()
    discordAnnounce("Servidor MTA", "O servidor está **online**. Boa sorte nas ruas.")
end)
