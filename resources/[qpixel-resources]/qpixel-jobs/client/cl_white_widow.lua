RegisterNetEvent('qpixel-jobs:whiteWidowTray')
AddEventHandler('qpixel-jobs:whiteWidowTray', function()
    TriggerEvent('server-inventory-open', '1', 'trays- White Widow -widow1')
end)

exports["qpixel-polytarget"]:AddBoxZone("tray_whitewidow_1", vector3(188.62, -242.18, 54.07), 1, 0.6, {
    heading=340,
    --debugPoly=false,
    minZ=50.47,
    maxZ=54.47
})

 -- Tray 1
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("tray_whitewidow_1", {{
    event = "qpixel-jobs:whiteWidowTray",
    id = "tray_whitewidow_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Pick Weed --

Citizen.CreateThread(function()
    exports["qpixel-polyzone"]:AddBoxZone("white_widow_pick", vector3(164.42, -238.47, 50.06), 5, 4.0, {
        name="white_widow_pick",
        heading=250,
        --debugPoly=false,
        minZ=48.06,
        maxZ=52.06
    })

    exports["qpixel-polyzone"]:AddBoxZone("white_widow_pick", vector3(170.68, -240.92, 50.06), 5, 4.2, {
        name="white_widow_pick",
        heading=250,
        --debugPoly=false,
        minZ=48.46,
        maxZ=52.46
    })
end)

local whiteWidowPick = false

RegisterNetEvent('qpixel-polyzone:enter')
AddEventHandler('qpixel-polyzone:enter', function(name)
    if name == "white_widow_pick" then
        whiteWidowPick = true
        pPickWeed()
        local isEmployed = exports["qpixel-business"]:IsEmployedAt("white_widow")
        if isEmployed then
            exports['qpixel-interface']:showInteraction("[E] Pick Weed")
        end
    end
end)

RegisterNetEvent('qpixel-polyzone:exit')
AddEventHandler('qpixel-polyzone:exit', function(name)
    if name == "white_widow_pick" then
        whiteWidowPick = false
        exports['qpixel-interface']:hideInteraction()
    end
end)

function pPickWeed()
	Citizen.CreateThread(function()
        while whiteWidowPick do
            Citizen.Wait(5)
			if IsControlJustReleased(0, 38) then
                local isEmployed = exports["qpixel-business"]:IsEmployedAt("white_widow")
                if isEmployed then
                    LoadAnim('amb@world_human_gardener_plant@male@base')
                    FreezeEntityPosition(PlayerPedId(),true)
                    Citizen.Wait(500)
                    ClearPedTasksImmediately(PlayerPedId())
                    TaskPlayAnim(PlayerPedId(), "amb@world_human_gardener_plant@male@base", "base", 8.0, -8, -1, 49, 0, 0, 0, 0)
                    local finished = exports['qpixel-taskbar']:taskBar(10000, 'Picking Weed...')
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

RegisterNetEvent('qpixel-jobs:whiteWidowCraft')
AddEventHandler('qpixel-jobs:whiteWidowCraft', function()
    local isEmp = exports['qpixel-business']:IsEmployedAt('white_widow')
    if isEmp then
        TriggerEvent('server-inventory-open', '17', 'Craft')
    end
end)

exports["qpixel-polytarget"]:AddBoxZone("craftWhiteWidow", vector3(164.48, -233.49, 50.06), 1, 2.4, {
    heading=250,
    --debugPoly=false,
    minZ=46.26,
    maxZ=50.26
})

 -- Tray 1
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("craftWhiteWidow", {{
    event = "qpixel-jobs:whiteWidowCraft",
    id = "craftWhiteWidow",
    icon = "circle",
    label = "Craft",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddBoxZone("white_widow_stash", vector3(185.49, -242.18, 54.06), 1, 2.8, {
    heading=250,
    --debugPoly=false,
    minZ=50.66,
    maxZ=54.66
})

 -- Tray 1
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("white_widow_stash", {{
    event = "qpixel-jobs:bestBudsStash",
    id = "white_widow_stash",
    icon = "box",
    label = "Stash",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qpixel-jobs:bestBudsStash')
AddEventHandler('qpixel-jobs:bestBudsStash', function()
    if exports['qpixel-business']:IsEmployedAt('white_widow') then
        TriggerEvent('server-inventory-open', '1', 'stash-white-widow')
    end
end)