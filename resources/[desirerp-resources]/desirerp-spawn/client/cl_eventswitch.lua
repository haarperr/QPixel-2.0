pRan = false

function Login.playerLoaded() end

function Login.characterLoaded()
  -- Main events leave alone 
  TriggerEvent("desirerp-base:playerSpawned")
  TriggerEvent("playerSpawned")
  TriggerServerEvent('character:loadspawns')
  TriggerEvent("desirerp-base:initialSpawnModelLoaded")
  -- Main events leave alone 

  -- Everything that should trigger on character load 
  TriggerServerEvent('checkTypes')
  TriggerServerEvent('isVip')
  TriggerEvent("fx:clear")
  TriggerEvent('desirerp-bankrobbery:client:CreateTrollysEvent')
  TriggerServerEvent("currentconvictions")
  TriggerServerEvent("Evidence:checkDna")
  TriggerEvent("banking:viewBalance")
  TriggerServerEvent('desirerp-doors:requestlatest')
  TriggerServerEvent("item:UpdateItemWeight")
  TriggerServerEvent("ReturnHouseKeys")
  TriggerServerEvent("requestOffices")
  Wait(500)
  TriggerServerEvent("police:getAnimData")
  TriggerServerEvent("server:currentpasses")
  TriggerEvent("desirerp-hud:SetValues", exports['isPed']:isPed('cid'))
  TriggerServerEvent("police:getEmoteData")
  TriggerServerEvent("police:SetMeta")
  TriggerServerEvent('desirerp-scoreboard:AddPlayer')
  TriggerServerEvent("desirerp-base:PolyZoneUpdate")
  TriggerEvent("desirerp-housing:loadHousingClient")
  TriggerEvent("desirerp-admin/client/loadMenu")
  TriggerServerEvent("desirerp-housing:getGarages")
  TriggerServerEvent("desirerp-phone:getAbdulTaxies")
  TriggerServerEvent("retreive:jail",exports["isPed"]:isPed("cid"))
  TriggerServerEvent("desirerp-phone:checkForNonDocumentedLicenses", exports['isPed']:isPed("cid"))
  -- TriggerServerEvent("weapon:general:check")
  -- Anything that might need to wait for the client to get information, do it here.
  TriggerServerEvent("login:get:keys")
  TriggerServerEvent("raid_clothes:retrieve_tats")
  
  -- // New Clothing Menu // --
  --TriggerServerEvent("desirerp_clothing:retrieve_tats")
  --TriggerServerEvent('desirerp_clothing:get_character_current')
  --TriggerServerEvent('desirerp_clothing:get_character_face')

  TriggerServerEvent("desirerp-weapons:getAmmo")
  Wait(4000)
  TriggerServerEvent("bank:getLogs")
  TriggerEvent('desirerp-hud:EnableHud', true)
end

RegisterNetEvent('desirerp-spawn:spawnCharacter')
AddEventHandler('desirerp-spawn:spawnCharacter', function()

  if not pRan then
    pRan = true
    isNear = false
    TriggerServerEvent('desirerp-base:sv:player_control')
    TriggerServerEvent('desirerp-base:sv:player_settings')
    TriggerEvent("spawning", false)
    TriggerEvent("attachWeapons")
    TriggerServerEvent("request-dropped-items")
    TriggerServerEvent("server-request-update", exports["isPed"]:isPed("cid"))

    if Spawn.isNew then
        Wait(1000)
        TriggerEvent("player:receiveItem", "mobilephone", 1)
        TriggerEvent("player:receiveItem", "idcard", 1)
        TriggerEvent("player:receiveItem", "lockpick", 2)
        TriggerEvent("player:receiveItem", "sandwich", 3)
        TriggerEvent("player:receiveItem", "water", 3)
        TriggerEvent("player:receiveItem", "repairkit", 1)
        TriggerEvent("player:receiveItem", "skateboard", 1)

        TriggerEvent('desirerp-hud:ChangeThirst', 95)
        TriggerEvent('desirerp-hud:ChangeHunger', 95)
        TriggerEvent('desirerp-hud:SaveValues')
        TriggerServerEvent('desirerp-spawn:initBoosting')
        -- TriggerServerEvent('desirerp-spawn:licenses')

        -- commands to make sure player is alive and full food/water/health/no injuries
        local src = GetPlayerServerId(PlayerId())
        TriggerServerEvent("reviveGranted", src)
        TriggerEvent("Hospital:HealInjuries", src, true)
        TriggerServerEvent("ems:healplayer", src)
        TriggerEvent("heal", src)
        TriggerEvent("status:needs:restore", src) 

        TriggerServerEvent("desirerp-spawn:newPlayerFullySpawned")
      end
  end
  SetPedMaxHealth(PlayerPedId(), 200)
  runGameplay()
  Spawn.isNew = false
end)