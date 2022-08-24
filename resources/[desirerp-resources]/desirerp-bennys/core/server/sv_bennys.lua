local hmm = vehicleBaseRepairCost

RegisterServerEvent('desirerp-bennys:attemptPurchase')
AddEventHandler('desirerp-bennys:attemptPurchase', function(cheap, type, upgradeLevel)
	local src = source
	local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
    if type == "repair" then
        if user:getCash() >= hmm then
            user:removeMoney(hmm)
            TriggerClientEvent('desirerp-bennys:purchaseSuccessful', src)

            exports["desirerp-log"]:AddLog("Bennys", 
                src, 
                "Repair", 
                { amount = tostring(hmm) })
        else
            TriggerClientEvent('desirerp-bennys:purchaseFailed', src)
        end
    elseif type == "performance" then
        if user:getCash() >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('desirerp-bennys:purchaseSuccessful', src)
            user:removeMoney(vehicleCustomisationPrices[type].prices[upgradeLevel])

            exports["desirerp-log"]:AddLog("Bennys", 
                src, 
                "Performance", 
                { amount = tostring(vehicleCustomisationPrices[type].prices[upgradeLevel]) })
        else
            TriggerClientEvent('desirerp-bennys:purchaseFailed', src)
        end
    else
        if user:getCash() >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('desirerp-bennys:purchaseSuccessful', src)
            user:removeMoney(vehicleCustomisationPrices[type].price)

            exports["desirerp-log"]:AddLog("Bennys", 
                src, 
                "Other", 
                { type = tostring(type), amount = tostring(vehicleCustomisationPrices[type].price) })
        else
            TriggerClientEvent('desirerp-bennys:purchaseFailed', src)
        end
    end
end)

RegisterServerEvent('desirerp-bennys:updateRepairCost')
AddEventHandler('desirerp-bennys:updateRepairCost', function(cost)
    hmm = cost
end)

RegisterServerEvent('desirerp-bennys:repairciv')
AddEventHandler('desirerp-bennys:repairciv', function(amount)
    local src = source
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
    if (user:getCash() >= amount) then
        user:removeMoney(amount)
        TriggerClientEvent("bennys:civ:repair:cl", src)

        exports["desirerp-log"]:AddLog("Bennys", 
            src, 
            "Repair Civ", 
            { amount = tostring(amount) })
    end
end)

RegisterServerEvent('desirerp-bennys:payPublicBennys')
AddEventHandler('desirerp-bennys:payPublicBennys', function()
    local src = source
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)

    if user:getCash() >= 250 then
        user:removeMoney(250)
        TriggerClientEvent('desirerp-bennys:repairVeh', src)
        TriggerEvent('DoLongHudText', "You Have Been Charged For: $750!", 2)
    else
        TriggerClientEvent('DoLongHudText', src, 'You need $750', 2)
    end
end)
