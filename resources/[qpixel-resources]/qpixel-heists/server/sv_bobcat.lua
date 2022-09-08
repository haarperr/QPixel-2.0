pCanBlow = false
canloot = false

RegisterServerEvent("qpixel-bobcat:effect")
AddEventHandler("qpixel-bobcat:effect", function(method)
    TriggerClientEvent("lumo:effectoutside", -1, method)
end)

RegisterServerEvent("qpixel-bobcat:effect2")
AddEventHandler("qpixel-bobcat:effect2", function(method)
    TriggerClientEvent("lumo:effectinside", -1, method)
end)

RegisterServerEvent("qpixel-bobcat:bubbles")
AddEventHandler("qpixel-bobcat:bubbles", function()
    canloot = true
    TriggerClientEvent("qpixel-bobcat:bubbles", -1)
end)

local searched1 = false
local searched2 = false
local searched3 = false

RegisterServerEvent("qpixel-bobcat:search_crate_1")
AddEventHandler("qpixel-bobcat:search_crate_1", function()
    local source = source
    
    if searched1 then
        TriggerClientEvent("DoLongHudText", source, "Already Searched")
    elseif canloot then
        TriggerClientEvent("qpixel-bobcat:search_crate_1", source)
        searched1 = true
    end
end)

RegisterServerEvent("qpixel-bobcat:search_crate_2")
AddEventHandler("qpixel-bobcat:search_crate_2", function()
    local source = source
    
    if searched2 then
        TriggerClientEvent("DoLongHudText", source, "Already Searched")
    elseif canloot then
        TriggerClientEvent("qpixel-bobcat:search_crate_2", source)
        searched2 = true
    end
end)

RegisterServerEvent("qpixel-bobcat:search_crate_3")
AddEventHandler("qpixel-bobcat:search_crate_3", function()
    local source = source
    
    if searched3 then
        TriggerClientEvent("DoLongHudText", source, "Already Searched")
    elseif canloot then
        TriggerClientEvent("qpixel-bobcat:search_crate_3", source)
        searched3 = true
    end
end)

RegisterServerEvent("aspect:particleserver")
AddEventHandler("aspect:particleserver", function(method)
    TriggerClientEvent("aspect:ptfxparticle", -1, method)
end)

RegisterServerEvent('qpixel-bobcat:blow_door')
AddEventHandler('qpixel-bobcat:blow_door', function()
    if not pCanBlow then
        pCanBlow = true
        TriggerClientEvent('qpixel-heists:explosion_ped_walk', source)
    end
end)

RegisterServerEvent('qpixel-heists:bobcatLog')
AddEventHandler('qpixel-heists:bobcatLog', function()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    local charInfo = user:getCurrentCharacter()
    local pName = GetPlayerName(source)

    local connect = {
        {
          ["color"] = color,
          ["title"] = "** qpixel [Heists] **",
          ["description"] = "Steam Name: "..pName.." | Started Robbing Bobcat Security",
        }
      }
      PerformHttpRequest("https://discord.com/api/webhooks/1012083045362315294/zediHwvM85za47VQMbE2pFzan7E0FGKScelN0ue9s2CTYTXSRsXhJ1kPA1EQwHUc4rnQ", function(err, text, headers) end, 'POST', json.encode({username = "qpixel | Job Payout Log", embeds = connect, avatar_url = "https://i.imgur.com/hMqEEQp.png"}), { ['Content-Type'] = 'application/json' })
end)