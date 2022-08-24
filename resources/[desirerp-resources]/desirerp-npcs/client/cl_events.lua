RegisterNetEvent("desirerp-npcs:set:ped")
AddEventHandler("desirerp-npcs:set:ped", function(pNPCs)
  if type(pNPCs) == "table" then
    for _, ped in ipairs(pNPCs) do
      RegisterNPC(ped, 'desirerp-npcs')
      EnableNPC(ped.id)
    end
  else
    RegisterNPC(ped, 'desirerp-npcs')
    EnableNPC(ped.id)
  end
end)

RegisterNetEvent("desirerp-npcs:ped:giveStolenItems")
AddEventHandler("desirerp-npcs:ped:giveStolenItems", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
 -- local npcCoords = GetEntityCoords(pEntity)
  local finished = exports["desirerp-taskbar"]:taskBar(15000, "Preparing to receive goods, don't move.")
  if finished == 100 then
   -- if #(GetEntityCoords(PlayerPedId()) - npcCoords) < 2.0 then
      TriggerEvent("server-inventory-open", "1", "Stolen-Goods-1")
    else
      TriggerEvent("DoLongHudText", "You moved too far you idiot.", 105)
    end
  end)

RegisterNetEvent("desirerp-npcs:ped:exchangeRecycleMaterial")
AddEventHandler("desirerp-npcs:ped:exchangeRecycleMaterial", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
 -- local npcCoords = GetEntityCoords(pEntity)
  local finished = exports["desirerp-taskbar"]:taskBar(3000, "Preparing to exchange material, don't move.")
  if finished == 100 then
   -- if #(GetEntityCoords(PlayerPedId()) - npcCoords) < 2.0 then
      TriggerEvent("server-inventory-open", "103", "Craft");
    else
      TriggerEvent("DoLongHudText", "You moved too far you idiot.", 105)
    end
end)

RegisterNetEvent("desirerp-npcs:ped:signInJob")
AddEventHandler("desirerp-npcs:ped:signInJob", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
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

RegisterNetEvent("desirerp-npcs:ped:paycheckCollect")
AddEventHandler("desirerp-npcs:ped:paycheckCollect", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  TriggerServerEvent("server:paySlipPickup")
end)

RegisterNetEvent("desirerp-npcs:ped:receiptTradeIn")
AddEventHandler("desirerp-npcs:ped:receiptTradeIn", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  local cid = exports["isPed"]:isPed("cid")
  local accountStatus, accountTarget = RPC.execute("GetDefaultBankAccount", cid)
  if not accountStatus then return end
  RPC.execute("desirerp-inventory:tradeInReceipts", cid, accountTarget)
end)

RegisterNetEvent("desirerp-npcs:ped:sellStolenItems")
AddEventHandler("desirerp-npcs:ped:sellStolenItems", function()
  RPC.execute("desirerp-inventory:sellStolenItems")
end)

RegisterNetEvent("desirerp-npcs:ped:keeper")
AddEventHandler("desirerp-npcs:ped:keeper", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  TriggerEvent("server-inventory-open", pArgs[1], "Shop");
end)


TriggerServerEvent("desirerp-npcs:location:fetch")

AddEventHandler("desirerp-npcs:ped:weedSales", function(pArgs, pEntity, pEntityFlags, pEntityCoords)
  local result, message = RPC.execute("desirerp-npcs:weedShopOpen")
  if not result then
    TriggerEvent("DoLongHudText", message, 2)
    return
  end
  TriggerEvent("server-inventory-open", "44", "Shop");
end)

AddEventHandler("desirerp-npcs:ped:licenseKeeper", function()
  RPC.execute("desirerp-npcs:purchaseDriversLicense")
end)

