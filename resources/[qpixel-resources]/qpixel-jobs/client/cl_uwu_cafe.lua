-- Stash --

local Uwu_Cafe_Stash = false

RegisterNetEvent('qpixel-polyzone:enter')
AddEventHandler('qpixel-polyzone:enter', function(name)
    if name == "Uwu_Cafe_Stash" then
        Uwu_Cafe_Stash = true
        UwuStash()
        local isEmployed = exports["qpixel-business"]:IsEmployedAt("uwu_cafe")
        if isEmployed then
            exports['qpixel-interface']:showInteraction("[E] Stash")
        end
    end
end)

RegisterNetEvent('qpixel-polyzone:exit')
AddEventHandler('qpixel-polyzone:exit', function(name)
    if name == "Uwu_Cafe_Stash" then
        Uwu_Cafe_Stash = false
        exports['qpixel-interface']:hideInteraction()
    end
end)

function UwuStash()
	Citizen.CreateThread(function()
        while Uwu_Cafe_Stash do
            Citizen.Wait(5)
			if IsControlJustReleased(0, 38) then
                local isEmployed = exports["qpixel-business"]:IsEmployedAt("uwu_cafe")
                if isEmployed then
                    TriggerEvent('server-inventory-open', '1', 'uwu-cafe-stash')
                end
			end
		end
	end)
end

Citizen.CreateThread(function()
    exports["qpixel-polyzone"]:AddBoxZone("Uwu_Cafe_Stash", vector3(-585.62, -1055.82, 22.34), 1, 2.4, {
        name="Uwu_Cafe_Stash",
        heading=0,
        minZ=19.54,
        maxZ=23.54
    })
end)

-- Trays --

exports["qpixel-polytarget"]:AddCircleZone("uwu_cafe_tray_1", vector3(-583.97, -1059.3, 22.34), 0.4, {
    useZ=true,
})

exports["qpixel-polytarget"]:AddCircleZone("uwu_cafe_tray_2", vector3(-583.97, -1062.08, 22.34), 0.4, {
    useZ=true,
})

 -- Tray 1
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("uwu_cafe_tray_1", {{
    event = "qpixel-jobs:UwuCafeTray1",
    id = "uwu_cafe_tray_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Tray 2
exports["qpixel-interact"]:AddPeekEntryByPolyTarget("uwu_cafe_tray_2", {{
    event = "qpixel-jobs:UwuCafeTray2",
    id = "uwu_cafe_tray_2",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qpixel-jobs:UwuCafeTray1')
AddEventHandler('qpixel-jobs:UwuCafeTray1', function()
    TriggerEvent("server-inventory-open", "1", "traysz-Uwu Cafe Tray")
end)

RegisterNetEvent('qpixel-jobs:UwuCafeTray2')
AddEventHandler('qpixel-jobs:UwuCafeTray2', function()
    TriggerEvent("server-inventory-open", "1", "trays-Uwu Cafe Tray")
end)

-- Food Warmer --

exports["qpixel-polytarget"]:AddBoxZone("uwu_cafe_food_warmer", vector3(-587.08, -1059.68, 22.34), 1, 2.8, {
    heading=270,
    --debugPoly=true,
    minZ=19.94,
    maxZ=23.94
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("uwu_cafe_food_warmer", {{
    event = "qpixel-jobs:UwuFoodWarmer",
    id = "uwu_cafe_food_warmer",
    icon = "hand-holding",
    label = "Food Warmer",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("uwu_cafe_food_warmer", {{
    event = "qpixel-dispatch:uwuAlarm",
    id = "uwu_cafe_food_warmer1",
    icon = "bell",
    label = "Alert Police",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qpixel-dispatch:uwuAlarm')
AddEventHandler('qpixel-dispatch:uwuAlarm', function()
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        exports["qpixel-dispatch"]:policedead('10-13A', "UwU Cafe Panic Alarm", "59", true)
    end
end)

RegisterNetEvent('qpixel-jobs:UwuFoodWarmer')
AddEventHandler('qpixel-jobs:UwuFoodWarmer', function()
    TriggerEvent("server-inventory-open", "1", "uwuw-food-warmer")
end)

exports["qpixel-polytarget"]:AddBoxZone("qpixel_uwu_make_food", vector3(-588.25, -1059.68, 22.36), 1, 2.4, {
    heading=270,
    --debugPoly=true,
    minZ=18.76,
    maxZ=22.76
})

 -- Food Shtuff
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("qpixel_uwu_make_food", {{
    event = "qpixel-jobs:uwuCafeFood",
    id = "qpixel_uwu_make_food",
    icon = "hand-holding",
    label = "Prepare Food",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Drinks --

-- Coffee
-- Booba Milk Tea

-- Bento Boxes

RegisterNetEvent('qpixel-jobs:uwuCafeFood')
AddEventHandler('qpixel-jobs:uwuCafeFood', function()
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        local pFoodMaker = {
            {
                title = "Main Dishes",
                description = "Here you can find a list of the main dishes.",
                children = {
                    {
                        title = "Rice Balls",
                        description = "Required Ingridients: 1x Nori | 1x Rice",
                        action = "qpixel-jobs:uwuMakeRiceBalls"
                    },
                    {
                        title = "Chicken Noodle Soup",
                        description = "Required Ingridients: 1x Noodles | 1x Chicken Breast",
                        action = "qpixel-jobs:uwuMakeNoodleSoup"
                    },
                    {
                        title = "Doki Doki Pancakes",
                        description = "Required Ingridients: 1x Strawberries | 1x Whipped Cream",
                        action = "qpixel-jobs:uwuMakePancakes"
                    },
                }
            },
            {
                title = "Deserts",
                description = "Here you can find a list of the deserts.",
                children = {
                    {
                        title = "Chocolate Cake", 
                        description = "Required Ingridients: 1x Chocolate Chips | 1x Flour",
                        action = "qpixel-jobs:uwuMakeCake"  
                    },
                    {
                        title = "Strawberry Shortcake",
                        description = "Required Ingridients: 1x Strawberries | 1x Flour",
                        action = "qpixel-jobs:uwuMakeShortcake"  
                    },
                }
            },
            {
                title = "Bento Box",
                description = "Grab a bento box to put the customers food in.",
                action = "qpixel-jobs:uwuGrabBentoBox"
            },
        }
        exports["qpixel-interface"]:showContextMenu(pFoodMaker)
    end
end)

RegisterInterfaceCallback('qpixel-jobs:uwuGrabBentoBox', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('player:receiveItem', 'bentobox', 1)
end)

RegisterInterfaceCallback('qpixel-jobs:uwuMakeRiceBalls', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        if exports['qpixel-inventory']:hasEnoughOfItem('rice', 1) and exports['qpixel-inventory']:hasEnoughOfItem('nori', 1) then
            FreezeEntityPosition(PlayerPedId(), true)
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            local finished = exports['qpixel-taskbar']:taskBar(5000, 'Preparing Rice Balls...')
            if finished == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'nori', 1)
                TriggerEvent('inventory:removeItem', 'rice', 1)
                TriggerEvent('player:receiveItem', 'rice_balls', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    end
end)

RegisterInterfaceCallback('qpixel-jobs:uwuMakeNoodleSoup', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        if exports['qpixel-inventory']:hasEnoughOfItem('chicken_breast', 1) and exports['qpixel-inventory']:hasEnoughOfItem('noodles', 1) then
            FreezeEntityPosition(PlayerPedId(), true)
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            local chickenb = exports['qpixel-taskbar']:taskBar(2500, 'Preparing Chicken Breast...')
            if chickenb == 100 then
                Citizen.Wait(100)
                TriggerEvent('animation:PlayAnimation', 'cokecut')
                local noodles = exports['qpixel-taskbar']:taskBar(2500, 'Preparing Noodles')
                if noodles == 100 then
                    Citizen.Wait(100)
                    TriggerEvent('animation:PlayAnimation', 'cokecut')
                    local dish = exports['qpixel-taskbar']:taskBar(5000, 'Preparing Final Dish...')
                    if dish == 100 then
                        FreezeEntityPosition(PlayerPedId(), false)
                        TriggerEvent('inventory:removeItem', 'chicken_breast', 1)
                        TriggerEvent('inventory:removeItem', 'noodles', 1)
                        TriggerEvent('player:receiveItem', 'chicken_noodle_soup', 1)
                    else
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                else
                    FreezeEntityPosition(PlayerPedId(), false)
                end
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    end
end)

RegisterInterfaceCallback('qpixel-jobs:uwuMakePancakes', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        if exports['qpixel-inventory']:hasEnoughOfItem('whipped_cream', 1) and exports['qpixel-inventory']:hasEnoughOfItem('strawberries', 1) then
            FreezeEntityPosition(PlayerPedId(), true)
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            local dish = exports['qpixel-taskbar']:taskBar(5000, 'Preparing Pancakes...')
            if dish == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'whipped_cream', 1)
                TriggerEvent('inventory:removeItem', 'strawberries', 1)
                TriggerEvent('player:receiveItem', 'doki_doki_pancakes', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    end
end)

--// Deserts //--

RegisterInterfaceCallback('qpixel-jobs:uwuMakeCake', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        if exports['qpixel-inventory']:hasEnoughOfItem('chocolate_chips', 1) and exports['qpixel-inventory']:hasEnoughOfItem('flour', 1) then
            FreezeEntityPosition(PlayerPedId(), true)
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            local dish = exports['qpixel-taskbar']:taskBar(5000, 'Preparing Chocolate Cake...')
            if dish == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'chocolate_chips', 1)
                TriggerEvent('inventory:removeItem', 'flour', 1)
                TriggerEvent('player:receiveItem', 'chocolate_cake', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    end
end)

RegisterInterfaceCallback('qpixel-jobs:uwuMakeShortcake', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        if exports['qpixel-inventory']:hasEnoughOfItem('strawberries', 1) and exports['qpixel-inventory']:hasEnoughOfItem('flour', 1) then
            FreezeEntityPosition(PlayerPedId(), true)
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            local dish = exports['qpixel-taskbar']:taskBar(5000, 'Preparing Short Cake...')
            if dish == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'strawberries', 1)
                TriggerEvent('inventory:removeItem', 'flour', 1)
                TriggerEvent('player:receiveItem', 'strawberry_shortcake', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    end
end)

RegisterNetEvent('qpixel-jobs:uwuCafeFridge', function()
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        TriggerEvent("server-inventory-open", "999", "Shop")
    end
end)

exports["qpixel-polytarget"]:AddBoxZone("qpixel_uwu_fridge", vector3(-590.96, -1058.51, 22.34), 1, 1, {
    heading=0,
    --debugPoly=true,
    minZ=19.54,
    maxZ=23.54
})

 -- Food Shtuff
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("qpixel_uwu_fridge", {{
    event = "qpixel-jobs:uwuCafeFridge",
    id = "qpixel_uwu_fridge",
    icon = "circle",
    label = "Fridge",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Drinks --

exports["qpixel-polytarget"]:AddCircleZone("qpixel_uwu_drinks", vector3(-586.95, -1061.92, 22.39), 0.5, {
    useZ=true,
})

 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("qpixel_uwu_drinks", {{
    event = "qpixel-jobs:uwuCafeDrinks",
    id = "qpixel_uwu_drinks",
    icon = "circle",
    label = "Drinks",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qpixel-jobs:uwuCafeDrinks')
AddEventHandler('qpixel-jobs:uwuCafeDrinks', function()
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        local pDrinkMachine = {
            {
                title = "Drinks",
                description = "Make a nice refreshing drink for the customer\'s.",
                children = {
                    {
                        title = "Make Bubble Tea",
                        action = "qpixel-jobs:MakeBubbleTea"
                    },
                    {
                        title = "Make Coffee",
                        action = "qpixel-jobs:MakeCoffee"
                    },
                    {
                        title = "Make Water",
                        action = "qpixel-jobs:MakeWater"
                    },
                }
            },
        }
        exports["qpixel-interface"]:showContextMenu(pDrinkMachine)
    end
end)

RegisterInterfaceCallback('qpixel-jobs:MakeBubbleTea', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        FreezeEntityPosition(PlayerPedId(), true)
        TriggerEvent('animation:PlayAnimation', 'cokecut')
        local finished = exports['qpixel-taskbar']:taskBar(5000, 'Pouring Bubble Tea')
        if finished == 100 then
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerEvent('player:receiveItem', 'bubbletea', 1)
        end
    end
end)

RegisterInterfaceCallback('qpixel-jobs:MakeCoffee', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        FreezeEntityPosition(PlayerPedId(), true)
        TriggerEvent('animation:PlayAnimation', 'cokecut')
        local finished = exports['qpixel-taskbar']:taskBar(5000, 'Pouring Coffee')
        if finished == 100 then
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerEvent('player:receiveItem', 'coffee', 1)
        end
    end
end)

RegisterInterfaceCallback('qpixel-jobs:MakeWater', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    if exports['qpixel-business']:IsEmployedAt('uwu_cafe') then
        FreezeEntityPosition(PlayerPedId(), true)
        TriggerEvent('animation:PlayAnimation', 'cokecut')
        local finished = exports['qpixel-taskbar']:taskBar(5000, 'Pouring Water')
        if finished == 100 then
            FreezeEntityPosition(PlayerPedId(), false)
            TriggerEvent('player:receiveItem', 'water', 1)
        end
    end
end)