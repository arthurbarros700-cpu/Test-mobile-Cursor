--[[ Spartan Mechanic — cliente: NUI + comandos + ações estendidas ]]

local uiOpen = false

local function setUi(open)
    uiOpen = open
    SetNuiFocus(open, open)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({ action = open and 'open' or 'close' })
    if open then
        TriggerServerEvent('spartan_mechanic:requestOpen')
    end
end

RegisterCommand(Config.OpenCommand, function()
    if uiOpen then
        setUi(false)
    else
        setUi(true)
    end
end, false)

RegisterKeyMapping(Config.OpenCommand, 'Spartan — Painel da oficina', 'keyboard', 'F6')

RegisterNetEvent('spartan_mechanic:state', function(payload)
    if type(payload) ~= 'table' then return end
    SendNUIMessage({ action = 'bootstrap', data = payload })
end)

RegisterNetEvent('spartan_mechanic:notify', function(kind, msg)
    SendNUIMessage({ action = 'toast', kind = kind, message = msg })
end)

RegisterNetEvent('spartan_mechanic:actionResult', function(ok, err)
    SendNUIMessage({ action = 'actionResult', ok = ok, err = err })
end)

RegisterNetEvent('spartan_mechanic:jobRemoved', function(jobId)
    SendNUIMessage({ action = 'jobRemoved', jobId = jobId })
end)

RegisterNetEvent('spartan_mechanic:clipboard', function(text)
    SendNUIMessage({ action = 'clipboard', text = text })
end)

RegisterNUICallback('close', function(_, cb)
    setUi(false)
    cb('ok')
end)

RegisterNUICallback('createJob', function(data, cb)
    TriggerServerEvent('spartan_mechanic:createJob', data.plate, data.family, tonumber(data.mileage))
    cb('ok')
end)

RegisterNUICallback('transition', function(data, cb)
    TriggerServerEvent('spartan_mechanic:transition', data.jobId, data.newState)
    cb('ok')
end)

RegisterNUICallback('tickLabor', function(data, cb)
    TriggerServerEvent('spartan_mechanic:tickLabor', data.jobId)
    cb('ok')
end)

RegisterNUICallback('cancelJob', function(data, cb)
    TriggerServerEvent('spartan_mechanic:cancelJob', data.jobId)
    cb('ok')
end)

RegisterNUICallback('spartanExtended', function(d, cb)
    TriggerServerEvent('spartan_mechanic:feat_extended', d.op, d.args or {})
    cb('ok')
end)

RegisterNUICallback('spartanAction', function(d, cb)
    local t = d and d.type
    if t == 'note' then
        TriggerServerEvent('spartan_mechanic:feat_note', d.jobId, d.text)
    elseif t == 'customer' then
        TriggerServerEvent('spartan_mechanic:feat_customer', d.jobId, d.name, d.phone)
    elseif t == 'priority' then
        TriggerServerEvent('spartan_mechanic:feat_priority', d.jobId, d.prio)
    elseif t == 'bay' then
        TriggerServerEvent('spartan_mechanic:feat_bay', d.jobId, d.bay)
    elseif t == 'flag' then
        TriggerServerEvent('spartan_mechanic:feat_flag', d.jobId, d.flag)
    elseif t == 'task_add' then
        TriggerServerEvent('spartan_mechanic:feat_task_add', d.jobId, d.title)
    elseif t == 'task_done' then
        TriggerServerEvent('spartan_mechanic:feat_task_done', d.jobId, d.taskId)
    elseif t == 'vin' then
        TriggerServerEvent('spartan_mechanic:feat_vin', d.jobId, d.vin)
    elseif t == 'shop_hours' then
        TriggerServerEvent('spartan_mechanic:feat_shop_hours', d.jobId, tonumber(d.hours))
    elseif t == 'estimate' then
        TriggerServerEvent('spartan_mechanic:feat_estimate', d.jobId, tonumber(d.labor), tonumber(d.parts))
    elseif t == 'paid' then
        TriggerServerEvent('spartan_mechanic:feat_paid', d.jobId, d.paid == true)
    elseif t == 'warranty' then
        TriggerServerEvent('spartan_mechanic:feat_warranty', d.jobId, tonumber(d.days))
    elseif t == 'plan_add' then
        TriggerServerEvent('spartan_mechanic:feat_plan_add', d.jobId, d.sku, tonumber(d.qty))
    elseif t == 'plan_remove' then
        TriggerServerEvent('spartan_mechanic:feat_plan_remove', d.jobId, tonumber(d.index))
    elseif t == 'plan_oil' then
        TriggerServerEvent('spartan_mechanic:feat_plan_oil', d.jobId)
    elseif t == 'plan_brake' then
        TriggerServerEvent('spartan_mechanic:feat_plan_brake', d.jobId)
    elseif t == 'plan_clear' then
        TriggerServerEvent('spartan_mechanic:feat_plan_clear', d.jobId)
    elseif t == 'inv_receive' then
        TriggerServerEvent('spartan_mechanic:feat_inv_receive', d.sku, tonumber(d.qty))
    elseif t == 'inv_adjust' then
        TriggerServerEvent('spartan_mechanic:feat_inv_adjust', d.sku, tonumber(d.delta), d.reason)
    elseif t == 'inv_cycle' then
        TriggerServerEvent('spartan_mechanic:feat_inv_cycle', d.sku, tonumber(d.counted))
    elseif t == 'inbound_pop' then
        TriggerServerEvent('spartan_mechanic:feat_inbound_pop')
    elseif t == 'inbound_clear' then
        TriggerServerEvent('spartan_mechanic:feat_inbound_clear')
    elseif t == 'diag_finding' then
        TriggerServerEvent('spartan_mechanic:feat_diag_finding', d.jobId, d.line)
    elseif t == 'diag_dtc' then
        TriggerServerEvent('spartan_mechanic:feat_diag_dtc', d.jobId, d.code)
    elseif t == 'qc_reinspect' then
        TriggerServerEvent('spartan_mechanic:feat_qc_reinspect', d.jobId)
    elseif t == 'duplicate' then
        TriggerServerEvent('spartan_mechanic:feat_duplicate', d.jobId)
    elseif t == 'seed_demo' then
        TriggerServerEvent('spartan_mechanic:feat_seed_demo')
    elseif t == 'report_console' then
        TriggerServerEvent('spartan_mechanic:feat_report_console')
    elseif t == 'po' then
        TriggerServerEvent('spartan_mechanic:feat_po', d.sku, tonumber(d.qty))
    elseif t == 'export_csv' then
        TriggerServerEvent('spartan_mechanic:feat_export_csv')
    end
    cb('ok')
end)

RegisterCommand('spartan_mechanic_close', function()
    if uiOpen then setUi(false) end
end, false)
