RegisterNetEvent('desirerp-jobs:whiteWidowTray')
AddEventHandler('desirerp-jobs:whiteWidowTray', function()
    TriggerEvent('server-inventory-open', '1', 'trays- White Widow -widow1')
end)

exports["desirerp-polytarget"]:AddBoxZone("tray_whitewidow_1", vector3(188.62, -242.18, 54.07), 1, 0.6, {
    heading=340,
    --debugPoly=true,
    minZ=50.47,
    maxZ=54.47
})

 -- Tray 1
 exports["desirerp-interact"]:AddPeekEntryByPolyTarget("tray_whitewidow_1", {{
    event = "desirerp-jobs:whiteWidowTray",
    id = "tray_whitewidow_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Pick Weed --

Citizen.CreateThread(function()
    exports["desirerp-polyzone"]:AddBoxZone("white_widow_pick", vector3(164.42, -238.47, 50.06), 5, 4.0, {
        name="white_widow_pick",
        heading=250,
        --debugPoly=true,
        minZ=48.06,
        maxZ=52.06
    })

    exports["desirerp-polyzone"]:AddBoxZone("white_widow_pick", vector3(170.68, -240.92, 50.06), 5, 4.2, {
        name="white_widow_pick",
        heading=250,
        --debugPoly=true,
        minZ=48.46,
        maxZ=52.46
    })
end)

local whiteWidowPick = false

RegisterNetEvent('desirerp-polyzone:enter')
AddEventHandler('desirerp-polyzone:enter', function(name)
    if name == "white_widow_pick" then
        whiteWidowPick = true
        pPickWeed()
        local isEmployed = exports["desirerp-business"]:IsEmployedAt("white_widow")
        if isEmployed then
            exports['desirerp-interface']:showInteraction("[E] Pick Weed")
        end
    end
end)

RegisterNetEvent('desirerp-polyzone:exit')
AddEventHandler('desirerp-polyzone:exit', function(name)
    if name == "white_widow_pick" then
        whiteWidowPick = false
        exports['desirerp-interface']:hideInteraction()
    end
end)

function pPickWeed()
	Citizen.CreateThread(function()
        while whiteWidowPick do
            Citizen.Wait(5)
			if IsControlJustReleased(0, 38) then
                local isEmployed = exports["desirerp-business"]:IsEmployedAt("white_widow")
                if isEmployed then
                    LoadAnim('amb@world_human_gardener_plant@male@base')
                    FreezeEntityPosition(PlayerPedId(),true)
                    Citizen.Wait(500)
                    ClearPedTasksImmediately(PlayerPedId())
                    TaskPlayAnim(PlayerPedId(), "amb@world_human_gardener_plant@male@base", "base", 8.0, -8, -1, 49, 0, 0, 0, 0)
                    local finished = exports['desirerp-taskbar']:taskBar(10000, 'Picking Weed...')
                    if finished == 100 then
                        FreezeEntityPosition(PlayerPedId(), false)
                        TriggerEvent("player:receiveItem", 'weedoz', math.random(1, 5))
                    else
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                end
			end
		end
	end)
end

function LoadAnim(animDict)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end
end

RegisterNetEvent('desirerp-jobs:whiteWidowCraft')
AddEventHandler('desirerp-jobs:whiteWidowCraft', function()
    local isEmp = exports['desirerp-business']:IsEmployedAt('white_widow')
    if isEmp then
        TriggerEvent('server-inventory-open', '17', 'Craft')
    end
end)

exports["desirerp-polytarget"]:AddBoxZone("craftWhiteWidow", vector3(164.48, -233.49, 50.06), 1, 2.4, {
    heading=250,
    --debugPoly=true,
    minZ=46.26,
    maxZ=50.26
})

 -- Tray 1
 exports["desirerp-interact"]:AddPeekEntryByPolyTarget("craftWhiteWidow", {{
    event = "desirerp-jobs:whiteWidowCraft",
    id = "craftWhiteWidow",
    icon = "circle",
    label = "Craft",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("white_widow_stash", vector3(185.49, -242.18, 54.06), 1, 2.8, {
    heading=250,
    --debugPoly=true,
    minZ=50.66,
    maxZ=54.66
})

 -- Tray 1
 exports["desirerp-interact"]:AddPeekEntryByPolyTarget("white_widow_stash", {{
    event = "desirerp-jobs:bestBudsStash",
    id = "white_widow_stash",
    icon = "box",
    label = "Stash",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('desirerp-jobs:bestBudsStash')
AddEventHandler('desirerp-jobs:bestBudsStash', function()
    if exports['desirerp-business']:IsEmployedAt('white_widow') then
        TriggerEvent('server-inventory-open', '1', 'stash-white-widow')
    end
end)