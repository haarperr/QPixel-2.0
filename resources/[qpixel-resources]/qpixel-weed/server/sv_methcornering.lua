RPC.register("qpixel-meth:startCorner", function(pSource, pCoords)
    return true, "Started Cornering!"
end)

RPC.register("qpixel-meth:cornerPed", function(pSource, pCoords, pPed, pVehicle)
    TriggerClientEvent("qpixel-meth:cornerPed", pSource, pPed.param, pCoords.param, pVehicle.param)
    return true
end)

RPC.register("qpixel-meth:cornerSyncHandoff", function(pSource, pCoords, pPed)
    TriggerClientEvent("qpixel-meth:cornerSyncHandoff", -1, pPed.param, pCoords.param)
    return true
end)

RPC.register("qpixel-meth:cornerSale", function(pSource, pCoords, pPed, pZone)
    TriggerClientEvent("qpixel-meth:addCorneredPed", pSource, pPed.param)
    return true
end)