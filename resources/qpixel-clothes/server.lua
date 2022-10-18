RegisterServerEvent('qpixel-clothes:saveSkin')
AddEventHandler('qpixel-clothes:saveSkin', function(skin)
    local src = source
    local user = exports['qpixel-base']:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local query = MySQL.query.await([[
        SELECT * FROM playerskins WHERE citizenid = ?
    ]], {char.id})
    if query[1] then
        exports.oxmysql:execute("DELETE from playerskins WHERE citizenid = ?",{char.id})
        exports.oxmysql:insert('INSERT INTO playerskins (citizenid, model, skin, active) VALUES (:citizenid, :model, :skin, :active) ON DUPLICATE KEY UPDATE skin = :skin', {
            citizenid = char.id,
            model = skin.model,
            active = 1,
            skin = json.encode(skin)
        })
    else
        exports.oxmysql:insert('INSERT INTO playerskins (citizenid, model, skin, active) VALUES (:citizenid, :model, :skin, :active) ON DUPLICATE KEY UPDATE skin = :skin', {
            citizenid = char.id,
            model = skin.model,
            active = 1,
            skin = json.encode(skin)
        })
    end
end)

RegisterServerEvent('qpixel-clothes:loadPlayerSkin')
AddEventHandler('qpixel-clothes:loadPlayerSkin', function(ped)
    local src = source
    local user = exports['qpixel-base']:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local result = exports.oxmysql:executeSync('SELECT * FROM playerskins WHERE citizenid = ?', { char.id })
    print(char.id)
    print(json.encode(result))

    if result[1] ~= nil then
        print("Loading skin 1")
        TriggerClientEvent("qpixel-clothes:loadSkin", src, ped, json.decode(result[1].skin))
    else
        print("Loading skin 2")
        TriggerClientEvent("qpixel-clothes:loadSkin", src)
    end
end)

RPC.register('qpixel-clothes:getCosts', function(source, type, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.money[type] >= tonumber(amount) then
        return true
    else
        return false
    end
end)

RPC.register("qpixel-clothes:getTextureNames", function(source, name)
    local data = LoadResourceFile(GetCurrentResourceName(), "./client/names.json")
    data = json.decode(data)

    if data then
        return data[1][name]
    else 
        return {}
    end
end)

RPC.register("qpixel-clothes:getPlayerGender", function(pSource)
    local user = exports['qpixel-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    return char.gender
end)

--[[ RPC.register("qpixel-clothes:purchaseClothes", function(pSource, pType, pAmount)
    local user = exports['qpixel-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    --user:getBalance()
    if pType == "cash" then
        if user:getCash() >= tonumber(pAmount) then
            user:removeCash(tonumber(pAmount))
            return true
        end 
        return false
    elseif pType == "bank" then
        if user:getBalance() >= tonumber(pAmount) then
            user:removeBank(tonumber(pAmount))
            return true
        end
        return false
    end
end) ]]

RPC.register("qpixel-clothes:purchaseClothes",function(pSource, pType, pAmount)
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    if user:getCash() >= pAmount then
        user:removeMoney(pAmount)
    else
        TriggerClientEvent('DoLongHudText', src, 'You do not have enough money ! Required Ammount : $200', 2)
    end
    return true
end)
