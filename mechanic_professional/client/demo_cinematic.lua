--[[
    Overlay cinematográfico + disparo do modo demo (/mechanicdemo no servidor).
]]

addEvent("mechanic:demoPhase", true)

local cue = {
    title = "",
    subtitle = "",
    narrator = "",
    tab = nil,
    open_panel = false,
    done = false,
    phase = "",
}

local sw, sh = guiGetScreenSize()

addEventHandler("mechanic:demoPhase", root, function(payload)
    if type(payload) ~= "table" then return end
    for k, v in pairs(payload) do
        cue[k] = v
    end
    if cue.open_panel then
        triggerEvent("mechanic:demoOpenPanel", root)
    end
    if cue.tab then
        triggerEvent("mechanic:demoSetTab", root, cue.tab)
    end
end)

addEventHandler("onClientRender", root, function()
    if cue.narrator == "" and cue.title == "" and not cue.done then return end
    local now = getTickCount()
    local alpha = 235
    local barH = sh * 0.14
    dxDrawRectangle(0, 0, sw, barH, tocolor(8, 10, 14, alpha))
    dxDrawRectangle(0, sh - barH, sw, barH, tocolor(8, 10, 14, alpha))
    if cue.title and cue.title ~= "" then
        dxDrawText(cue.title, 24, 16, sw - 24, barH - 8, tocolor(0, 200, 215, 255), 1.25, "default-bold", "left", "top", false, false, false, true)
    end
    if cue.subtitle and cue.subtitle ~= "" then
        dxDrawText(cue.subtitle, 24, 48, sw - 24, barH, tocolor(180, 190, 200, 255), 0.95, "default", "left", "top", false, false, false, true)
    end
    local narr = cue.narrator or ""
    if narr ~= "" then
        dxDrawText(
            narr,
            32,
            sh - barH + 12,
            sw - 32,
            sh - 16,
            tocolor(230, 235, 240, 255),
            0.92,
            "default",
            "left",
            "top",
            false,
            true,
            false,
            true
        )
    end
    if cue.done then
        dxDrawText("MechanicPro — demo mode", sw - 220, sh - 28, sw - 12, sh - 8, tocolor(120, 130, 145, 200), 0.75, "default", "right", "bottom")
    end
end)

bindKey("F11", "down", function()
    triggerServerEvent("mechanic:startDemo", localPlayer)
end)

outputChatBox("[MechanicPro] F11 = iniciar demonstração cinematográfica (~5 min) | ou /mechanicdemo no chat", 120, 200, 255)
