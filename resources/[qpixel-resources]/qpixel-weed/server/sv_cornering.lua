RPC.register("qpixel-weed:startCorner", function(pSource, pCoords)
    print("Coords", pCoords)
    return true
end)

RPC.register("qpixel-weed:cornerPed", function(pSource, pCoords, pPed, pVehicle)
    TriggerClientEvent("qpixel-weed:cornerPed", pSource, pPed, pCoords, pVehicle)
    return true
end)

RPC.register("qpixel-weed:cornerSyncHandoff", function(pSource, pCoords, pPed)
    TriggerClientEvent("qpixel-weed:cornerSyncHandoff", pSource, pPed)
    return true
end)

RPC.register("qpixel-weed:cornerSale", function(pSource, pCoords, pNetId, CurrentCornerZone, baggieInfo)
    print("cornerSale", json.encode(pCoords), pNetId, CurrentCornerZone, json.encode(baggieInfo))
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)

    TriggerClientEvent("inventory:removeItem", -1, "weedbaggie", 1)

    exports["qpixel-log"]:AddLog("Weed", 
        source, "Corner Sale", { type = "weedbaggie", amount = tostring(1)})
    return true
end)

RPC.register("qpixel-weed:prepareBaggies", function(pSource, pInfo)
    TriggerClientEvent("inventory:removeItem", -1, "emptybaggies", CornerConfig.BaggiesPerBrick)
    exports["qpixel-log"]:AddLog("Weed", 
        source, "Corner Sale", { type = "emptybaggies", amount = tostring(1)})
    return true
end)

RPC.register("qpixel-weed:stopCorner", function(pSource)
    return false
end)