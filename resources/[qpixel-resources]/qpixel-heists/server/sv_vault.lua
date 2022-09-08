RegisterServerEvent("utk_oh:openvault")
AddEventHandler("utk_oh:openvault", function(method)
    TriggerClientEvent("utk_oh:openvault_c", -1, method)
end)

local pLootLowerVault = false

RegisterServerEvent('qpixel-heists:loot_tray')
AddEventHandler('qpixel-heists:loot_tray', function()
    local src = source
    if not pLootLowerVault then
        pLootLowerVault = true
        TriggerClientEvent('qpixel-vault:grab', src)
        Citizen.Wait(40000)
        pLootLowerVault = false
    end
end)

RegisterServerEvent('qpixel-heists:cash_tray')
AddEventHandler('qpixel-heists:cash_tray', function()
    local src = source
    if not Loot then
        Loot = true
        TriggerClientEvent('qpixel-heists:grab_from_tray', src)
        Citizen.Wait(40000)
        Loot = false
    end
end)

RegisterServerEvent('qpixel-heists:vaultRobberyLog')
AddEventHandler('qpixel-heists:vaultRobberyLog', function()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** qpixel [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing The Vault",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/1012082919445106811/nW6Q9_stfzsaLFNGqvSRhzQnF3ppoPPvWEIXX0hFihYgUwzuiP3PdQ1odUvNHehJ8U02", function(err, text, headers) end, 'POST', json.encode({username = "qpixel | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)