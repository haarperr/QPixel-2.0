QPX.SpawnManager = {}

function QPX.SpawnManager.Initialize(self)
    Citizen.CreateThread(function()

        FreezeEntityPosition(PlayerPedId(), true)

        TransitionToBlurred(500)
        DoScreenFadeOut(500)

        ShutdownLoadingScreen()

        local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)

        SetCamRot(cam, 0.0, 0.0, -45.0, 2)
        SetCamCoord(cam, -682.0, -1092.0, 226.0)
        SetCamActive(cam, true)
        RenderScriptCams(true, false, 0, true, true)

        local ped = PlayerPedId()

        SetEntityCoordsNoOffset(ped, -682.0, -1092.0, 200.0, false, false, false, true)

        SetEntityVisible(ped, false)

        DoScreenFadeIn(500)

        while IsScreenFadingIn() do
            Citizen.Wait(0)
        end

        TriggerEvent("qpixel-base:spawnInitialized")
        TriggerServerEvent("qpixel-base:spawnInitialized")

    end)
end

function QPX.SpawnManager.InitialSpawn(self)
    Citizen.CreateThread(function()
        DisableAllControlActions(0)
      
        DoScreenFadeOut(10)

        while IsScreenFadingOut() do
            Citizen.Wait(0)
        end

        local character = QPX.LocalPlayer:getCurrentCharacter()


        --Tells raid clothes to set ped to correct skin
        TriggerEvent("qpixel-base:initialSpawnModelLoaded")

        local ped = PlayerPedId()

        SetEntityVisible(ped, true)
        FreezeEntityPosition(PlayerPedId(), false)
        
        ClearPedTasksImmediately(ped)
        RemoveAllPedWeapons(ped)
        --ClearPlayerWantedLevel(PlayerId())

        EnableAllControlActions(0)

        TriggerEvent("character:finishedLoadingChar")
    end)
end

AddEventHandler("qpixel-base:firstSpawn", function()
    QPX.SpawnManager:InitialSpawn()

    Citizen.CreateThread(function()
        Citizen.Wait(600)
        FreezeEntityPosition(PlayerPedId(), false)
    end)
end)

RegisterNetEvent('qpixel-base:clearStates')
AddEventHandler('qpixel-base:clearStates', function()
  TriggerEvent("isJudgeOff")
  TriggerEvent("nowCopSpawnOff")
  TriggerEvent("nowEMSDeathOff")
  TriggerEvent("police:noLongerCop")
  TriggerEvent("nowCopDeathOff")
  TriggerEvent("ResetFirstSpawn")
  TriggerEvent("stopSpeedo")
  TriggerServerEvent("TokoVoip:removePlayerFromAllRadio",GetPlayerServerId(PlayerId()))
  TriggerEvent("wk:disableRadar")
end)



QPX.SettingsData = QPX.SettingsData or {}
QPX.Settings = QPX.Settings or {}

QPX.Settings.Current = {}
-- Current bind name and keys
QPX.Settings.Default = {
  ["tokovoip"] = {
    ["stereoAudio"] = true,
    ["localClickOn"] = true,
    ["localClickOff"] = true,
    ["remoteClickOn"] = true,
    ["remoteClickOff"] = true,
    ["clickVolume"] = 0.8,
    ["radioVolume"] = 0.8,
    ["phoneVolume"] = 0.8,
    ["releaseDelay"] = 200
  },
  ["hud"] = {

  }

}


function QPX.SettingsData.setSettingsTable(settingsTable, shouldSend)
  if settingsTable == nil then
    QPX.Settings.Current = QPX.Settings.Default
    TriggerServerEvent('qpixel-base:sv:player_settings_set',QPX.Settings.Current)
    QPX.SettingsData.checkForMissing()
  else
    if shouldSend then
      QPX.Settings.Current = settingsTable
      TriggerServerEvent('qpixel-base:sv:player_settings_set',QPX.Settings.Current)
      QPX.SettingsData.checkForMissing()
    else
       QPX.Settings.Current = settingsTable
       QPX.SettingsData.checkForMissing()
    end
  end

  TriggerEvent("event:settings:update",QPX.Settings.Current)

end

function QPX.SettingsData.setSettingsTableGlobal(self, settingsTable)
  QPX.SettingsData.setSettingsTable(settingsTable,true);
end

function QPX.SettingsData.getSettingsTable()
    return QPX.Settings.Current
end

function QPX.SettingsData.setVarible(self,tablename,atrr,val)
  QPX.Settings.Current[tablename][atrr] = val
  TriggerServerEvent('qpixel-base:sv:player_settings_set',QPX.Settings.Current)
end

function QPX.SettingsData.getVarible(self,tablename,atrr)
  return QPX.Settings.Current[tablename][atrr]
end

function QPX.SettingsData.checkForMissing()
  local isMissing = false

  for j,h in pairs(QPX.Settings.Default) do
    if QPX.Settings.Current[j] == nil then
      isMissing = true
      QPX.Settings.Current[j] = h
    else
      for k,v in pairs(h) do
        if  QPX.Settings.Current[j][k] == nil then
           QPX.Settings.Current[j][k] = v
           isMissing = true
        end
      end
    end
  end
  

  if isMissing then
    TriggerServerEvent('qpixel-base:sv:player_settings_set',QPX.Settings.Current)
  end


end

RegisterNetEvent("qpixel-base:cl:player_settings")
AddEventHandler("qpixel-base:cl:player_settings", function(settingsTable)
  QPX.SettingsData.setSettingsTable(settingsTable,false)
end)


RegisterNetEvent("qpixel-base:cl:player_reset")
AddEventHandler("qpixel-base:cl:player_reset", function(tableName)
  if QPX.Settings.Default[tableName] then
      if QPX.Settings.Current[tableName] then
        QPX.Settings.Current[tableName] = QPX.Settings.Default[tableName]
        QPX.SettingsData.setSettingsTable(QPX.Settings.Current,true)
      end
  end
end)
