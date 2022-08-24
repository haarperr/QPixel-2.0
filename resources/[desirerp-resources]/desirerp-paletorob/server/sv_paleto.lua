Doors = {
    ["P1"] = {{loc = vector3(-105.41538238525, 6471.6791992188, 31.621948242188), txtloc = vector3(-105.41538238525, 6471.6791992188, 31.621948242188), state = nil, locked = true}},
}

RegisterServerEvent("desirerp-paleto:startcheck")
AddEventHandler("desirerp-paleto:startcheck", function(bank)
    local src = source

    if not Paleto.Banks[bank].onaction == true then
        if (os.time() - Paleto.cooldown) > Paleto.Banks[bank].lastrobbed then
            Paleto.Banks[bank].onaction = true
            TriggerClientEvent("desirerp-paleto:outcome", src, true, bank)
            TriggerClientEvent("desirerp-paleto:policenotify", -1, bank)
        else
            TriggerClientEvent("desirerp-paleto:outcome", src, false, "This bank recently robbed. You need to wait "..math.floor((Paleto.cooldown - (os.time() - Paleto.Banks[bank].lastrobbed)) / 60)..":"..math.fmod((Paleto.cooldown - (os.time() - Paleto.Banks[bank].lastrobbed)), 60))
        end
    else
        TriggerClientEvent("desirerp-paleto:outcome", src, false, "This bank is currently being robbed.")
    end
end)

RegisterCommand("testy", function()
    local src = source
    local reward = math.random(Paleto.mincash, Paleto.maxcash)
	
	if Paleto.blackmoney then
        TriggerClientEvent("player:receiveItem", src, "markedbills", 1)
        -- Player.Functions.AddItem('markedbills', 1, false, {worth = math.random(4500, 7000)})
    else
        if Paleto.blackmoney then
            TriggerClientEvent("player:receiveItem", src, "markedbills", 1)
            -- Player.Functions.AddItem('markedbills', 1, false, {worth = math.random(4500, 7000)})
        end
    end
end)

RegisterServerEvent("desirerp-paleto:lootup")
AddEventHandler("desirerp-paleto:lootup", function(var, var2)
    TriggerClientEvent("desirerp-paleto:lootup_c", -1, var, var2)
end)

RegisterServerEvent("desirerp-paleto:toggleVault")
AddEventHandler("desirerp-paleto:toggleVault", function(key, state)
    Doors[key][1].locked = state
    TriggerClientEvent("desirerp-paleto:toggleVault", -1, key, state)
end)

RegisterServerEvent("desirerp-paleto:updateVaultState")
AddEventHandler("desirerp-paleto:updateVaultState", function(key, state)
    Doors[key][1].state = state
end)

RegisterServerEvent("desirerp-paleto:startLoot")
AddEventHandler("desirerp-paleto:startLoot", function(data, name, players)
    local src = source

    for i = 10, #players, 10 do
        TriggerClientEvent("desirerp-paleto:startLoot_c", players[i], data, name)
    end
    TriggerClientEvent("desirerp-paleto:startLoot_c", src, data, name)
end)

RegisterServerEvent("desirerp-paleto:stopHeist")
AddEventHandler("desirerp-paleto:stopHeist", function(name)
    TriggerClientEvent("desirerp-paleto:stopHeist_c", -1, name)
end)

RegisterServerEvent("desirerp-paleto:rewardCash")
AddEventHandler("desirerp-paleto:rewardCash", function()
    local src = source
    local reward = math.random(Paleto.mincash, Paleto.maxcash)
	
	if Paleto.blackmoney then
        TriggerClientEvent("player:receiveItem", src, "markedbills", 250)
    else
        TriggerClientEvent("player:receiveItem", src, "markedbills", 425)
    end
end)

RegisterServerEvent("desirerp-paleto:setCooldown")
AddEventHandler("desirerp-paleto:setCooldown", function(name)
    Paleto.Banks[name].lastrobbed = os.time()
    Paleto.Banks[name].onaction = false
    TriggerClientEvent("desirerp-paleto:resetDoorState", -1, name)
end)

RPC.register("desirerp-paleto:getBanks", function(source)
    return Paleto.Banks, Doors
end)

 RegisterCommand("aan", function()
     TriggerClientEvent('desirerp-paleto:UseGreenLapTop', source)
 end)

-- RegisterServerEvent('rick:removeLaptop')
-- AddEventHandler('rick:removeLaptop', function()
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     Player.Functions.RemoveItem('green-laptop', 1)
-- end)


local doorCheckPaleto = false

RegisterServerEvent("desirerp-paleto:getGetDoorStateSV")
AddEventHandler("desirerp-paleto:getGetDoorStateSV", function()
    TriggerClientEvent('desirerp-paleto:getDoorCheckCL', -1, doorCheckPaleto)
end)

RegisterServerEvent("desirerp-paleto:getGetDoorStateSVSV")
AddEventHandler("desirerp-paleto:getGetDoorStateSVSV", function(paletoBanksDoors)
    doorCheckPaleto = paletoBanksDoors
end)

RegisterServerEvent("desirerp-paleto:openDoor")
AddEventHandler("desirerp-paleto:openDoor", function(coords, method)
    TriggerClientEvent("desirerp-paleto:OpenPaletoDoor", -1)
end)

RegisterServerEvent("desirerp-paleto:closeDoor")
AddEventHandler("desirerp-paleto:closeDoor", function(coords, method)
    TriggerClientEvent("desirerp-paleto:ClosePaletoDoor", -1)
end)