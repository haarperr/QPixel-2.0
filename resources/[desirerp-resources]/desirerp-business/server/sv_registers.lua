RPC.register("PriceWithTaxString", function(pSource, pCost, pType)
    local type = pType
    local cost = tonumber(pCost)
    local amount = 15
    if type == "Goods" then
        local tax = math.ceil(cost / 100 * amount)
        local total = cost + tax
        local taxString = tostring(total) .. " Incl. " .. tostring(amount) .. "% tax" 
        return {cost = total, text = taxString, tax = tax}
    end
end)

function taxTotal(pCost)
    local amount = 15
    local tax = math.ceil(pCost / 100 * amount) + pCost
    return tax
end

exports('taxTotal',taxTotal)

RPC.register("desirerp-business:startPurchase", function(pSource, pData)
    local source = pSource
    local data = pData
    local insert = {
        charger = source, 
        cost = data.cost, 
        comment = data.comment,
        registerId = data.registerId,
        business = data.business
    }
    TriggerClientEvent("desirerp-business:activePurchase", -1, insert)
end)

RPC.register("desirerp-business:completePurchase", function(pSource, pData)
    -- here we need to grab tax amount, and add to state account
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local data = pData
    local amount = data.cost
    local tax = data.tax -- tax amount taken, and added to the state account

    local getInfoByCID = Await(SQL.execute("SELECT cash, bank FROM characters WHERE id = @id", {
        ["id"] = char.id
    }))

    if data.cash == true then
        if not (tonumber(getInfoByCID[1].cash) > tonumber(amount)) then return false, "You can't afford this purchase" end
        user:removeMoney(tonumber(amount))
    else
        if not (tonumber(getInfoByCID[1].bank) > tonumber(amount)) then return false, "You can't afford this purchase" end
        user:removeBank(tonumber(amount))
    end

    local owner = exports["desirerp-base"]:getModule("Player"):GetUser(data.charger)
    local char = owner:getCurrentCharacter()
    information = {
        ["Price"] = tonumber(amount),
        ["Creator"] = char.first_name .. " " ..char.last_name,
        ["Comment"] = data.comment
    }
    TriggerClientEvent("player:receiveItem", data.charger, "ownerreceipt", 1, true, information)
    local getBizNameByID = Await(SQL.execute("SELECT business_name FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = data.business
    }))
    local businessname = getBizNameByID[1].business_name
    local comment = "Thanks for your order at " .. businessname

    local insert = {
    registerId = data.registerId
    }

    local newAmount = format_int(tonumber(amount))

    local message = "$" .. tostring(newAmount) .. " was withdrawn from your account."

    TriggerClientEvent("desirerp-business:closePurchase", -1, insert)

    TriggerClientEvent('desirerp-phone:businessRegisterNoti', pSource, "SERVICE CHARGE", message)

    exports.oxmysql:execute("SELECT `bank` FROM `businesses` WHERE business_name = @pBizName", {['@pBizName'] = businessname}, function(pValues)
        exports.oxmysql:execute('UPDATE `businesses` SET `bank` = @newAmt WHERE `business_name` = @bizName', {
            ['@newAmt'] = pValues[1].bank + amount, ['@bizName'] = businessname
        }, function()
        end)
    end)
    return true
end)