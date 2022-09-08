RegisterServerEvent('qpixel-keys:attemptLockSV')
AddEventHandler('qpixel-keys:attemptLockSV', function(targetVehicle, plate)
    TriggerClientEvent('qpixel-keys:attemptLock', source, targetVehicle, plate)
end)