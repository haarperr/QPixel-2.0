cooldownglobal = 0
Available = true

RegisterServerEvent("desirerp-fleeca:startcheck")
AddEventHandler("desirerp-fleeca:startcheck", function(bank)
    local _source = source
    globalonaction = true
    TriggerClientEvent('inventory:removeItem', _source, 'hacklaptop', 1)
    TriggerClientEvent("desirerp-fleeca:outcome", _source, true, bank)
end)

RegisterServerEvent("desirerp-fleeca:TimePoggers")
AddEventHandler("desirerp-fleeca:TimePoggers", function()
    local _source = source
    TriggerClientEvent("desirerp-fleeca:outcome", _source, false, "A bank as been recently robbed. You need to wait "..math.floor((fleeca.cooldown - (os.time() - cooldownglobal)) / 60)..":"..math.fmod((fleeca.cooldown - (os.time() - cooldownglobal)), 60))
end)

RegisterServerEvent("desirerp-fleeca:DoorAccessPoggers")
AddEventHandler("desirerp-fleeca:DoorAccessPoggers", function()
    local _source = source
    TriggerClientEvent("desirerp-fleeca:outcome", _source, false, "There is a bank currently being robbed.")
end)

RegisterServerEvent("desirerp-fleeca:lootup")
AddEventHandler("desirerp-fleeca:lootup", function(var, var2)
    TriggerClientEvent("desirerp-fleeca:lootup_c", -1, var, var2)
end)

RegisterServerEvent("desirerp-fleeca:openDoor")
AddEventHandler("desirerp-fleeca:openDoor", function(coords, method)
    TriggerClientEvent("desirerp-fleeca:openDoor_c", -1, coords, method)
end)

RegisterServerEvent("desirerp-fleeca:startLoot")
AddEventHandler("desirerp-fleeca:startLoot", function(data, name)
    TriggerClientEvent("desirerp-fleeca:startLoot_c", -1, data, name)
end)

RegisterServerEvent("desirerp-fleeca:stopHeist")
AddEventHandler("desirerp-fleeca:stopHeist", function(name)
    TriggerClientEvent("desirerp-fleeca:stopHeist_c", -1, name)
end)

RegisterServerEvent("desirerp-fleeca:rewardCash")
AddEventHandler("desirerp-fleeca:rewardCash", function()
    local reward = math.random(1, 2)
    local mathfunc = math.random(200)
    local rare = math.random(1,1)
    
    if mathfunc == 15 then
      TriggerClientEvent('desirerp-user:receiveItem', source, 'heistusb4', 1)
    end
    TriggerClientEvent("desirerp-user:receiveItem", source, "band", reward)
end)

RegisterServerEvent("desirerp-fleeca:setCooldown")
AddEventHandler("desirerp-fleeca:setCooldown", function(name)
    cooldownglobal = os.time()
    globalonaction = false
    TriggerClientEvent("desirerp-fleeca:resetDoorState", -1, name)
end)

RegisterServerEvent("desirerp-fleeca:getBanksSV")
AddEventHandler("desirerp-fleeca:getBanksSV", function()
    local banks = fleeca.Banks
    TriggerClientEvent('desirerp-fleeca:getBanks', -1, fleeca.Banks)
end)

local cooldownAttempts = 5

RegisterServerEvent("desirerp-fleeca:getHitSV")
AddEventHandler("desirerp-fleeca:getHitSV", function()
    TriggerClientEvent('desirerp-fleeca:getHit', -1, cooldownAttempts)
end)

RegisterServerEvent("desirerp-fleeca:getHitSVSV")
AddEventHandler("desirerp-fleeca:getHitSVSV", function(fleecaBanksTimes)
    cooldownAttempts = fleecaBanksTimes
end)

local doorCheckFleeca = false

RegisterServerEvent("desirerp-fleeca:getGetDoorStateSV")
AddEventHandler("desirerp-fleeca:getGetDoorStateSV", function()
    TriggerClientEvent('desirerp-fleeca:getDoorCheckCL', -1, doorCheckFleeca)
end)

RegisterServerEvent("desirerp-fleeca:getGetDoorStateSVSV")
AddEventHandler("desirerp-fleeca:getGetDoorStateSVSV", function(fleecaBanksDoors)
    doorCheckFleeca = fleecaBanksDoors
end)


RegisterServerEvent("desirerp-fleeca:getTimeSV")
AddEventHandler("desirerp-fleeca:getTimeSV", function()
    TriggerClientEvent('desirerp-fleeca:GetTimeCL', -1, cooldownglobal)
end)

RegisterServerEvent("desirerp-fleeca:getTime2SV")
AddEventHandler("desirerp-fleeca:getTime2SV", function()
    TriggerClientEvent('desirerp-fleeca:GetTime2CL', -1, (os.time() - fleeca.cooldown))
end)

RegisterServerEvent("desirerp-fleeca:getDoorAccessSV")
AddEventHandler("desirerp-fleeca:getDoorAccessSV", function()
    TriggerClientEvent('desirerp-fleeca:GetDoorAccessCL', -1, globalonaction)
end)

RegisterServerEvent('charge:fleeca')
AddEventHandler('charge:fleeca', function(amount, bankname)
  local _source = source
  local user = exports["desirerp-base"]:getModule("Player"):GetUser(source)

    if user:getCash() >= amount then
        user:removeMoney(amount)
        TriggerClientEvent('aspect:bankemail', source, bankname)
    else
        TriggerClientEvent('DoLongHudText', source, 'You dont have enough money!', 2)
    end
end)

RegisterServerEvent('desirerp-robbery:server:setBankState')
AddEventHandler('desirerp-robbery:server:setBankState', function(bankId, state)
    if bankId == "pacific" then
       print('[QUEER]')
    else
        if not robberyBusy then
            Config.SmallBanks[bankId]["isOpened"] = state
            TriggerClientEvent('desirerp-robbery:client:setBankState', -1, bankId, state)
            TriggerEvent('desirerp-robbery:server:SetSmallbankTimeout', bankId)
            TriggerEvent('aspect:bankstore', bankId, state)
        end
    end
    robberyBusy = true
end)

RegisterServerEvent('desirerp-robbery:server:SetSmallbankTimeout')
 AddEventHandler('desirerp-robbery:server:SetSmallbankTimeout', function(BankId)
     if not robberyBusy then
        Citizen.Wait(3600000)
        Config.SmallBanks[BankId]["isOpened"] = false
        timeOut = false
        robberyBusy = false
        TriggerClientEvent('desirerp-robbery:client:ResetFleecaLockers', -1, BankId)
        TriggerEvent('lh-banking:server:SetBankClosed', BankId, false)
     end
 end)


local Loot = false

RegisterServerEvent('desirerp-fleeca:tut_tut')
AddEventHandler('desirerp-fleeca:tut_tut', function()
    local src = source
    if not Loot then
        Loot = true
        TriggerClientEvent('desirerp-fleeca:grab', src)
        Citizen.Wait(40000)
        Loot = false
    end
end)

RegisterServerEvent('voidrp-heists:fleeca_availability')
AddEventHandler('voidrp-heists:fleeca_availability', function()
    local src = source
    
    if Available then
        TriggerClientEvent('desirerp-heists:fleeca_available', src)
    else
        TriggerClientEvent('desirerp-heists:fleeca_unavailable', src)
    end
end)

RegisterServerEvent('desirerp-heists:fleecaBankLog')
AddEventHandler('desirerp-heists:fleecaBankLog', function()
    local src = source
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** DesireRP [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing a Fleeca Bank",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/1012083008263684217/pt-XMDUWT8y93DpqGme9uMX_5RfXUmg1xCJxzaps92t0wfR4WcMq9FXRD2jIr7Kf81WW", function(err, text, headers) end, 'POST', json.encode({username = "DesireRP | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)