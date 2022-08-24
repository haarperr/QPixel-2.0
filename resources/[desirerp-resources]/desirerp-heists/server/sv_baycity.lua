local pCanDo2NDDoor = false

RegisterServerEvent('desirerp-heists:first_door:cl')
AddEventHandler('desirerp-heists:first_door:cl', function()
    TriggerClientEvent('desirerp-heists:bay_city:first_door', source)
end)

RegisterServerEvent('desirerp-heists:second_door:cl')
AddEventHandler('desirerp-heists:second_door:cl', function()
    if pCanDo2NDDoor then
        TriggerClientEvent('desirerp-heists:bay_city:second_door', source)
    end
end)

RegisterServerEvent('pSendSecondDoor')
AddEventHandler('pSendSecondDoor', function()
    pCanDo2NDDoor = true
end)

RegisterServerEvent('pStopSecondDoor')
AddEventHandler('pStopSecondDoor', function()
    pCanDo2NDDoor = false
end)

RegisterServerEvent('desirerp-heists:bayCityLog')
AddEventHandler('desirerp-heists:bayCityLog', function()
    local src = source
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** DesireRP [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing Bay City Bank",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/1012083078178537493/WhE7C75JudJf0Y5xOTRTSJjMnH_SntWLvpZUHm_BjlVJgPHVcZANh978EuGj10nbttpK", function(err, text, headers) end, 'POST', json.encode({username = "DesireRP | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)