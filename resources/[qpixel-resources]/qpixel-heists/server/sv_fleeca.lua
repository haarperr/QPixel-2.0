cooldownglobal = 0
Available = true

RegisterServerEvent("qpixel-fleeca:startcheck")
AddEventHandler("qpixel-fleeca:startcheck", function(bank)
    local _source = source
    globalonaction = true
    TriggerClientEvent('inventory:removeItem', _source, 'hacklaptop', 1)
    TriggerClientEvent("qpixel-fleeca:outcome", _source, true, bank)
end)

RegisterServerEvent("qpixel-fleeca:TimePoggers")
AddEventHandler("qpixel-fleeca:TimePoggers", function()
    local _source = source
    TriggerClientEvent("qpixel-fleeca:outcome", _source, false, "A bank as been recently robbed. You need to wait "..math.floor((fleeca.cooldown - (os.time() - cooldownglobal)) / 60)..":"..math.fmod((fleeca.cooldown - (os.time() - cooldownglobal)), 60))
end)

RegisterServerEvent("qpixel-fleeca:DoorAccessPoggers")
AddEventHandler("qpixel-fleeca:DoorAccessPoggers", function()
    local _source = source
    TriggerClientEvent("qpixel-fleeca:outcome", _source, false, "There is a bank currently being robbed.")
end)

RegisterServerEvent("qpixel-fleeca:lootup")
AddEventHandler("qpixel-fleeca:lootup", function(var, var2)
    TriggerClientEvent("qpixel-fleeca:lootup_c", -1, var, var2)
end)

RegisterServerEvent("qpixel-fleeca:openDoor")
AddEventHandler("qpixel-fleeca:openDoor", function(coords, method)
    TriggerClientEvent("qpixel-fleeca:openDoor_c", -1, coords, method)
end)

RegisterServerEvent("qpixel-fleeca:startLoot")
AddEventHandler("qpixel-fleeca:startLoot", function(data, name)
    TriggerClientEvent("qpixel-fleeca:startLoot_c", -1, data, name)
end)

RegisterServerEvent("qpixel-fleeca:stopHeist")
AddEventHandler("qpixel-fleeca:stopHeist", function(name)
    TriggerClientEvent("qpixel-fleeca:stopHeist_c", -1, name)
end)

RegisterServerEvent("qpixel-fleeca:rewardCash")
AddEventHandler("qpixel-fleeca:rewardCash", function()
    local reward = math.random(1, 2)
    local mathfunc = math.random(200)
    local rare = math.random(1,1)
    
    if mathfunc == 15 then
      TriggerClientEvent('qpixel-user:receiveItem', source, 'heistusb4', 1)
    end
    TriggerClientEvent("qpixel-user:receiveItem", source, "band", reward)
end)

RegisterServerEvent("qpixel-fleeca:setCooldown")
AddEventHandler("qpixel-fleeca:setCooldown", function(name)
    cooldownglobal = os.time()
    globalonaction = false
    TriggerClientEvent("qpixel-fleeca:resetDoorState", -1, name)
end)

RegisterServerEvent("qpixel-fleeca:getBanksSV")
AddEventHandler("qpixel-fleeca:getBanksSV", function()
    local banks = fleeca.Banks
    TriggerClientEvent('qpixel-fleeca:getBanks', -1, fleeca.Banks)
end)

local cooldownAttempts = 5

RegisterServerEvent("qpixel-fleeca:getHitSV")
AddEventHandler("qpixel-fleeca:getHitSV", function()
    TriggerClientEvent('qpixel-fleeca:getHit', -1, cooldownAttempts)
end)

RegisterServerEvent("qpixel-fleeca:getHitSVSV")
AddEventHandler("qpixel-fleeca:getHitSVSV", function(fleecaBanksTimes)
    cooldownAttempts = fleecaBanksTimes
end)

local doorCheckFleeca = false

RegisterServerEvent("qpixel-fleeca:getGetDoorStateSV")
AddEventHandler("qpixel-fleeca:getGetDoorStateSV", function()
    TriggerClientEvent('qpixel-fleeca:getDoorCheckCL', -1, doorCheckFleeca)
end)

RegisterServerEvent("qpixel-fleeca:getGetDoorStateSVSV")
AddEventHandler("qpixel-fleeca:getGetDoorStateSVSV", function(fleecaBanksDoors)
    doorCheckFleeca = fleecaBanksDoors
end)


RegisterServerEvent("qpixel-fleeca:getTimeSV")
AddEventHandler("qpixel-fleeca:getTimeSV", function()
    TriggerClientEvent('qpixel-fleeca:GetTimeCL', -1, cooldownglobal)
end)

RegisterServerEvent("qpixel-fleeca:getTime2SV")
AddEventHandler("qpixel-fleeca:getTime2SV", function()
    TriggerClientEvent('qpixel-fleeca:GetTime2CL', -1, (os.time() - fleeca.cooldown))
end)

RegisterServerEvent("qpixel-fleeca:getDoorAccessSV")
AddEventHandler("qpixel-fleeca:getDoorAccessSV", function()
    TriggerClientEvent('qpixel-fleeca:GetDoorAccessCL', -1, globalonaction)
end)

RegisterServerEvent('charge:fleeca')
AddEventHandler('charge:fleeca', function(amount, bankname)
  local _source = source
  local user = exports["qpixel-base"]:getModule("Player"):GetUser(source)

    if user:getCash() >= amount then
        user:removeMoney(amount)
        TriggerClientEvent('aspect:bankemail', source, bankname)
    else
        TriggerClientEvent('DoLongHudText', source, 'You dont have enough money!', 2)
    end
end)

RegisterServerEvent('qpixel-robbery:server:setBankState')
AddEventHandler('qpixel-robbery:server:setBankState', function(bankId, state)
    if bankId == "pacific" then
       print('[QUEER]')
    else
        if not robberyBusy then
            Config.SmallBanks[bankId]["isOpened"] = state
            TriggerClientEvent('qpixel-robbery:client:setBankState', -1, bankId, state)
            TriggerEvent('qpixel-robbery:server:SetSmallbankTimeout', bankId)
            TriggerEvent('aspect:bankstore', bankId, state)
        end
    end
    robberyBusy = true
end)

RegisterServerEvent('qpixel-robbery:server:SetSmallbankTimeout')
 AddEventHandler('qpixel-robbery:server:SetSmallbankTimeout', function(BankId)
     if not robberyBusy then
        Citizen.Wait(3600000)
        Config.SmallBanks[BankId]["isOpened"] = false
        timeOut = false
        robberyBusy = false
        TriggerClientEvent('qpixel-robbery:client:ResetFleecaLockers', -1, BankId)
        TriggerEvent('lh-banking:server:SetBankClosed', BankId, false)
     end
 end)


local Loot = false

RegisterServerEvent('qpixel-fleeca:tut_tut')
AddEventHandler('qpixel-fleeca:tut_tut', function()
    local src = source
    if not Loot then
        Loot = true
        TriggerClientEvent('qpixel-fleeca:grab', src)
        Citizen.Wait(40000)
        Loot = false
    end
end)

RegisterServerEvent('voidrp-heists:fleeca_availability')
AddEventHandler('voidrp-heists:fleeca_availability', function()
    local src = source
    
    if Available then
        TriggerClientEvent('qpixel-heists:fleeca_available', src)
    else
        TriggerClientEvent('qpixel-heists:fleeca_unavailable', src)
    end
end)

RegisterServerEvent('qpixel-heists:fleecaBankLog')
AddEventHandler('qpixel-heists:fleecaBankLog', function()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** qpixel [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing a Fleeca Bank",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/1012083008263684217/pt-XMDUWT8y93DpqGme9uMX_5RfXUmg1xCJxzaps92t0wfR4WcMq9FXRD2jIr7Kf81WW", function(err, text, headers) end, 'POST', json.encode({username = "qpixel | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)