RegisterNetEvent("qpixel-npcs:set:ped")
AddEventHandler("qpixel-npcs:set:ped", function(pNPCs)
  if type(pNPCs) == "table" then
    for _, ped in ipairs(pNPCs) do
      RegisterNPC(ped, 'qpixel-npcs')
      EnableNPC(ped.id)
    end
  else
    RegisterNPC(ped, 'qpixel-npcs')
    EnableNPC(ped.id)
  end
end)

RegisterNetEvent("qpixel-npcs:ped:giveStolenItems")
AddEventHandler("qpixel-npcs:ped:giveStolenItems", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
 -- local npcCoords = GetEntityCoords(pEntity)
  local finished = exports["qpixel-taskbar"]:taskBar(15000, "Preparing to receive goods, don't move.")
  if finished == 100 then
   -- if #(GetEntityCoords(PlayerPedId()) - npcCoords) < 2.0 then
      TriggerEvent("server-inventory-open", "1", "Stolen-Goods-1")
    else
      TriggerEvent("DoLongHudText", "You moved too far you idiot.", 105)
    end
  end)

RegisterNetEvent("qpixel-npcs:ped:exchangeRecycleMaterial")
AddEventHandler("qpixel-npcs:ped:exchangeRecycleMaterial", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
 -- local npcCoords = GetEntityCoords(pEntity)
  local finished = exports["qpixel-taskbar"]:taskBar(3000, "Preparing to exchange material, don't move.")
  if finished == 100 then
   -- if #(GetEntityCoords(PlayerPedId()) - npcCoords) < 2.0 then
      TriggerEvent("server-inventory-open", "103", "Craft");
    else
      TriggerEvent("DoLongHudText", "You moved too far you idiot.", 105)
    end
end)

RegisterNetEvent("qpixel-npcs:ped:signInJob")
AddEventHandler("qpixel-npcs:ped:signInJob", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  if #pArgs == 0 then
    local npcId = DecorGetInt(pEntity, 'NPC_ID')
    if npcId == `news_reporter` then
      TriggerServerEvent("jobssystem:jobs", "news")
    elseif npcId == `head_stripper` then
      TriggerServerEvent("jobssystem:jobs", "entertainer")
    end
  else
    TriggerServerEvent("jobssystem:jobs", "unemployed")
  end
end)

RegisterNetEvent("qpixel-npcs:ped:paycheckCollect")
AddEventHandler("qpixel-npcs:ped:paycheckCollect", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  TriggerServerEvent("server:paySlipPickup")
end)

RegisterNetEvent("qpixel-npcs:ped:receiptTradeIn")
AddEventHandler("qpixel-npcs:ped:receiptTradeIn", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  local cid = exports["isPed"]:isPed("cid")
  local accountStatus, accountTarget = RPC.execute("GetDefaultBankAccount", cid)
  if not accountStatus then return end
  RPC.execute("qpixel-inventory:tradeInReceipts", cid, accountTarget)
end)

RegisterNetEvent("qpixel-npcs:ped:sellStolenItems")
AddEventHandler("qpixel-npcs:ped:sellStolenItems", function()
  RPC.execute("qpixel-inventory:sellStolenItems")
end)

RegisterNetEvent("qpixel-npcs:ped:keeper")
AddEventHandler("qpixel-npcs:ped:keeper", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  TriggerEvent("server-inventory-open", pArgs[1], "Shop");
end)


TriggerServerEvent("qpixel-npcs:location:fetch")

AddEventHandler("qpixel-npcs:ped:weedSales", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  local result, message = RPC.execute("qpixel-npcs:weedShopOpen")
  if not result then
    TriggerEvent("DoLongHudText", message, 2)
    return
  end
  TriggerEvent("server-inventory-open", "44", "Shop");
end)

AddEventHandler("qpixel-npcs:ped:licenseKeeper", function()
  RPC.execute("qpixel-npcs:purchaseDriversLicense")
end)

