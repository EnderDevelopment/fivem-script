local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Client-side initialization code here
end)

-- Example client event handler
RegisterNetEvent('fivemscript:clientEvent')
AddEventHandler('fivemscript:clientEvent', function(data)
    -- Handle client event data
    print('Received client event with data: ' .. json.encode(data))
end)