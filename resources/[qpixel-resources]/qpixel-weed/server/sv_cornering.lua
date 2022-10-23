RPC.register("qpixel-weed:startCorner", function(pSource, pCoords)
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
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    TriggerClientEvent("inventory:removeItem", -1, "weedbaggie", 1)
        if math.random (1,5) < 3 then
            user:addMoney(math.random(450,2500))
        end
    return true
end)

RPC.register("qpixel-weed:prepareBaggies", function(pSource, pInfo)
    TriggerClientEvent("inventory:removeItem", -1, "emptybaggies", CornerConfig.BaggiesPerBrick)
    return true
end)

RPC.register("qpixel-weed:stopCorner", function(pSource)
    TriggerLatentClientEvent('qpixel-weed:cleanCornerPeds',pSource)
    return false
end)