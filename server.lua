local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Server-side initialization code here

-- Example server event handler
RegisterNetEvent('fivemscript:serverEvent')
AddEventHandler('fivemscript:serverEvent', function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer then
        -- Handle server event data
        print('Received server event from player ' .. xPlayer.identifier .. ' with data: ' .. json.encode(data))

        -- Example database operation
        MySQL.Async.execute('INSERT INTO ' .. Config.Database.TableName .. ' (player_id, data) VALUES (@player_id, @data)', {
            ['@player_id'] = xPlayer.identifier,
            ['@data'] = json.encode(data)
        }, function(rowsChanged)
            if rowsChanged > 0 then
                print('Data inserted successfully')
            else
                print('Failed to insert data')
            end
        end)
    end
end)