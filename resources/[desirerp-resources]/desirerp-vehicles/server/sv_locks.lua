RegisterServerEvent('desirerp-keys:attemptLockSV')
AddEventHandler('desirerp-keys:attemptLockSV', function(targetVehicle, plate)
    TriggerClientEvent('desirerp-keys:attemptLock', source, targetVehicle, plate)
end)