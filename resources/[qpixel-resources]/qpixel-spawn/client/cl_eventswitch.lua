pRan = false

function Login.playerLoaded() end

function Login.characterLoaded()
  -- Main events leave alone 
  TriggerEvent("qpixel-base:playerSpawned")
  TriggerEvent("playerSpawned")
  TriggerServerEvent('character:loadspawns')
  TriggerEvent("qpixel-base:initialSpawnModelLoaded")
  -- Main events leave alone 

  -- Everything that should trigger on character load 
  TriggerServerEvent('checkTypes')
  TriggerServerEvent('isVip')
  TriggerEvent("fx:clear")
  TriggerServerEvent("raid_clothes:retrieve_tats")
  TriggerEvent('qpixel-bankrobbery:client:CreateTrollysEvent')
  TriggerServerEvent("currentconvictions")
  TriggerServerEvent("Evidence:checkDna")
  TriggerEvent("banking:viewBalance")
  TriggerServerEvent('qpixel-doors:requestlatest')
  TriggerServerEvent("item:UpdateItemWeight")
  TriggerServerEvent("ReturnHouseKeys")
  TriggerServerEvent("requestOffices")
  Wait(500)
  TriggerServerEvent("police:getAnimData")
  TriggerServerEvent("server:currentpasses")
  TriggerEvent("qpixel-hud:SetValues", exports['isPed']:isPed('cid'))
  TriggerServerEvent("police:getEmoteData")
  TriggerServerEvent("police:SetMeta")
  TriggerServerEvent('qpixel-scoreboard:AddPlayer')
  TriggerServerEvent("qpixel-base:PolyZoneUpdate")
  TriggerEvent("qpixel-housing:loadHousingClient")
  TriggerEvent("qpixel-admin/client/loadMenu")
  TriggerServerEvent("qpixel-housing:getGarages")
  TriggerServerEvent("qpixel-phone:getAbdulTaxies")
  TriggerServerEvent("retreive:jail",exports["isPed"]:isPed("cid"))
  TriggerServerEvent("qpixel-phone:checkForNonDocumentedLicenses", exports['isPed']:isPed("cid"))
  -- TriggerServerEvent("weapon:general:check")
  -- Anything that might need to wait for the client to get information, do it here.
  TriggerServerEvent("login:get:keys")

  --Sync Whiteboards
  TriggerServerEvent("SpawnEventsServer")

  
  -- // New Clothing Menu // --
  --TriggerServerEvent("qpixel_clothing:retrieve_tats")
  --TriggerServerEvent('qpixel_clothing:get_character_current')
  --TriggerServerEvent('qpixel_clothing:get_character_face')

  TriggerServerEvent("qpixel-weapons:getAmmo")
  Wait(4000)
  TriggerServerEvent("bank:getLogs")
  TriggerEvent('qpixel-hud:EnableHud', true)
end

RegisterNetEvent('qpixel-spawn:spawnCharacter')
AddEventHandler('qpixel-spawn:spawnCharacter', function()

  if not pRan then
    pRan = true
    isNear = false
    TriggerServerEvent('qpixel-base:sv:player_control')
    TriggerServerEvent('qpixel-base:sv:player_settings')
    TriggerEvent("spawning", false)
    TriggerEvent("attachWeapons")
    TriggerServerEvent("request-dropped-items")
    TriggerServerEvent("server-request-update", exports["isPed"]:isPed("cid"))

    if Spawn.isNew then
        Wait(1000)

        TriggerEvent('qpixel-hud:ChangeThirst', 95)
        TriggerEvent('qpixel-hud:ChangeHunger', 95)
        TriggerEvent('qpixel-hud:SaveValues')
        TriggerServerEvent('qpixel-spawn:initBoosting')
        -- TriggerServerEvent('qpixel-spawn:licenses')

        -- commands to make sure player is alive and full food/water/health/no injuries
        local src = GetPlayerServerId(PlayerId())
        TriggerServerEvent("reviveGranted", src)
        TriggerEvent("Hospital:HealInjuries", src, true)
        TriggerServerEvent("ems:healplayer", src)
        TriggerEvent("heal", src)
        TriggerEvent("status:needs:restore", src) 

        TriggerServerEvent("qpixel-spawn:newPlayerFullySpawned")
      end
  end
  SetPedMaxHealth(PlayerPedId(), 200)
  runGameplay()
  Spawn.isNew = false
end)