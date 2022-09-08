previewEnabled = false
local usedItemId, usedItemSlot, usedItemMetadata

RegisterNetEvent("qpixel-racing:addedActiveRace")
AddEventHandler("qpixel-racing:addedActiveRace", function(race)
    print("ADDING ACTIVE RACE")
    activeRaces[race.id] = race

    if not config.nui.hudOnly then
        SendNUIMessage({
            activeRaces = activeRaces
        })
    end

    TriggerEvent("qpixel-racing:api:addedActiveRace", race, activeRaces)
    TriggerEvent("qpixel-racing:api:updatedState", { activeRaces = activeRaces })
end)

RegisterNetEvent("qpixel-racing:removedActiveRace")
AddEventHandler("qpixel-racing:removedActiveRace", function(id)
    print("REMOVE ACTIVE RACE")
    activeRaces[id] = nil

    if not config.nui.hudOnly then
        SendNUIMessage({
            activeRaces = activeRaces
        })
    end

    TriggerEvent("qpixel-racing:api:removedActiveRace", activeRaces)
    TriggerEvent("qpixel-racing:api:updatedState", { activeRaces = activeRaces })
end)

RegisterNetEvent("qpixel-racing:updatedActiveRace")
AddEventHandler("qpixel-racing:updatedActiveRace", function(race)
    if activeRaces[race.id] then
        activeRaces[race.id] = race
    end

    if not config.nui.hudOnly then
        SendNUIMessage({
            activeRaces = activeRaces
        })
    end

    TriggerEvent("qpixel-racing:api:updatedActiveRace", activeRaces)
    TriggerEvent("qpixel-racing:api:updatedState", { activeRaces = activeRaces })
end)

RegisterNetEvent("qpixel-racing:endRace")
AddEventHandler("qpixel-racing:endRace", function(race)
    print("RACE FUCKING END")
    SendNUIMessage({
        showHUD = false
    })

    TriggerEvent("qpixel-racing:api:raceEnded", race)
    TriggerEvent('qpixel-racing:qpixel-racing:api:updatedStat')
    cleanupRace()
end)

RegisterNetEvent("qpixel-racing:raceHistory")
AddEventHandler("qpixel-racing:raceHistory", function(race)
    finishedRaces[#finishedRaces + 1] = race

    if race then
        if not config.nui.hudOnly then
            SendNUIMessage({
                leaderboardData = race
            })
        end
    end

    TriggerEvent("qpixel-racing:api:raceHistory", race)
    TriggerEvent("qpixel-racing:api:updatedState", { finishedRaces = finishedRaces })
end)

RegisterNetEvent("qpixel-racing:startRace")
AddEventHandler("qpixel-racing:startRace", function(race, startTime)
    TriggerEvent("qpixel-racing:api:startingRace", startTime)
    -- Wait for race countdown
    Citizen.Wait(startTime - 3000)

    SendNUIMessage({
        type = "countdown",
        start = 3,
    })

    PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
    Citizen.Wait(1000)
    PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
    Citizen.Wait(1000)
    PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
    Citizen.Wait(1000)
    PlaySoundFrontend(-1, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")

    if not curRace then
        initRace(race)
        TriggerEvent("qpixel-racing:api:raceStarted", race)
    end
end)

RegisterNetEvent("qpixel-racing:updatePosition")
AddEventHandler("qpixel-racing:updatePosition", function(position)
    -- print("Position is now: " .. position)
    SendNUIMessage({
        HUD = { position = position }
    })
end)

RegisterNetEvent("qpixel-racing:dnfRace")
AddEventHandler("qpixel-racing:dnfRace", function()
    SendNUIMessage({
        HUD = { dnf = true }
    })

    TriggerEvent("qpixel-racing:api:dnfRace", race)
end)

RegisterNetEvent("qpixel-racing:startDNFCountdown")
AddEventHandler("qpixel-racing:startDNFCountdown", function(dnfTime)
    SendNUIMessage({
        HUD = { dnfTime = dnfTime }
    })
end)

function round(x, n) 
    return tonumber(string.format("%." .. n .. "f", x))
end

RegisterNetEvent("qpixel-racing:finishedRace")
AddEventHandler("qpixel-racing:finishedRace", function(position, time, pEnterAmt)
    if position == 1 then
        RPC.execute('qpixel-racing:awardPlayer', math.random(40, 50) + round(pEnterAmt / 6, 0))
    elseif position == 2 then
        RPC.execute('qpixel-racing:awardPlayer', math.random(20, 30))
    elseif position == 3 then
        RPC.execute('qpixel-racing:awardPlayer', math.random(10))
    end
    SendNUIMessage({
        HUD = {
            position = position,
            finished = time,
        }
    })
end)

RegisterNetEvent("qpixel-racing:joinedRace")
AddEventHandler("qpixel-racing:joinedRace", function(race)
    race.start.pos = tableToVector3(race.start.pos)
    spawnCheckpointObjects(race.start, config.startObjectHash)
end)

RegisterNetEvent("qpixel-racing:leftRace")
AddEventHandler("qpixel-racing:leftRace", function()
    cleanupProps()
    TriggerEvent('qpixel-racing:api:updatedState')
end)

RegisterNetEvent("qpixel-racing:playerJoinedYourRace")
AddEventHandler("qpixel-racing:playerJoinedYourRace", function(characterId, name)
    if characterId == getCharacterId() then return end

    TriggerEvent("qpixel-racing:api:playerJoinedYourRace", characterId, name)
end)

RegisterNetEvent("qpixel-racing:playerLeftYourRace")
AddEventHandler("qpixel-racing:playerLeftYourRace", function(characterId, name)
    if characterId == getCharacterId() then return end

    TriggerEvent("qpixel-racing:api:playerLeftYourRace", characterId, name)
end)

RegisterNetEvent("qpixel-racing:addedPendingRace")
AddEventHandler("qpixel-racing:addedPendingRace", function(race)
    pendingRaces[race.id] = race
    if not config.nui.hudOnly then
        SendNUIMessage({
            pendingRaces = pendingRaces
        })
    end

    TriggerEvent("qpixel-racing:api:addedPendingRace", race, pendingRaces)
    TriggerEvent("qpixel-racing:api:updatedState", { pendingRaces = pendingRaces })
end)

RegisterNetEvent("qpixel-racing:removedPendingRace")
AddEventHandler("qpixel-racing:removedPendingRace", function(id)
    pendingRaces[id] = nil

    SendNUIMessage({ pendingRaces = pendingRaces })

    TriggerEvent("qpixel-racing:api:removedPendingRace", pendingRaces)
    TriggerEvent("qpixel-racing:api:updatedState", {pendingRaces=pendingRaces})
end)

RegisterNetEvent("qpixel-racing:startCreation")
AddEventHandler("qpixel-racing:startCreation", function()
    startRaceCreation()
end)

RegisterNetEvent("qpixel-racing:addedRace")
AddEventHandler("qpixel-racing:addedRace", function(newRace, newRaces)
    if not races then return end
    races = newRaces

    SendNUIMessage({
        races = newRaces
    })

    TriggerEvent("qpixel-racing:api:addedRace")
    TriggerEvent("qpixel-racing:api:updatedState", {races=races})
end)

local function openAliasTextbox()
  exports['qpixel-interface']:openApplication('textbox', {
    callbackUrl = 'qpixel-interface:racing:input:alias',
    key = 1,
    items = {{icon = "pencil-alt", label = "Alias", name = "alias"}},
    show = true
  })
end

AddEventHandler("qpixel-inventory:itemUsed", function(item, metadata, inventoryName, slot)
  if item ~= "racingusb2" then return end
  usedItemId = item
  usedItemSlot = slot
  usedItemMetadata = json.decode(metadata)

  local characterId = exports["isPed"]:isPed("cid")
  if characterId ~= usedItemMetadata.characterId then
    TriggerEvent("DoLongHudText", "You don't own this usb!", 2)
    return
  end

  if usedItemMetadata.Alias then
    TriggerEvent("DoLongHudText", "Alias can't be changed for this usb!", 2)
    return
  end

  openAliasTextbox()
end)

RegisterInterfaceCallback("qpixel-interface:racing:input:alias", function(data, cb)
  cb({data = {}, meta = {ok = true, message = ''}})
  exports['qpixel-interface']:closeApplication('textbox')
  local alias = data.values.alias

  if usedItemMetadata.Alias then return end

  if not alias then
    TriggerEvent("DoLongHudText", "No alias entered!", 2)
    return
  end

  local success, msg = RPC.execute("qpixel-racing:setAlias", usedItemId, usedItemSlot, usedItemMetadata, alias)
  if success then
    exports["qpixel-phone"]:phoneNotification("racen", "Welcome to the underground, " .. alias .. ".", "From the PM", 5000)
  else
    TriggerEvent("DoLongHudText", msg or "Alias could not be set.", 2)
    if msg == "Alias already taken!" then
      openAliasTextbox()
    end
  end
end)

-- RegisterCommand("qpixel-racing:giveRacingUSB", function()
--     RPC.execute("qpixel-racing:giveRacingUSB")
-- end)

AddEventHandler("onResourceStop", function (resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    cleanupProps()
    clearBlips()
    ClearGpsMultiRoute()
end)

RegisterNetEvent('qpixel-racing:api:currentRace')
AddEventHandler("qpixel-racing:api:currentRace", function(currentRace)
    print(json.encode(currentRace))
    -- print("FUCK THIS SHIT HERE******************************************************")
    isRacing = currentRace ~= nil
    if isRacing then
        startBubblePopper(currentRace)
    end
end)