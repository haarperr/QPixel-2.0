RegisterServerEvent('qpixel-vehicles:ApplyNitrous')
AddEventHandler('qpixel-vehicles:ApplyNitrous', function()
     TriggerClientEvent("qpixel-nitro:client:placeNitro", source)
end) 

RegisterServerEvent('qpixel-nitro:server:particlefx')
AddEventHandler('qpixel-nitro:server:particlefx', function(veh)
     TriggerClientEvent('qpixel-nitro:client:particlefx', -1, veh)
end)

RegisterServerEvent('qpixel-nitro:server:particlefisfis')
AddEventHandler('qpixel-nitro:server:particlefisfis', function(type, veh)
     if type == 'fisfisacc' then
          TriggerClientEvent('qpixel-nitro:client:particlefisfis', -1, 'fisfisac', veh)
     elseif type == 'fisfiskapatt' then
          TriggerClientEvent('qpixel-nitro:client:particlefisfis', -1, 'fisfiskapat', veh)
     end
end)