RPC.register("desirerp-weed:startCorner", function(pSource, pCoords)
    print("Coords", pCoords)
    return true
end)

RPC.register("desirerp-weed:cornerPed", function(pSource, pCoords, pPed, pVehicle)
    TriggerClientEvent("desirerp-weed:cornerPed", pSource, pPed, pCoords, pVehicle)
    return true
end)

RPC.register("desirerp-weed:cornerSyncHandoff", function(pSource, pCoords, pPed)
    TriggerClientEvent("desirerp-weed:cornerSyncHandoff", pSource, pPed)
    return true
end)

RPC.register("desirerp-weed:cornerSale", function(pSource, pCoords, pNetId, CurrentCornerZone, baggieInfo)
    print("cornerSale", json.encode(pCoords), pNetId, CurrentCornerZone, json.encode(baggieInfo))
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(pSource)

    TriggerClientEvent("inventory:removeItem", -1, "weedbaggie", 1)

    exports["desirerp-log"]:AddLog("Weed", 
        source, "Corner Sale", { type = "weedbaggie", amount = tostring(1)})
    return true
end)

RPC.register("desirerp-weed:prepareBaggies", function(pSource, pInfo)
    TriggerClientEvent("inventory:removeItem", -1, "emptybaggies", CornerConfig.BaggiesPerBrick)
    exports["desirerp-log"]:AddLog("Weed", 
        source, "Corner Sale", { type = "emptybaggies", amount = tostring(1)})
    return true
end)

RPC.register("desirerp-weed:stopCorner", function(pSource)
    return false
end)