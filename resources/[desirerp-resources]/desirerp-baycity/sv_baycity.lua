RegisterServerEvent("desirerp-baycity:getGetDoorStateSV")
AddEventHandler("desirerp-baycity:getGetDoorStateSV", function()
    TriggerClientEvent('desirerp-baycity:getDoorCheckCL', -1, doorCheckbaycity)
end)

RegisterServerEvent("desirerp-particleserverbaycity")
AddEventHandler("desirerp-particleserverbaycity", function(method)
    TriggerClientEvent("desirerp-ptfxparticlebaycity", -1, method)
end)

RegisterServerEvent("desirerp-particleserverbaycity1")
AddEventHandler("desirerp-particleserverbaycity1", function(method)
    TriggerClientEvent("desirerp-ptfxparticlebaycity1", -1, method)
end)
