--[[
    Painel DX: abas OS / Estoque / Logs, fluxo guiado pela FSM, tema escuro tipo SCADA.
]]

addEvent("mechanic:onBootstrap", true)
addEvent("mechanic:onJobUpsert", true)
addEvent("mechanic:onJobRemoved", true)
addEvent("mechanic:onInventory", true)
addEvent("mechanic:onAuditSlice", true)
addEvent("mechanic:onActionResult", true)
addEvent("mechanic:demoOpenPanel", false)
addEvent("mechanic:demoSetTab", false)

local show = false
local sw, sh = guiGetScreenSize()
local px, py, pw, ph = sw * 0.22, sh * 0.12, sw * 0.56, sh * 0.72
local tab = "os"
local scrollLog = 0
local scrollInv = 0
local selectedJobId = nil
local bootstrap = { jobs = {}, inventory = {}, inbound = {}, catalog = {} }
local logEntries = {}
local toast = { text = "", untilTick = 0 }
local jobClickRects = {}
local actionBtnRect = nil

local COL = {
    bg = tocolor(18, 20, 26, 245),
    panel = tocolor(28, 32, 42, 250),
    accent = tocolor(0, 180, 200, 255),
    warn = tocolor(255, 190, 70, 255),
    err = tocolor(255, 90, 90, 255),
    ok = tocolor(80, 220, 140, 255),
    text = tocolor(230, 235, 240, 255),
    muted = tocolor(140, 150, 165, 255),
}

local function toastMsg(t, ms)
    toast.text = t
    toast.untilTick = getTickCount() + (ms or 3200)
end

local function jobById(id)
    for _, j in ipairs(bootstrap.jobs) do
        if j.id == id then return j end
    end
    return nil
end

local function panelBg(x, y, w, h)
    dxDrawRectangle(x, y, w, h, COL.bg)
end

local function inBox(cx, cy, x, y, w, h)
    return cx >= x and cx <= x + w and cy >= y and cy <= y + h
end

local function nextActionForState(st)
    if st == JOB_STATE.INTAKE then return "Iniciar diagnóstico", JOB_STATE.DIAGNOSTIC end
    if st == JOB_STATE.DIAGNOSTIC then return "Reservar peças (puxada)", JOB_STATE.PARTS_PULL end
    if st == JOB_STATE.PARTS_PULL then return "Iniciar mão de obra", JOB_STATE.LABOR end
    if st == JOB_STATE.LABOR then return "Trabalhar (+12%)", "LABOR_TICK" end
    if st == JOB_STATE.QC then return "Liberar veículo", JOB_STATE.READY end
    if st == JOB_STATE.READY then return "Encerrar OS", JOB_STATE.CLOSED end
    return nil, nil
end

local function drawTabBar()
    local tabs = { { id = "os", label = "Ordens de serviço" }, { id = "inv", label = "Estoque" }, { id = "log", label = "Logs / auditoria" } }
    local tw = pw / #tabs
    for i, t in ipairs(tabs) do
        local x = px + (i - 1) * tw
        local sel = tab == t.id
        dxDrawRectangle(x, py, tw, 36, sel and COL.accent or COL.panel)
        dxDrawText(t.label, x, py, x + tw, py + 36, sel and tocolor(10, 12, 14, 255) or COL.text, 1, "default-bold", "center", "center")
    end
end

local function drawJobPanel()
    local y0 = py + 44
    dxDrawText("Painel da oficina — FSM + estoque + diagnóstico", px + 12, y0, px + pw, y0 + 22, COL.muted, 0.9, "default")
    y0 = y0 + 26
    dxDrawRectangle(px + 8, y0, pw - 16, ph - 52, COL.panel)

    local lx = px + 16
    local ly = y0 + 8
    jobClickRects = {}
    actionBtnRect = nil
    dxDrawText("Nova OS", lx, ly, lx + 200, ly + 20, COL.text, 1, "default-bold")
    ly = ly + 22
    dxDrawText("Placa (ex: ABC1D23):", lx, ly, lx + 200, ly + 16, COL.muted, 0.85, "default")
    ly = ly + 18
    -- campos simulados: F2 abre; usamos binds para família e criação
    dxDrawText("F3 Compact  F4 Sedan  F5 SUV  F6 Sport  F7 Comercial  F8 Moto", lx, ly, lx + pw - 32, ly + 40, COL.muted, 0.8, "default", "left", "top", true, false)
    ly = ly + 42
    dxDrawText("F9 criar OS com placa aleatória (demo)", lx, ly, lx + 400, ly + 18, COL.accent, 0.85, "default")

    ly = ly + 28
    dxDrawText("OS abertas", lx, ly, lx + 200, ly + 20, COL.text, 1, "default-bold")
    ly = ly + 22

    local jy = ly
    for _, j in ipairs(bootstrap.jobs) do
        local sel = selectedJobId == j.id
        local bh = 62
        jobClickRects[#jobClickRects + 1] = { x = lx, y = jy, w = pw - 32, h = bh, id = j.id }
        if inBox(cursorX or 0, cursorY or 0, lx, jy, pw - 32, bh) or sel then
            dxDrawRectangle(lx, jy, pw - 32, bh, sel and tocolor(0, 140, 155, 60) or tocolor(255, 255, 255, 12))
        end
        dxDrawText(j.id .. "  |  " .. j.plate .. "  |  " .. j.family, lx + 6, jy + 4, lx + pw, jy + 20, COL.text, 0.95, "default-bold")
        dxDrawText("Estado: " .. j.state .. "  |  KM: " .. tostring(j.mileage_km), lx + 6, jy + 22, lx + pw, jy + 40, COL.muted, 0.85, "default")
        if j.state == JOB_STATE.LABOR then
            dxDrawRectangle(lx + 6, jy + 44, pw - 44, 10, tocolor(40, 45, 55, 255))
            dxDrawRectangle(lx + 6, jy + 44, (pw - 44) * (j.labor_progress or 0) / 100, 10, COL.accent)
        end
        jy = jy + bh + 4
    end

    local job = selectedJobId and jobById(selectedJobId) or nil
    if job then
        local rx = px + pw * 0.48
        local ry = y0 + 8
        dxDrawText("Detalhe: " .. job.id, rx, ry, rx + 200, ry + 20, COL.text, 1, "default-bold")
        ry = ry + 22
        if job.diagnostic then
            dxDrawText("DTC: " .. table.concat(job.diagnostic.dtc or {}, ", "), rx, ry, px + pw - 12, ry + 40, COL.warn, 0.85, "default", "left", "top", true, false)
            ry = ry + 42
            local findings = job.diagnostic.findings or {}
            dxDrawText("Achados:", rx, ry, rx + 200, ry + 16, COL.muted, 0.85, "default")
            ry = ry + 16
            dxDrawText(table.concat(findings, "\n"), rx, ry, px + pw - 16, y0 + ph - 148, COL.text, 0.82, "default", "left", "top", true, false)
        end
        if job.ref_context then
            local rc = job.ref_context
            local bits = {}
            if rc.tsb and rc.tsb.title then
                bits[#bits + 1] = "TSB: " .. tostring(rc.tsb.title):sub(1, 52)
            end
            if rc.torque and rc.torque.torque_nm then
                bits[#bits + 1] = string.format("Torque: %s Nm (%s)", tostring(rc.torque.torque_nm), tostring(rc.torque.assembly or ""))
            end
            if rc.flat_labor and rc.flat_labor.flat_hours then
                bits[#bits + 1] = string.format("Flat-rate: %s h · %s", tostring(rc.flat_labor.flat_hours), tostring(rc.flat_labor.op_family or ""))
            end
            if rc.vehicle_ref and rc.vehicle_ref.label then
                bits[#bits + 1] = "Perfil ref: " .. tostring(rc.vehicle_ref.label):sub(1, 48)
            end
            if #bits > 0 then
                dxDrawText(
                    table.concat(bits, "\n"),
                    rx,
                    y0 + ph - 142,
                    px + pw - 12,
                    y0 + ph - 122,
                    COL.muted,
                    0.72,
                    "default",
                    "left",
                    "top",
                    true,
                    false
                )
            end
        end
        ry = y0 + ph - 118
        dxDrawText("Plano de peças:", rx, ry, rx + 200, ry + 16, COL.muted, 0.85, "default")
        ry = ry + 14
        for _, line in ipairs(job.parts_plan or {}) do
            local cat = bootstrap.catalog[line.sku]
            local nm = cat and cat.name or line.sku
            dxDrawText(string.format("%s  x%s  — %s", line.sku, tostring(line.qty), nm), rx, ry, px + pw - 12, ry + 40, COL.text, 0.8, "default", "left", "top", true, false)
            ry = ry + 16
        end

        local label, action = nextActionForState(job.state)
        if label then
            local bx, by, bw, bh2 = rx, y0 + ph - 52, (pw * 0.46), 36
            actionBtnRect = { x = bx, y = by, w = bw, h = bh2, jobId = job.id, action = action }
            dxDrawRectangle(bx, by, bw, bh2, COL.accent)
            dxDrawText(label, bx, by, bx + bw, by + bh2, tocolor(12, 14, 16, 255), 0.95, "default-bold", "center", "center")
        end
    end
end

local function drawInvPanel()
    local y0 = py + 44
    dxDrawRectangle(px + 8, y0, pw - 16, ph - 52, COL.panel)
    local lx = px + 16
    local ly = y0 + 10 - scrollInv
    dxDrawText("SKU", lx, ly, lx + 120, ly + 18, COL.muted, 0.8, "default-bold")
    dxDrawText("Disponível", lx + 200, ly, lx + 280, ly + 18, COL.muted, 0.8, "default-bold")
    dxDrawText("Físico", lx + 300, ly, lx + 380, ly + 18, COL.muted, 0.8, "default-bold")
    dxDrawText("Mínimo", lx + 400, ly, lx + 480, ly + 18, COL.muted, 0.8, "default-bold")
    ly = ly + 20
    for _, row in ipairs(bootstrap.inventory) do
        local low = row.available <= row.reorder_point
        dxDrawText(row.sku, lx, ly, lx + 190, ly + 36, COL.text, 0.78, "default", "left", "top", true, false)
        dxDrawText(tostring(row.available), lx + 200, ly, lx + 290, ly + 20, low and COL.warn or COL.ok, 0.85, "default-bold")
        dxDrawText(tostring(row.on_hand), lx + 300, ly, lx + 380, ly + 20, COL.text, 0.85, "default")
        dxDrawText(tostring(row.reorder_point), lx + 400, ly, lx + 480, ly + 20, COL.muted, 0.85, "default")
        ly = ly + 34
    end
    ly = ly + 16
    dxDrawText("Pedidos em trânsito (simulado):", lx, ly, lx + pw, ly + 20, COL.accent, 0.9, "default-bold")
    ly = ly + 22
    for _, inc in ipairs(bootstrap.inbound or {}) do
        local left = math.max(0, inc.eta_tick - getTickCount())
        dxDrawText(inc.sku .. "  +" .. tostring(inc.qty) .. "  ETA ~" .. string.format("%.1fs", left / 1000), lx, ly, lx + pw - 12, ly + 40, COL.muted, 0.82, "default", "left", "top", true, false)
        ly = ly + 18
    end
end

local function drawLogPanel()
    local y0 = py + 44
    dxDrawRectangle(px + 8, y0, pw - 16, ph - 52, COL.panel)
    local lx = px + 14
    local ly = y0 + 10 - scrollLog
    for i = #logEntries, 1, -1 do
        local e = logEntries[i]
        local col = COL.muted
        if e.level >= LOG_LEVEL.ERROR then col = COL.err elseif e.level >= LOG_LEVEL.WARN then col = COL.warn end
        local head = string.format("#%d [%s] %s", e.id, LOG_LEVEL_NAME[e.level] or "?", e.category or "")
        dxDrawText(head, lx, ly, lx + pw - 20, ly + 40, col, 0.78, "default-bold", "left", "top", true, false)
        ly = ly + 14
        dxDrawText(e.message or "", lx + 6, ly, lx + pw - 24, ly + 60, COL.text, 0.75, "default", "left", "top", true, false)
        ly = ly + 28
    end
end

local function drawFrame()
    dxDrawRectangle(px - 4, py - 4, pw + 8, ph + 8, tocolor(0, 0, 0, 180))
    panelBg(px, py, pw, ph)
    dxDrawText("MECHANIC PRO — integração painel / estoque / auditoria", px + 12, py + 8, px + pw, py + 36, COL.text, 1.1, "default-bold")
    drawTabBar()
    if tab == "os" then drawJobPanel() elseif tab == "inv" then drawInvPanel() else drawLogPanel() end
    if getTickCount() < toast.untilTick and toast.text ~= "" then
        dxDrawRectangle(px + 8, py + ph - 36, pw - 16, 28, tocolor(0, 0, 0, 160))
        dxDrawText(toast.text, px + 12, py + ph - 36, px + pw - 12, py + ph - 8, COL.warn, 0.85, "default", "center", "center", true, false)
    end
end

addEventHandler("onClientRender", root, function()
    if not show then return end
    if isCursorShowing() then
        local cx, cy = getCursorPosition()
        if cx then
            cursorX, cursorY = cx * sw, cy * sh
        end
    end
    drawFrame()
end)

cursorX, cursorY = 0, 0

addEventHandler("onClientClick", root, function(button, state, cx, cy)
    if not show or button ~= "left" or state ~= "down" then return end
    local tw = pw / 3
    for i, id in ipairs({ "os", "inv", "log" }) do
        local x = px + (i - 1) * tw
        if inBox(cx, cy, x, py, tw, 36) then
            tab = id
            return
        end
    end
    if tab == "os" then
        local y0 = py + 44 + 26 + 8
        for _, r in ipairs(jobClickRects) do
            if inBox(cx, cy, r.x, r.y, r.w, r.h) then
                selectedJobId = r.id
                return
            end
        end
        if actionBtnRect and inBox(cx, cy, actionBtnRect.x, actionBtnRect.y, actionBtnRect.w, actionBtnRect.h) then
            if actionBtnRect.action == "LABOR_TICK" then
                triggerServerEvent("mechanic:tickLabor", localPlayer, actionBtnRect.jobId)
            else
                triggerServerEvent("mechanic:jobTransition", localPlayer, actionBtnRect.jobId, actionBtnRect.action)
            end
        end
    end
end)

bindKey("F2", "down", function()
    show = not show
    showCursor(show)
    if show then
        triggerServerEvent("mechanic:requestBootstrap", localPlayer)
    end
end)

local famPick = VEHICLE_FAMILY.SEDAN
local function rndPlate()
    local L = "ABCDEFGHJKLMNPQRSTUVWXYZ"
    local n = tostring(math.random(0, 9))
    return L:sub(math.random(1, #L), math.random(1, #L))
        .. L:sub(math.random(1, #L), math.random(1, #L))
        .. L:sub(math.random(1, #L), math.random(1, #L))
        .. n
        .. L:sub(math.random(1, #L), math.random(1, #L))
        .. n
        .. n
end

bindKey("F3", "down", function() famPick = VEHICLE_FAMILY.COMPACT end)
bindKey("F4", "down", function() famPick = VEHICLE_FAMILY.SEDAN end)
bindKey("F5", "down", function() famPick = VEHICLE_FAMILY.SUV end)
bindKey("F6", "down", function() famPick = VEHICLE_FAMILY.SPORT end)
bindKey("F7", "down", function() famPick = VEHICLE_FAMILY.COMMERCIAL end)
bindKey("F8", "down", function() famPick = VEHICLE_FAMILY.MOTORCYCLE end)
bindKey("F9", "down", function()
    if not show then return end
    triggerServerEvent("mechanic:createJob", localPlayer, rndPlate(), famPick, math.random(20000, 200000))
end)

bindKey("F10", "down", function()
    if not show or not selectedJobId then return end
    triggerServerEvent("mechanic:cancelJob", localPlayer, selectedJobId)
    selectedJobId = nil
end)

bindKey("mouse_wheel_up", "down", function()
    if not show then return end
    if tab == "log" then scrollLog = math.max(0, scrollLog - 24) end
    if tab == "inv" then scrollInv = math.max(0, scrollInv - 24) end
end)
bindKey("mouse_wheel_down", "down", function()
    if not show then return end
    if tab == "log" then scrollLog = scrollLog + 24 end
    if tab == "inv" then scrollInv = scrollInv + 24 end
end)

addEventHandler("mechanic:onBootstrap", root, function(payload)
    bootstrap = payload or bootstrap
end)

addEventHandler("mechanic:onJobUpsert", root, function(dto)
    if not dto then return end
    local found = false
    for i, j in ipairs(bootstrap.jobs) do
        if j.id == dto.id then
            bootstrap.jobs[i] = dto
            found = true
            break
        end
    end
    if not found then
        bootstrap.jobs[#bootstrap.jobs + 1] = dto
    end
end)

addEventHandler("mechanic:onJobRemoved", root, function(jobId)
    for i = #bootstrap.jobs, 1, -1 do
        if bootstrap.jobs[i].id == jobId then
            table.remove(bootstrap.jobs, i)
        end
    end
end)

addEventHandler("mechanic:onInventory", root, function(inv, inbound)
    bootstrap.inventory = inv or bootstrap.inventory
    bootstrap.inbound = inbound or bootstrap.inbound
end)

addEventHandler("mechanic:onAuditSlice", root, function(entries)
    logEntries = entries or {}
end)

addEventHandler("mechanic:onActionResult", root, function(res)
    if res and not res.ok and res.err then
        toastMsg("Falha: " .. tostring(res.err), 4200)
    end
end)

addEventHandler("mechanic:demoOpenPanel", root, function()
    show = true
    showCursor(true)
    triggerServerEvent("mechanic:requestBootstrap", localPlayer)
end)

addEventHandler("mechanic:demoSetTab", root, function(t)
    if type(t) == "string" and (t == "os" or t == "inv" or t == "log") then
        tab = t
    end
end)

outputChatBox("[MechanicPro] F2 painel | F11 demo | F3-F8 família | F9 nova OS | F10 cancelar", 0, 200, 200)
