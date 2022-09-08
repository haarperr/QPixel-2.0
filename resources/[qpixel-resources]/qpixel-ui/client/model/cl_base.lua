-- CLOSE APP
function SetUIFocus(hasKeyboard, hasMouse)
    --  HasNuiFocus = hasKeyboard or hasMouse
    
      SetNuiFocus(hasKeyboard, hasMouse)
    
      -- TriggerEvent("qpixel-voice:focus:set", HasNuiFocus, hasKeyboard, hasMouse)
      -- TriggerEvent("qpixel-binds:should-execute", not HasNuiFocus)
    end
    
    exports('SetUIFocus', SetUIFocus)
    
    RegisterNUICallback("qpixel-ui:closeApp", function(data, cb)
        SetUIFocus(false, false)
        cb({data = {}, meta = {ok = true, message = 'done'}})
        Wait(800)
        TriggerEvent("attachedItems:block",false)
    end)
    
    RegisterNUICallback("qpixel-ui:applicationClosed", function(data, cb)
        TriggerEvent("qpixel-ui:application-closed", data.name, data)
        cb({data = {}, meta = {ok = true, message = 'done'}})
    end)
    
    -- FORCE CLOSE
    RegisterCommand("qpixel-ui:force-close", function()
        SendUIMessage({source = "qpixel-nui", app = "", show = false});
        SetUIFocus(false, false)
    end, false)
    
    -- SMALL MAP
    RegisterCommand("qpixel-ui:small-map", function()
      SetRadarBigmapEnabled(false, false)
    end, false)
    
    local function restartUI(withMsg)
      SendUIMessage({ source = "qpixel-nui", app = "main", action = "restart" });
      if withMsg then
        TriggerEvent("DoLongHudText", "You can also use 'ui-r' as a shorter version to restart!")
      end
      Wait(5000)
      TriggerEvent("qpixel-ui:restarted")
      SendUIMessage({ app = "hud", data = { display = true }, source = "qpixel-nui" })
      local cj = exports["police"]:getCurrentJob()
      if cj ~= "unemployed" then
        TriggerEvent("qpixel-jobmanager:playerBecameJob", cj)
        TriggerServerEvent("qpixel-jobmanager:fixPaychecks", cj)
      end
      loadPublicData()
    end
    RegisterCommand("qpixel-ui:restart", function() restartUI(true) end, false)
    RegisterCommand("ui-r", function() restartUI() end, false)
    RegisterNetEvent("qpixel-ui:server-restart")
    AddEventHandler("qpixel-ui:server-restart", restartUI)
    
    RegisterCommand("qpixel-ui:debug:show", function()
        SendUIMessage({ source = "qpixel-nui", app = "debuglogs", data = { display = true } });
    end, false)
    
    RegisterCommand("qpixel-ui:debug:hide", function()
        SendUIMessage({ source = "qpixel-nui", app = "debuglogs", data = { display = false } });
    end, false)
    
    RegisterNUICallback("qpixel-ui:resetApp", function(data, cb)
        SetUIFocus(false, false)
        cb({data = {}, meta = {ok = true, message = 'done'}})
        sendCharacterData()
    end)
    
    RegisterNetEvent("qpixel-ui:server-relay")
    AddEventHandler("qpixel-ui:server-relay", function(data)
        SendUIMessage(data)
    end)
    
    RegisterNetEvent("isJudge")
    AddEventHandler("isJudge", function()
      sendAppEvent("character", { job = "judge" })
    end)
    
    RegisterNetEvent("isJudgeOff")
    AddEventHandler("isJudgeOff", function()
      sendAppEvent("character", { job = "unemployed" })
    end)
    
    RegisterNetEvent("qpixel-jobmanager:playerBecameJob")
    AddEventHandler("qpixel-jobmanager:playerBecameJob", function(job)
      sendAppEvent("character", { job = job })
    end)
    