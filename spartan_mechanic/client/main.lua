--[[ Spartan Mechanic — cliente: NUI + comandos ]]

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

RegisterCommand('spartan_mechanic_close', function()
    if uiOpen then setUi(false) end
end, false)
