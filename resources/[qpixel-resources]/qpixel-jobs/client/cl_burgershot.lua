RegisterNetEvent('qpixel-jobs:burgershot-warmer')
AddEventHandler('qpixel-jobs:burgershot-warmer', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        TriggerEvent("server-inventory-open", "1", "storage-burger_warmer")
        Wait(1000)
    else
        TriggerEvent('DoLongHudText', 'You do not work here !',2)
    end
end)

RegisterNetEvent("qpixel-burgershot:startfryer")
AddEventHandler("qpixel-burgershot:startfryer", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qpixel-inventory']:hasEnoughOfItem('potato', 1) then
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['qpixel-taskbar']:taskBar(10000, 'Dropping Fries')
            if (finished == 100) then
                TriggerEvent('player:receiveItem', 'fries', 1)
                TriggerEvent('inventory:removeItem', 'potato', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', "You need more patato's (Required Amount: x1)", 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent("qpixel-burgershot:makeshake")
AddEventHandler("qpixel-burgershot:makeshake", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qpixel-inventory']:hasEnoughOfItem('milk', 1) then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qpixel-taskbar']:taskBar(10000, 'Making Shake')
        if (finished == 100) then
            TriggerEvent('inventory:removeItem', 'milk', 1)
            TriggerEvent('player:receiveItem', 'mshake', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
            Citizen.Wait(1000)
            TriggerEvent("animation:PlayAnimation","layspike")
            Citizen.Wait(1000)
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    else
        TriggerEvent('DoLongHudText',"You need milk (Required Amount: x1)",2)
    end
else
    TriggerEvent('DoLongHudText', 'You dont work here', 2)
end
end)


RegisterNetEvent("qpixel-burgershot:soft-drink")
AddEventHandler("qpixel-burgershot:soft-drink", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then   
        if exports['qpixel-inventory']:hasEnoughOfItem('burgershot_cup', 1) then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qpixel-taskbar']:taskBar(10000, 'Making Soft Drink')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'softdrink', 1)
            TriggerEvent('inventory:removeItem', 'burgershot_cup', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
            Citizen.Wait(1000)
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    else
        TriggerEvent('DoLongHudText',"Required Ingridients: 1x Sugar | 1x Empty Burgershot Cup",2)
    end
else
    TriggerEvent('DoLongHudText', 'You dont work here', 2)
end
end)

RegisterNetEvent("qpixel-burgershot:getcola")
AddEventHandler("qpixel-burgershot:getcola", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then  
        if exports['qpixel-inventory']:hasEnoughOfItem('sugarbs', 1) then  
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qpixel-taskbar']:taskBar(10000, 'Pouring Cola')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'cola', 1)
            TriggerEvent('inventory:removeItem', 'sugarbs', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
            Citizen.Wait(1000)
            TriggerEvent("animation:PlayAnimation","layspike")
            Citizen.Wait(1000)
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    else
        TriggerEvent('DoLongHudText',"You need more sugar (Required Amount: x1)",2)
    end
else
    TriggerEvent('DoLongHudText', 'You dont work here', 2)
end
end)

RegisterNetEvent('qpixel-burgershot:get_water')
AddEventHandler('qpixel-burgershot:get_water', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['qpixel-taskbar']:taskBar(10000, 'Pouring Water')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'water', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            ClearPedTasks(GetPlayerPed(-1))
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    end
end)

function LoadDict(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	  	Citizen.Wait(10)
    end
end

--// Counter

RegisterNetEvent('qpixel-burgershot:counter')
AddEventHandler('qpixel-burgershot:counter', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
		TriggerEvent("server-inventory-open", "1", "counter-burger_shot")
		Wait(1000)
else
    TriggerEvent('DoLongHudText', 'You do not work here !',2)
    end
end)

--// Store

RegisterNetEvent('qpixel-burgershot:store')
AddEventHandler('qpixel-burgershot:store', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        TriggerEvent("server-inventory-open", "45", "Shop")
		Wait(1000)
    else
        TriggerEvent('DoLongHudText', 'You do not work here !',2)
        end
    end)

--// Make Burgers

RegisterNetEvent('qpixel-civjobs:burgershot-heartstopper')
AddEventHandler('qpixel-civjobs:burgershot-heartstopper', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qpixel-inventory']:hasEnoughOfItem('burgershotpatty', 2) and exports['qpixel-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qpixel-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['qpixel-inventory']:hasEnoughOfItem('tomato', 1) and exports['qpixel-inventory']:hasEnoughOfItem('cheese', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local heartstopper = exports['qpixel-taskbar']:taskBar(5000, 'Cooking Heartstopper')
            if (heartstopper == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1) 
                TriggerEvent('inventory:removeItem', 'burgershotpatty', 2) 
                TriggerEvent('inventory:removeItem', 'lettuce', 1) 
                TriggerEvent('inventory:removeItem', 'tomato', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'heartstopper', 1)
                TriggerEvent('DoLongHudText', 'Cooked Heartstopper', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Burger Buns | 2x Cooked Burger Pattys | 1x Lettuce | 1x Tomato | 1x Cheese', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('qpixel-civjobs:burgershot-moneyshot')
AddEventHandler('qpixel-civjobs:burgershot-moneyshot', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qpixel-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['qpixel-inventory']:hasEnoughOfItem('burgershotpatty', 1) and exports['qpixel-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qpixel-inventory']:hasEnoughOfItem('tomato', 1) and exports['qpixel-inventory']:hasEnoughOfItem('cheese', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local moneyshot = exports['qpixel-taskbar']:taskBar(5000, 'Cooking Moneyshot')
            if (moneyshot == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1)
                TriggerEvent('inventory:removeItem', 'burgershotpatty', 1)
                TriggerEvent('inventory:removeItem', 'lettuce', 1)
                TriggerEvent('inventory:removeItem', 'tomato', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'moneyshot', 1)
                TriggerEvent('DoLongHudText', 'Cooked Moneyshot', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Burger Buns | 1x Cooked Burger Patty | 1x Cheese | 1x Lettuce | 1x Tomato', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('qpixel-civjobs:burgershot-meatfree')
AddEventHandler('qpixel-civjobs:burgershot-meatfree', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qpixel-inventory']:hasEnoughOfItem('burgershotpatty2', 1) and exports['qpixel-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qpixel-inventory']:hasEnoughOfItem('hamburgerbuns', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local meatfree = exports['qpixel-taskbar']:taskBar(5000, 'Cooking Meat Free')
            if (meatfree == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'lettuce', 1)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1)
                TriggerEvent('inventory:removeItem', 'burgershotpatty2', 1)
                TriggerEvent('player:receiveItem', 'meatfree', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Burger Buns | 1x Lettuce | 1x Cooked Meat Free Patty', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)  

RegisterNetEvent('qpixel-civjobs:burgershot-bleeder')
AddEventHandler('qpixel-civjobs:burgershot-bleeder', function()
    local ped = PlayerPedId()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['qpixel-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['qpixel-inventory']:hasEnoughOfItem('lettuce', 1) and exports['qpixel-inventory']:hasEnoughOfItem('burgershotpatty', 1) and exports['qpixel-inventory']:hasEnoughOfItem('cheese', 1) and exports['qpixel-inventory']:hasEnoughOfItem('tomato', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local meatfree = exports['qpixel-taskbar']:taskBar(5000, 'Cooking Bleeder Burger')
            if (meatfree == 100) then
                FreezeEntityPosition(ped, false)
                TriggerEvent('inventory:removeItem', 'lettuce', 1)
                TriggerEvent('inventory:removeItem', 'hamburgerbuns', 1)
                TriggerEvent('inventory:removeItem', 'burgershotpatty', 1)
                TriggerEvent('inventory:removeItem', 'tomato', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'bleederburger', 1)
            else
                FreezeEntityPosition(ped, false)
            end
        else
            TriggerEvent('DoLongHudText', 'Requires: 1x Lettuce | 1x Patty | 1x Burger Buns', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)  

-- // Drink Machine Start // --

RegisterNetEvent('qpixel-jobs:burgershot-drinks')
AddEventHandler('qpixel-jobs:burgershot-drinks', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotDrinks = {
            {
                title = 'Burger Shot Drinks',
                icon = "glass-whiskey"
            },
            {
                title = "Pour Cola",
                description = "Pour a nice refreshing Cola",
                icon = "beer",
                action = 'qpixel-burgershot:cola',
            },
            {
                title = "Pour Milkshake",
                description = "Pour a Ice Cold Milkshake",
                icon = "beer",
                action = 'qpixel-burgershot:shake',
            },
            {
                title = "Pour Soft Drink",
                description = "Pour a monsterous sweet Soft Drink",
                icon = "beer",
                action = 'qpixel-burgershot:drink',
            },
            {
                title = "Pour Cup Of Water",
                description = "Pour a Cup Of Water",
                icon = "beer",
                action = 'qpixel-burgershot:water',
            },
        }
        exports["qpixel-interface"]:showContextMenu(BurgershotDrinks)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('qpixel-burgershot:cola', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-burgershot:getcola')
end)

RegisterInterfaceCallback('qpixel-burgershot:shake', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-burgershot:makeshake')
end)

RegisterInterfaceCallback('qpixel-burgershot:drink', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-burgershot:soft-drink')
end)

RegisterInterfaceCallback('qpixel-burgershot:water', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-burgershot:get_water')
end)

-- // Drink Machine End // --

-- // Start Of Burgers // --

RegisterNetEvent('qpixel-civjobs:burgershot-make-burgers')
AddEventHandler('qpixel-civjobs:burgershot-make-burgers', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotBurgers = {
            {
                title = 'Burger Shot Burgers',
                icon = "utensils"
            },
            {
                title = "Assemble Heartstopper",
                icon = "hamburger", 
                action = 'qpixel-burgershot:hs',
            },
            {
                title = "Assemble Moneyshot",
                icon = "hamburger", 
                action = 'qpixel-burgershot:ms',
            },
            {
                title = "Assemble Meat Free Burger",
                icon = "hamburger", 
                action = 'qpixel-burgershot:mf',
            },
            {
                title = "Assemble Bleeder Burger",
                icon = "hamburger", 
                action = 'qpixel-burgershot:bb',
            },
        }
        exports["qpixel-interface"]:showContextMenu(BurgershotBurgers)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('qpixel-burgershot:hs', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-civjobs:burgershot-heartstopper')
end)

RegisterInterfaceCallback('qpixel-burgershot:ms', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-civjobs:burgershot-moneyshot')
end)

RegisterInterfaceCallback('qpixel-burgershot:mf', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-civjobs:burgershot-meatfree')
end)

RegisterInterfaceCallback('qpixel-burgershot:bb', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-civjobs:burgershot-bleeder')
end)

--// Meat No Meat?

RegisterNetEvent('qpixel-civjobs:burgershot-make-pattys')
AddEventHandler('qpixel-civjobs:burgershot-make-pattys', function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotPattys = {
            {
                title = 'Burger Shot Pattys',
            },
            {
                title = "Cook Patty (Contains Meat)",
                description = "Requires: 1x Raw Patty (Contains Meat)",
                key = "CP.M",
                action = 'qpixel-burgershot:cm',
            },
            {
                title = "Cook Patty (Doesnt Contain Meat)",
                description = "Requires: 1x Raw Patty (Doesnt Contain Meat)",
                key = "CP.NM",
                action = 'qpixel-burgershot:dcm',
            },
        }
        exports["qpixel-interface"]:showContextMenu(BurgershotPattys)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('qpixel-burgershot:cm', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-burgershot:contains-meat')
end)

RegisterInterfaceCallback('qpixel-burgershot:dcm', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('qpixel-burgershot:doesnt-contains-meat')
end)

RegisterNetEvent("qpixel-burgershot:contains-meat")
AddEventHandler("qpixel-burgershot:contains-meat", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports["qpixel-inventory"]:hasEnoughOfItem("rawpatty", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['qpixel-taskbar']:taskBar(7500, 'Cooking Patty')
            if (finished == 100) then
                TriggerEvent("inventory:removeItem", "rawpatty", 1)
                TriggerEvent('player:receiveItem', 'burgershotpatty', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', 'You need more Raw Pattys to cook! (Required Amount: 1)', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent("qpixel-burgershot:doesnt-contains-meat")
AddEventHandler("qpixel-burgershot:doesnt-contains-meat", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then   
        if exports["qpixel-inventory"]:hasEnoughOfItem("rawpatty2", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['qpixel-taskbar']:taskBar(7500, 'Cooking Patty')
            if (finished == 100) then
                TriggerEvent("inventory:removeItem", "rawpatty2", 1)
                TriggerEvent('player:receiveItem', 'burgershotpatty2', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', 'You need more Raw Pattys to cook! (Required Amount: 1)', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('qpixel-burgershot:gettoy')
AddEventHandler('qpixel-burgershot:gettoy', function()
    local BurgershotToy = math.random(10)
    if BurgershotToy == 1 then
        TriggerEvent('player:receiveItem', 'larrybirdtoy', 1)
    elseif BurgershotToy == 2 then
        TriggerEvent('player:receiveItem', 'tatumtoy', 1)
    elseif BurgershotToy == 3 then
        TriggerEvent('player:receiveItem', 'klaytoy', 1)
    elseif BurgershotToy == 4 then
        TriggerEvent('player:receiveItem', 'currytoy', 1)
    elseif BurgershotToy == 5 then
        TriggerEvent('player:receiveItem', 'strangetoy', 1)
    elseif BurgershotToy == 6 then
        TriggerEvent('player:receiveItem', 'woodytoy', 1)
    elseif BurgershotToy == 7 then
        TriggerEvent('player:receiveItem', 'joinwicktoy', 1)
    elseif BurgershotToy == 8 then
        TriggerEvent('player:receiveItem', 'eletoy', 1)
    elseif BurgershotToy == 9 then
        TriggerEvent('player:receiveItem', 'captoy', 1)
    elseif BurgershotToy == 10 then
        TriggerEvent('player:receiveItem', 'supermantoy', 1)
    end
end)

RegisterNetEvent("qpixel-icecream")
AddEventHandler("qpixel-icecream", function()
    local isEmployed = exports["qpixel-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports["qpixel-inventory"]:hasEnoughOfItem("icecreamcone", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 302.72439575195)
            local finished = exports['qpixel-taskbar']:taskBar(7500, 'Scooping')
            if (finished == 100) then
                TriggerEvent("inventory:removeItem", "icecreamcone", 1)
                TriggerEvent('player:receiveItem', 'vanillaicecream', 1)
                FreezeEntityPosition(GetPlayerPed(-1),false)
                ClearPedTasks(GetPlayerPed(-1))
                Citizen.Wait(1000)
            end
        else
            TriggerEvent('DoLongHudText', 'You need more Ice Cream Cone!', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work here', 2)
    end
end)

RegisterNetEvent('grabtoybs')
AddEventHandler('grabtoybs', function()
    TriggerEvent('player:receiveItem', 'bstoy', 1)
end)

 -- Interact --
 
 exports["qpixel-polytarget"]:AddBoxZone("burgershot_assemble", vector3(-1198.33, -898.61, 13.98), 1, 1.8, {
    heading=35,
    minZ=10.38,
    maxZ=14.38
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burgershot_assemble", {{
    event = "qpixel-civjobs:burgershot-make-burgers",
    id = "burgershot_assemble",
    icon = "hand-holding",
    label = "Assemble Burger",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddBoxZone("burgershot_stash", vector3(-1203.65, -895.86, 13.98), 1, 1.6, {
    heading=305,
    --debugPoly=false,
    minZ=11.38,
    maxZ=15.38
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burgershot_stash", {
    {
        event = "qpixel-burgershot:store",
        id = "burgershot_stash",
        icon = "circle",
        label = "Get Ingridients",
        parameters = {},
    }
}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddBoxZone("qpixel_burgershot_make_drinks", vector3(-1199.87, -895.3, 13.98), 2, 1, {
    heading=35,
    minZ=10.98,
    maxZ=14.98
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("qpixel_burgershot_make_drinks", {{
    event = "qpixel-jobs:burgershot-drinks",
    id = "qpixel_burgershot_make_drinks",
    icon = "circle",
    label = "Drink Machine",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddBoxZone("burgershot_warmer",  vector3(-1197.84, -893.96, 13.98), 3.0, 1, {
    minZ=13.58,
    maxZ=14.78
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burgershot_warmer", {
    {
        event = "qpixel-jobs:burgershot-warmer",
        id = "void_burgershot_warmer",
        icon = "circle",
        label = "Food Warmer",
        parameters = {},
    },
    {
        event = "qpixel-dispatch:burgershotAlarm",
        id = "Panic",
        icon = "bell",
        label = "Panic Button",
        parameters = {},
    },
}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qpixel-dispatch:burgershotAlarm')
AddEventHandler('qpixel-dispatch:burgershotAlarm', function()
    if exports['qpixel-business']:IsEmployedAt('burger_shot') then
        exports["qpixel-dispatch"]:policedead('10-13A', "Burgershot Panic Alarm", "59", true)
    end
end)

exports["qpixel-polytarget"]:AddCircleZone("burgershot_fryer",  vector3(-1201.79, -898.58, 13.98), 0.65, {
    useZ = true
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burgershot_fryer", {{
    event = "qpixel-burgershot:startfryer",
    id = "burgershot_fryer",
    icon = "circle",
    label = "Make Fries",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddBoxZone("burgershot_stash", vector3(-1203.65, -895.86, 13.98), 1, 1.6, {
    heading=305,
    --debugPoly=false,
    minZ=11.38,
    maxZ=15.38
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burgershot_stash", {
    {
        event = "qpixel-burgershot:store",
        id = "burgershot_stash",
        icon = "circle",
        label = "Get Ingridients",
        parameters = {},
    }
}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddCircleZone("burgershot_stuffs_4",  vector3(-1202.89, -897.28, 14.0), 0.93, {
    useZ = true
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burgershot_stuffs_4", {{
    event = "qpixel-civjobs:burgershot-make-pattys",
    id = "burgershot_stuffs_4",
    icon = "hamburger",
    label = "Grill Patty",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddCircleZone("gettoybs",  vector3(-1196.27, -905.06, 13.98), 0.4, {
    useZ = true
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("gettoybs", {
    {
        event = "grabtoybs",
        id = "gettoybs",
        icon = "circle",
        label = "Grab Toy!",
        parameters = {},
    },
}, {
    distance = { radius = 2.5 },
});

exports["qpixel-polytarget"]:AddBoxZone("icecreamspot",  vector3(-1193.03, -895.87, 13.98), 1, 2.0, {
    heading=305,
    --debugPoly=false,
    minZ=10.58,
    maxZ=14.58
})

exports["qpixel-interact"]:AddPeekEntryByPolyTarget("icecreamspot", {
    {
        event = "qpixel-icecream",
        id = "icecreamspot",
        icon = "circle",
        label = "Scoop Ice Cream!",
        parameters = {},
    },
}, {
    distance = { radius = 5 },
});

-- Trays --

exports["qpixel-polytarget"]:AddBoxZone("burger_shot_tray_1", vector3(-1193.83, -894.44, 13.98), 1, 0.8, {
    heading=305,
    minZ=10.78,
    maxZ=14.78
})

exports["qpixel-polytarget"]:AddBoxZone("burger_shot_tray_2", vector3(-1194.92, -892.86, 13.98), 1, 0.8, {
    heading=305,
    minZ=10.78,
    maxZ=14.78
})

 -- Tray 1
 exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burger_shot_tray_1", {{
    event = "qpixel-jobs:BurgerShotTray-1",
    id = "burger_shot_tray_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Tray 2
exports["qpixel-interact"]:AddPeekEntryByPolyTarget("burger_shot_tray_2", {{
    event = "qpixel-jobs:BurgerShotTray-2",
    id = "burger_shot_tray_2",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('qpixel-jobs:BurgerShotTray-1')
AddEventHandler('qpixel-jobs:BurgerShotTray-1', function()
    TriggerEvent("server-inventory-open", "1", "traysz-Burgershot Tray")
end)

RegisterNetEvent('qpixel-jobs:BurgerShotTray-2')
AddEventHandler('qpixel-jobs:BurgerShotTray-2', function()
    TriggerEvent("server-inventory-open", "1", "trays-Burgershot Tray")
end)