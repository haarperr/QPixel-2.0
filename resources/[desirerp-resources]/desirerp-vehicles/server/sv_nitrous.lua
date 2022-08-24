RegisterServerEvent('desirerp-vehicles:ApplyNitrous')
AddEventHandler('desirerp-vehicles:ApplyNitrous', function()
     TriggerClientEvent("desirerp-nitro:client:placeNitro", source)
end) 

RegisterServerEvent('desirerp-nitro:server:particlefx')
AddEventHandler('desirerp-nitro:server:particlefx', function(veh)
     TriggerClientEvent('desirerp-nitro:client:particlefx', -1, veh)
end)

RegisterServerEvent('desirerp-nitro:server:particlefisfis')
AddEventHandler('desirerp-nitro:server:particlefisfis', function(type, veh)
     if type == 'fisfisacc' then
          TriggerClientEvent('desirerp-nitro:client:particlefisfis', -1, 'fisfisac', veh)
     elseif type == 'fisfiskapatt' then
          TriggerClientEvent('desirerp-nitro:client:particlefisfis', -1, 'fisfiskapat', veh)
     end
end)