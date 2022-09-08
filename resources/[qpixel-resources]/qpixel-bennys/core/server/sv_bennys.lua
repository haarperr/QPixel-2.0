local hmm = vehicleBaseRepairCost

RegisterServerEvent('qpixel-bennys:attemptPurchase')
AddEventHandler('qpixel-bennys:attemptPurchase', function(cheap, type, upgradeLevel)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    if type == "repair" then
        if user:getCash() >= hmm then
            user:removeMoney(hmm)
            TriggerClientEvent('qpixel-bennys:purchaseSuccessful', src)

            exports["qpixel-log"]:AddLog("Bennys", 
                src, 
                "Repair", 
                { amount = tostring(hmm) })
        else
            TriggerClientEvent('qpixel-bennys:purchaseFailed', src)
        end
    elseif type == "performance" then
        if user:getCash() >= vehicleCustomisationPrices[type].prices[upgradeLevel] then
            TriggerClientEvent('qpixel-bennys:purchaseSuccessful', src)
            user:removeMoney(vehicleCustomisationPrices[type].prices[upgradeLevel])

            exports["qpixel-log"]:AddLog("Bennys", 
                src, 
                "Performance", 
                { amount = tostring(vehicleCustomisationPrices[type].prices[upgradeLevel]) })
        else
            TriggerClientEvent('qpixel-bennys:purchaseFailed', src)
        end
    else
        if user:getCash() >= vehicleCustomisationPrices[type].price then
            TriggerClientEvent('qpixel-bennys:purchaseSuccessful', src)
            user:removeMoney(vehicleCustomisationPrices[type].price)

            exports["qpixel-log"]:AddLog("Bennys", 
                src, 
                "Other", 
                { type = tostring(type), amount = tostring(vehicleCustomisationPrices[type].price) })
        else
            TriggerClientEvent('qpixel-bennys:purchaseFailed', src)
        end
    end
end)

RegisterServerEvent('qpixel-bennys:updateRepairCost')
AddEventHandler('qpixel-bennys:updateRepairCost', function(cost)
    hmm = cost
end)

RegisterServerEvent('qpixel-bennys:repairciv')
AddEventHandler('qpixel-bennys:repairciv', function(amount)
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    if (user:getCash() >= amount) then
        user:removeMoney(amount)
        TriggerClientEvent("bennys:civ:repair:cl", src)

        exports["qpixel-log"]:AddLog("Bennys", 
            src, 
            "Repair Civ", 
            { amount = tostring(amount) })
    end
end)

RegisterServerEvent('qpixel-bennys:payPublicBennys')
AddEventHandler('qpixel-bennys:payPublicBennys', function()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)

    if user:getCash() >= 250 then
        user:removeMoney(250)
        TriggerClientEvent('qpixel-bennys:repairVeh', src)
        TriggerEvent('DoLongHudText', "You Have Been Charged For: $750!", 2)
    else
        TriggerClientEvent('DoLongHudText', src, 'You need $750', 2)
    end
end)
