RPC.register("qpixel-weed:startCorner", function(pSource, pCoords)
    return true, "Started Cornering!"
end)

RPC.register("qpixel-weed:cornerPed", function(pSource, pCoords, pPed, pVehicle)
    TriggerClientEvent("qpixel-weed:cornerPed", pSource, pPed.param, pCoords.param, pVehicle.param)
    return true
end)

RPC.register("qpixel-weed:cornerSyncHandoff", function(pSource, pCoords, pPed)
    TriggerClientEvent("qpixel-weed:cornerSyncHandoff", -1, pPed.param, pCoords.param)
    return true
end)

RPC.register("qpixel-weed:cornerSale", function(pSource, pCoords, pPed, pZone)
    TriggerClientEvent("qpixel-weed:addCorneredPed", pSource, pPed.param)
    return true
end)