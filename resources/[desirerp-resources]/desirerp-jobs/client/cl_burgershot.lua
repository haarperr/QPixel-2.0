RegisterNetEvent('desirerp-jobs:burgershot-warmer')
AddEventHandler('desirerp-jobs:burgershot-warmer', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        TriggerEvent("server-inventory-open", "1", "storage-burger_warmer")
        Wait(1000)
    else
        TriggerEvent('DoLongHudText', 'You do not work here !',2)
    end
end)

RegisterNetEvent("desirerp-burgershot:startfryer")
AddEventHandler("desirerp-burgershot:startfryer", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('potato', 1) then
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['desirerp-taskbar']:taskBar(10000, 'Dropping Fries')
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

RegisterNetEvent("desirerp-burgershot:makeshake")
AddEventHandler("desirerp-burgershot:makeshake", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('milk', 1) then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['desirerp-taskbar']:taskBar(10000, 'Making Shake')
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


RegisterNetEvent("desirerp-burgershot:soft-drink")
AddEventHandler("desirerp-burgershot:soft-drink", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then   
        if exports['desirerp-inventory']:hasEnoughOfItem('burgershot_cup', 1) then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['desirerp-taskbar']:taskBar(10000, 'Making Soft Drink')
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

RegisterNetEvent("desirerp-burgershot:getcola")
AddEventHandler("desirerp-burgershot:getcola", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then  
        if exports['desirerp-inventory']:hasEnoughOfItem('sugarbs', 1) then  
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['desirerp-taskbar']:taskBar(10000, 'Pouring Cola')
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

RegisterNetEvent('desirerp-burgershot:get_water')
AddEventHandler('desirerp-burgershot:get_water', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        SetEntityHeading(GetPlayerPed(-1), 121.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['desirerp-taskbar']:taskBar(10000, 'Pouring Water')
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

RegisterNetEvent('desirerp-burgershot:counter')
AddEventHandler('desirerp-burgershot:counter', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
		TriggerEvent("server-inventory-open", "1", "counter-burger_shot")
		Wait(1000)
else
    TriggerEvent('DoLongHudText', 'You do not work here !',2)
    end
end)

--// Store

RegisterNetEvent('desirerp-burgershot:store')
AddEventHandler('desirerp-burgershot:store', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        TriggerEvent("server-inventory-open", "45", "Shop")
		Wait(1000)
    else
        TriggerEvent('DoLongHudText', 'You do not work here !',2)
        end
    end)

--// Make Burgers

RegisterNetEvent('desirerp-civjobs:burgershot-heartstopper')
AddEventHandler('desirerp-civjobs:burgershot-heartstopper', function()
    local ped = PlayerPedId()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('burgershotpatty', 2) and exports['desirerp-inventory']:hasEnoughOfItem('lettuce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['desirerp-inventory']:hasEnoughOfItem('tomato', 1) and exports['desirerp-inventory']:hasEnoughOfItem('cheese', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local heartstopper = exports['desirerp-taskbar']:taskBar(5000, 'Cooking Heartstopper')
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

RegisterNetEvent('desirerp-civjobs:burgershot-moneyshot')
AddEventHandler('desirerp-civjobs:burgershot-moneyshot', function()
    local ped = PlayerPedId()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['desirerp-inventory']:hasEnoughOfItem('burgershotpatty', 1) and exports['desirerp-inventory']:hasEnoughOfItem('lettuce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('tomato', 1) and exports['desirerp-inventory']:hasEnoughOfItem('cheese', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local moneyshot = exports['desirerp-taskbar']:taskBar(5000, 'Cooking Moneyshot')
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

RegisterNetEvent('desirerp-civjobs:burgershot-meatfree')
AddEventHandler('desirerp-civjobs:burgershot-meatfree', function()
    local ped = PlayerPedId()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('burgershotpatty2', 1) and exports['desirerp-inventory']:hasEnoughOfItem('lettuce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('hamburgerbuns', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local meatfree = exports['desirerp-taskbar']:taskBar(5000, 'Cooking Meat Free')
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

RegisterNetEvent('desirerp-civjobs:burgershot-bleeder')
AddEventHandler('desirerp-civjobs:burgershot-bleeder', function()
    local ped = PlayerPedId()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('hamburgerbuns', 1) and exports['desirerp-inventory']:hasEnoughOfItem('lettuce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('burgershotpatty', 1) and exports['desirerp-inventory']:hasEnoughOfItem('cheese', 1) and exports['desirerp-inventory']:hasEnoughOfItem('tomato', 1) then
            FreezeEntityPosition(ped, true)
            ExecuteCommand('e cokecut')
            local meatfree = exports['desirerp-taskbar']:taskBar(5000, 'Cooking Bleeder Burger')
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

RegisterNetEvent('desirerp-jobs:burgershot-drinks')
AddEventHandler('desirerp-jobs:burgershot-drinks', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
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
                action = 'desirerp-burgershot:cola',
            },
            {
                title = "Pour Milkshake",
                description = "Pour a Ice Cold Milkshake",
                icon = "beer",
                action = 'desirerp-burgershot:shake',
            },
            {
                title = "Pour Soft Drink",
                description = "Pour a monsterous sweet Soft Drink",
                icon = "beer",
                action = 'desirerp-burgershot:drink',
            },
            {
                title = "Pour Cup Of Water",
                description = "Pour a Cup Of Water",
                icon = "beer",
                action = 'desirerp-burgershot:water',
            },
        }
        exports["desirerp-interface"]:showContextMenu(BurgershotDrinks)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('desirerp-burgershot:cola', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-burgershot:getcola')
end)

RegisterInterfaceCallback('desirerp-burgershot:shake', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-burgershot:makeshake')
end)

RegisterInterfaceCallback('desirerp-burgershot:drink', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-burgershot:soft-drink')
end)

RegisterInterfaceCallback('desirerp-burgershot:water', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-burgershot:get_water')
end)

-- // Drink Machine End // --

-- // Start Of Burgers // --

RegisterNetEvent('desirerp-civjobs:burgershot-make-burgers')
AddEventHandler('desirerp-civjobs:burgershot-make-burgers', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotBurgers = {
            {
                title = 'Burger Shot Burgers',
                icon = "utensils"
            },
            {
                title = "Assemble Heartstopper",
                icon = "hamburger", 
                action = 'desirerp-burgershot:hs',
            },
            {
                title = "Assemble Moneyshot",
                icon = "hamburger", 
                action = 'desirerp-burgershot:ms',
            },
            {
                title = "Assemble Meat Free Burger",
                icon = "hamburger", 
                action = 'desirerp-burgershot:mf',
            },
            {
                title = "Assemble Bleeder Burger",
                icon = "hamburger", 
                action = 'desirerp-burgershot:bb',
            },
        }
        exports["desirerp-interface"]:showContextMenu(BurgershotBurgers)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('desirerp-burgershot:hs', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-civjobs:burgershot-heartstopper')
end)

RegisterInterfaceCallback('desirerp-burgershot:ms', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-civjobs:burgershot-moneyshot')
end)

RegisterInterfaceCallback('desirerp-burgershot:mf', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-civjobs:burgershot-meatfree')
end)

RegisterInterfaceCallback('desirerp-burgershot:bb', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-civjobs:burgershot-bleeder')
end)

--// Meat No Meat?

RegisterNetEvent('desirerp-civjobs:burgershot-make-pattys')
AddEventHandler('desirerp-civjobs:burgershot-make-pattys', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        local BurgershotPattys = {
            {
                title = 'Burger Shot Pattys',
            },
            {
                title = "Cook Patty (Contains Meat)",
                description = "Requires: 1x Raw Patty (Contains Meat)",
                key = "CP.M",
                action = 'desirerp-burgershot:cm',
            },
            {
                title = "Cook Patty (Doesnt Contain Meat)",
                description = "Requires: 1x Raw Patty (Doesnt Contain Meat)",
                key = "CP.NM",
                action = 'desirerp-burgershot:dcm',
            },
        }
        exports["desirerp-interface"]:showContextMenu(BurgershotPattys)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('desirerp-burgershot:cm', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-burgershot:contains-meat')
end)

RegisterInterfaceCallback('desirerp-burgershot:dcm', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-burgershot:doesnt-contains-meat')
end)

RegisterNetEvent("desirerp-burgershot:contains-meat")
AddEventHandler("desirerp-burgershot:contains-meat", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports["desirerp-inventory"]:hasEnoughOfItem("rawpatty", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['desirerp-taskbar']:taskBar(7500, 'Cooking Patty')
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

RegisterNetEvent("desirerp-burgershot:doesnt-contains-meat")
AddEventHandler("desirerp-burgershot:doesnt-contains-meat", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then   
        if exports["desirerp-inventory"]:hasEnoughOfItem("rawpatty2", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 124.72439575195)
            local finished = exports['desirerp-taskbar']:taskBar(7500, 'Cooking Patty')
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

RegisterNetEvent('desirerp-burgershot:gettoy')
AddEventHandler('desirerp-burgershot:gettoy', function()
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

RegisterNetEvent("desirerp-icecream")
AddEventHandler("desirerp-icecream", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("burger_shot")
    if isEmployed then
        if exports["desirerp-inventory"]:hasEnoughOfItem("icecreamcone", 1) then 
            local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
            LoadDict(dict)
            FreezeEntityPosition(GetPlayerPed(-1),true)
            TaskPlayAnim(GetPlayerPed(-1), dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
            SetEntityHeading(GetPlayerPed(-1), 302.72439575195)
            local finished = exports['desirerp-taskbar']:taskBar(7500, 'Scooping')
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
 
 exports["desirerp-polytarget"]:AddBoxZone("burgershot_assemble", vector3(-1198.33, -898.61, 13.98), 1, 1.8, {
    heading=35,
    minZ=10.38,
    maxZ=14.38
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burgershot_assemble", {{
    event = "desirerp-civjobs:burgershot-make-burgers",
    id = "burgershot_assemble",
    icon = "hand-holding",
    label = "Assemble Burger",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("burgershot_stash", vector3(-1203.65, -895.86, 13.98), 1, 1.6, {
    heading=305,
    --debugPoly=true,
    minZ=11.38,
    maxZ=15.38
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burgershot_stash", {
    {
        event = "desirerp-burgershot:store",
        id = "burgershot_stash",
        icon = "circle",
        label = "Get Ingridients",
        parameters = {},
    }
}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("desire_burgershot_make_drinks", vector3(-1199.87, -895.3, 13.98), 2, 1, {
    heading=35,
    minZ=10.98,
    maxZ=14.98
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("desire_burgershot_make_drinks", {{
    event = "desirerp-jobs:burgershot-drinks",
    id = "desire_burgershot_make_drinks",
    icon = "circle",
    label = "Drink Machine",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("burgershot_warmer",  vector3(-1197.84, -893.96, 13.98), 3.0, 1, {
    minZ=13.58,
    maxZ=14.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burgershot_warmer", {
    {
        event = "desirerp-jobs:burgershot-warmer",
        id = "void_burgershot_warmer",
        icon = "circle",
        label = "Food Warmer",
        parameters = {},
    },
    {
        event = "desirerp-dispatch:burgershotAlarm",
        id = "Panic",
        icon = "bell",
        label = "Panic Button",
        parameters = {},
    },
}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('desirerp-dispatch:burgershotAlarm')
AddEventHandler('desirerp-dispatch:burgershotAlarm', function()
    if exports['desirerp-business']:IsEmployedAt('burger_shot') then
        exports["desirerp-dispatch"]:policedead('10-13A', "Burgershot Panic Alarm", "59", true)
    end
end)

exports["desirerp-polytarget"]:AddCircleZone("burgershot_fryer",  vector3(-1201.79, -898.58, 13.98), 0.65, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burgershot_fryer", {{
    event = "desirerp-burgershot:startfryer",
    id = "burgershot_fryer",
    icon = "circle",
    label = "Make Fries",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("burgershot_stash", vector3(-1203.65, -895.86, 13.98), 1, 1.6, {
    heading=305,
    --debugPoly=true,
    minZ=11.38,
    maxZ=15.38
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burgershot_stash", {
    {
        event = "desirerp-burgershot:store",
        id = "burgershot_stash",
        icon = "circle",
        label = "Get Ingridients",
        parameters = {},
    }
}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddCircleZone("burgershot_stuffs_4",  vector3(-1202.89, -897.28, 14.0), 0.93, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burgershot_stuffs_4", {{
    event = "desirerp-civjobs:burgershot-make-pattys",
    id = "burgershot_stuffs_4",
    icon = "hamburger",
    label = "Grill Patty",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddCircleZone("gettoybs",  vector3(-1196.27, -905.06, 13.98), 0.4, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("gettoybs", {
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

exports["desirerp-polytarget"]:AddBoxZone("icecreamspot",  vector3(-1193.03, -895.87, 13.98), 1, 2.0, {
    heading=305,
    --debugPoly=true,
    minZ=10.58,
    maxZ=14.58
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("icecreamspot", {
    {
        event = "desirerp-icecream",
        id = "icecreamspot",
        icon = "circle",
        label = "Scoop Ice Cream!",
        parameters = {},
    },
}, {
    distance = { radius = 5 },
});

-- Trays --

exports["desirerp-polytarget"]:AddBoxZone("burger_shot_tray_1", vector3(-1193.83, -894.44, 13.98), 1, 0.8, {
    heading=305,
    minZ=10.78,
    maxZ=14.78
})

exports["desirerp-polytarget"]:AddBoxZone("burger_shot_tray_2", vector3(-1194.92, -892.86, 13.98), 1, 0.8, {
    heading=305,
    minZ=10.78,
    maxZ=14.78
})

 -- Tray 1
 exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burger_shot_tray_1", {{
    event = "desirerp-jobs:BurgerShotTray-1",
    id = "burger_shot_tray_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

-- Tray 2
exports["desirerp-interact"]:AddPeekEntryByPolyTarget("burger_shot_tray_2", {{
    event = "desirerp-jobs:BurgerShotTray-2",
    id = "burger_shot_tray_2",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

RegisterNetEvent('desirerp-jobs:BurgerShotTray-1')
AddEventHandler('desirerp-jobs:BurgerShotTray-1', function()
    TriggerEvent("server-inventory-open", "1", "traysz-Burgershot Tray")
end)

RegisterNetEvent('desirerp-jobs:BurgerShotTray-2')
AddEventHandler('desirerp-jobs:BurgerShotTray-2', function()
    TriggerEvent("server-inventory-open", "1", "trays-Burgershot Tray")
end)