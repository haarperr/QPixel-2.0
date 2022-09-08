Doors = {
    ["P1"] = {{loc = vector3(-105.41538238525, 6471.6791992188, 31.621948242188), txtloc = vector3(-105.41538238525, 6471.6791992188, 31.621948242188), state = nil, locked = true}},
}

RegisterServerEvent("qpixel-paleto:startcheck")
AddEventHandler("qpixel-paleto:startcheck", function(bank)
    local src = source

    if not Paleto.Banks[bank].onaction == true then
        if (os.time() - Paleto.cooldown) > Paleto.Banks[bank].lastrobbed then
            Paleto.Banks[bank].onaction = true
            TriggerClientEvent("qpixel-paleto:outcome", src, true, bank)
            TriggerClientEvent("qpixel-paleto:policenotify", -1, bank)
        else
            TriggerClientEvent("qpixel-paleto:outcome", src, false, "This bank recently robbed. You need to wait "..math.floor((Paleto.cooldown - (os.time() - Paleto.Banks[bank].lastrobbed)) / 60)..":"..math.fmod((Paleto.cooldown - (os.time() - Paleto.Banks[bank].lastrobbed)), 60))
        end
    else
        TriggerClientEvent("qpixel-paleto:outcome", src, false, "This bank is currently being robbed.")
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

RegisterServerEvent("qpixel-paleto:lootup")
AddEventHandler("qpixel-paleto:lootup", function(var, var2)
    TriggerClientEvent("qpixel-paleto:lootup_c", -1, var, var2)
end)

RegisterServerEvent("qpixel-paleto:toggleVault")
AddEventHandler("qpixel-paleto:toggleVault", function(key, state)
    Doors[key][1].locked = state
    TriggerClientEvent("qpixel-paleto:toggleVault", -1, key, state)
end)

RegisterServerEvent("qpixel-paleto:updateVaultState")
AddEventHandler("qpixel-paleto:updateVaultState", function(key, state)
    Doors[key][1].state = state
end)

RegisterServerEvent("qpixel-paleto:startLoot")
AddEventHandler("qpixel-paleto:startLoot", function(data, name, players)
    local src = source

    for i = 10, #players, 10 do
        TriggerClientEvent("qpixel-paleto:startLoot_c", players[i], data, name)
    end
    TriggerClientEvent("qpixel-paleto:startLoot_c", src, data, name)
end)

RegisterServerEvent("qpixel-paleto:stopHeist")
AddEventHandler("qpixel-paleto:stopHeist", function(name)
    TriggerClientEvent("qpixel-paleto:stopHeist_c", -1, name)
end)

RegisterServerEvent("qpixel-paleto:rewardCash")
AddEventHandler("qpixel-paleto:rewardCash", function()
    local src = source
    local reward = math.random(Paleto.mincash, Paleto.maxcash)
	
	if Paleto.blackmoney then
        TriggerClientEvent("player:receiveItem", src, "markedbills", 250)
    else
        TriggerClientEvent("player:receiveItem", src, "markedbills", 425)
    end
end)

RegisterServerEvent("qpixel-paleto:setCooldown")
AddEventHandler("qpixel-paleto:setCooldown", function(name)
    Paleto.Banks[name].lastrobbed = os.time()
    Paleto.Banks[name].onaction = false
    TriggerClientEvent("qpixel-paleto:resetDoorState", -1, name)
end)

RPC.register("qpixel-paleto:getBanks", function(source)
    return Paleto.Banks, Doors
end)

 RegisterCommand("aan", function()
     TriggerClientEvent('qpixel-paleto:UseGreenLapTop', source)
 end)

-- RegisterServerEvent('rick:removeLaptop')
-- AddEventHandler('rick:removeLaptop', function()
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     Player.Functions.RemoveItem('green-laptop', 1)
-- end)


local doorCheckPaleto = false

RegisterServerEvent("qpixel-paleto:getGetDoorStateSV")
AddEventHandler("qpixel-paleto:getGetDoorStateSV", function()
    TriggerClientEvent('qpixel-paleto:getDoorCheckCL', -1, doorCheckPaleto)
end)

RegisterServerEvent("qpixel-paleto:getGetDoorStateSVSV")
AddEventHandler("qpixel-paleto:getGetDoorStateSVSV", function(paletoBanksDoors)
    doorCheckPaleto = paletoBanksDoors
end)

RegisterServerEvent("qpixel-paleto:openDoor")
AddEventHandler("qpixel-paleto:openDoor", function(coords, method)
    TriggerClientEvent("qpixel-paleto:OpenPaletoDoor", -1)
end)

RegisterServerEvent("qpixel-paleto:closeDoor")
AddEventHandler("qpixel-paleto:closeDoor", function(coords, method)
    TriggerClientEvent("qpixel-paleto:ClosePaletoDoor", -1)
end)