RegisterServerEvent("qpixel-baycity:getGetDoorStateSV")
AddEventHandler("qpixel-baycity:getGetDoorStateSV", function()
    TriggerClientEvent('qpixel-baycity:getDoorCheckCL', -1, doorCheckbaycity)
end)

RegisterServerEvent("qpixel-particleserverbaycity")
AddEventHandler("qpixel-particleserverbaycity", function(method)
    TriggerClientEvent("qpixel-ptfxparticlebaycity", -1, method)
end)

RegisterServerEvent("qpixel-particleserverbaycity1")
AddEventHandler("qpixel-particleserverbaycity1", function(method)
    TriggerClientEvent("qpixel-ptfxparticlebaycity1", -1, method)
end)
