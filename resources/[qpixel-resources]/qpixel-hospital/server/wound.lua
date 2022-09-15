local playerInjury = {}

function GetCharsInjuries(source)
    return playerInjury[source]
end

RegisterServerEvent('qpixel-hospital:server:SyncInjuries')
AddEventHandler('qpixel-hospital:server:SyncInjuries', function(data)
    playerInjury[source] = data
end)