-- CLOSE APP
function SetInterfaceFocus(hasKeyboard, hasMouse)
  SetNuiFocus(hasKeyboard, hasMouse)
end

exports('SetInterfaceFocus', SetInterfaceFocus)

RegisterNUICallback("desirerp-interface:closeApp", function(data, cb)
    SetInterfaceFocus(false, false)
    cb({data = {}, meta = {ok = true, message = 'done'}})
    Wait(800)
    TriggerEvent("attachedItems:block",false)
end)

RegisterNUICallback("desirerp-interface:applicationClosed", function(data, cb)
    TriggerEvent("desirerp-interface:application-closed", data.name, data)
    cb({data = {}, meta = {ok = true, message = 'done'}})
end)

-- FORCE CLOSE
RegisterCommand("desirerp-interface:force-close", function()
    SendInterfaceMessage({source = "desirerp-nui", app = "", show = false});
    SetInterfaceFocus(false, false)
end, false)

-- SMALL MAP
RegisterCommand("desirerp-interface:small-map", function()
  SetRadarBigmapEnabled(false, false)
end, false)

local function restartUI(withMsg)
  SendInterfaceMessage({ source = "desirerp-nui", app = "main", action = "restart" });
  if withMsg then
    TriggerEvent("DoLongHudText", "You can also use 'ui-r' as a shorter version to restart!")
  end
  Wait(5000)
  TriggerEvent("desirerp-interface:restarted")
  SendInterfaceMessage({ app = "hud", data = { display = true }, source = "desirerp-nui" })
  local cj = exports["police"]:getCurrentJob()
end
RegisterCommand("desirerp-interface:restart", function() restartUI(true) end, false)
RegisterCommand("ui-r", function() restartUI() end, false)
RegisterNetEvent("desirerp-interface:server-restart")
AddEventHandler("desirerp-interface:server-restart", restartUI)

RegisterCommand("desirerp-interface:debug:show", function()
    SendInterfaceMessage({ source = "desirerp-nui", app = "debuglogs", data = { display = true } });
end, false)

RegisterCommand("desirerp-interface:debug:hide", function()
    SendInterfaceMessage({ source = "desirerp-nui", app = "debuglogs", data = { display = false } });
end, false)

RegisterNUICallback("desirerp-interface:resetApp", function(data, cb)
    SetInterfaceFocus(false, false)
    cb({data = {}, meta = {ok = true, message = 'done'}})
    --sendCharacterData()
end)

RegisterNetEvent("desirerp-interface:server-relay")
AddEventHandler("desirerp-interface:server-relay", function(data)
    SendInterfaceMessage(data)
end)