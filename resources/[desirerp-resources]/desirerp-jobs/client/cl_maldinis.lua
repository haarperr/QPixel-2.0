RegisterNetEvent('desirerp-jobs:make_pizza_base')
AddEventHandler('desirerp-jobs:make_pizza_base', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('dough', 1) then
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            SetEntityHeading(PlayerPedId(), 87.765464)
            FreezeEntityPosition(PlayerPedId(), true)
            local RollingDough = exports['desirerp-taskbar']:taskBar(5000, 'Rolling Dough into Pizza Base')
            if RollingDough == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'dough', 1)
                TriggerEvent('player:receiveItem', 'pizzabase', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        end
    else
        TriggerEvent('DoLongHudText', 'You dont work at maldinis.', 2)
    end
end)

RegisterNetEvent('desirerp-jobs:make_pepperoni')
AddEventHandler('desirerp-jobs:make_pepperoni', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('pizzabase', 1) and exports['desirerp-inventory']:hasEnoughOfItem('pizzasauce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('pepperoni', 10) and exports['desirerp-inventory']:hasEnoughOfItem('cheese', 1) then
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            SetEntityHeading(PlayerPedId(), 3.2849636)
            FreezeEntityPosition(PlayerPedId(), true)
            local PepperoniPizza1 = exports['desirerp-taskbar']:taskBar(7500, 'Preparing Pepperoni Pizza.')
            if PepperoniPizza1 == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'pizzabase', 1)
                TriggerEvent('inventory:removeItem', 'pizzasauce', 1)
                TriggerEvent('inventory:removeItem', 'pepperoni', 10)
                TriggerEvent('player:receiveItem', 'pepperonipizza', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        else
            TriggerEvent('DoLongHudText', 'You do not have the required ingridients.', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You do not work at Maldinis.', 2)
    end
end)

RegisterNetEvent('desirerp-jobs:make_plain_pizza')
AddEventHandler('desirerp-jobs:make_plain_pizza', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('pizzabase', 1) and exports['desirerp-inventory']:hasEnoughOfItem('pizzasauce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('cheese', 1) then
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            SetEntityHeading(PlayerPedId(), 3.2849636)
            FreezeEntityPosition(PlayerPedId(), true)
            local PepperoniPizza1 = exports['desirerp-taskbar']:taskBar(7500, 'Preparing Margherita Pizza.')
            if PepperoniPizza1 == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'pizzabase', 1)
                TriggerEvent('inventory:removeItem', 'pizzasauce', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'margheritapizza', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        else
            TriggerEvent('DoLongHudText', 'You dont have the required ingridients.', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You do not work at Maldinis.', 2)
    end
end)

RegisterNetEvent('desirerp-jobs:make_bbq_pizza')
AddEventHandler('desirerp-jobs:make_bbq_pizza', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        if exports['desirerp-inventory']:hasEnoughOfItem('pizzabase', 1) and exports['desirerp-inventory']:hasEnoughOfItem('bbqsauce', 1) and exports['desirerp-inventory']:hasEnoughOfItem('cheese', 1) then
            TriggerEvent('animation:PlayAnimation', 'cokecut')
            SetEntityHeading(PlayerPedId(), 3.2849636)
            FreezeEntityPosition(PlayerPedId(), true)
            local PepperoniPizza1 = exports['desirerp-taskbar']:taskBar(7500, 'Preparing BBQ Pizza.')
            if PepperoniPizza1 == 100 then
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerEvent('inventory:removeItem', 'pizzabase', 1)
                TriggerEvent('inventory:removeItem', 'bbqsauce', 1)
                TriggerEvent('inventory:removeItem', 'cheese', 1)
                TriggerEvent('player:receiveItem', 'bbqpizza', 1)
            else
                FreezeEntityPosition(PlayerPedId(), false)
            end
        else
            TriggerEvent('DoLongHudText', 'You dont have the required ingridients.', 2)
        end
    else
        TriggerEvent('DoLongHudText', 'You do not work at Maldinis.', 2)
    end
end)

RegisterNetEvent('desirerp-jobs:make_pizzas')
AddEventHandler('desirerp-jobs:make_pizzas', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        local MakeP = {
            {
                title = "Make Maldini Pizzas",
            },
            {
                title = "Peperoni Pizza",
                description = "Required Ingridients: 10x Pepperonis | 1x Pizza Base | 1x Pizza Sauce | 1x Cheese",
                key = "PP",
                action = 'desirerp-jobs:make_pp',
            },
            {
                title = "Margherita Pizza",
                description = "Required Ingridients: 1x Pizza Base | 1x Pizza Sauce | 1x Cheese",
                key = "MP",
                action = 'desirerp-jobs:make_mp',
            },
            {
                title = "BBQ Pizza",
                description = "Required Ingridients: 1x BBQ Sauce | 1x Pizza Base | 1x Cheese",
                key = "BBQ",
                action = 'desirerp-jobs:make_bbq',
            },
        }
        exports["desirerp-interface"]:showContextMenu(MakeP)
    else
        TriggerEvent('DoLongHudText', 'Fuck off POLITELY', 2)
    end
end)

RegisterInterfaceCallback('desirerp-jobs:make_pp', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-jobs:make_pepperoni')
end)

RegisterInterfaceCallback('desirerp-jobs:make_mp', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-jobs:make_plain_pizza')
end)

RegisterInterfaceCallback('desirerp-jobs:make_bbq', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-jobs:make_bbq_pizza')
end)
 
-- // Fridge

RegisterNetEvent('desirerp-jobs:maldinis_fridge')
AddEventHandler('desirerp-jobs:maldinis_fridge', function()
    local Maldini = exports['desirerp-business']:IsEmployedAt('maldinis')
    if Maldini then
        TriggerEvent("server-inventory-open", "222", "Shop")
    else
        TriggerEvent('DoLongHudText', 'You do not work here.', 2)
    end
end)



----------------------------------------

RegisterNetEvent('desirerp-jobs:maldinis-drinks')
AddEventHandler('desirerp-jobs:maldinis-drinks', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        local BurgershotDrinks = {
            {
                title = 'Maldinis Drinks',
            },
            {
                title = "Pour Cola",
                description = "Pour a nice refreshing Cola",
                key = "Pour.Cola",
                action = 'desirerp-maldinis:cola',
            },
            {
                title = "Pour Cup Of Water",
                description = "Pour a Cup Of Water",
                key = "Pour.Water",
                action = 'desirerp-maldinis:water',
            },
        }
        exports["desirerp-interface"]:showContextMenu(BurgershotDrinks)
    else
        TriggerEvent('DoLongHudText', 'You do not work here.', 2)
    end
end)



RegisterNetEvent("desirerp-maldinis:getcola")
AddEventHandler("desirerp-maldinis:getcola", function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then  
        if exports['desirerp-inventory']:hasEnoughOfItem('sugarbs', 1) then  
        SetEntityHeading(GetPlayerPed(-1), 249.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['desirerp-taskbar']:taskBar(10000, 'Pouring Cola')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'cola', 1)
            TriggerEvent('inventory:removeItem', 'sugarbs', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            CledesirerpedTasks(GetPlayerPed(-1))
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

RegisterNetEvent('desirerp-maldinis:get_water')
AddEventHandler('desirerp-maldinis:get_water', function()
    local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
    if isEmployed then
        SetEntityHeading(GetPlayerPed(-1), 249.88976287842)
        TriggerEvent("animation:PlayAnimation","browse")
        FreezeEntityPosition(GetPlayerPed(-1),true)
        local finished = exports['desirerp-taskbar']:taskBar(10000, 'Pouring Water')
        if (finished == 100) then
            TriggerEvent('player:receiveItem', 'water', 1)
            FreezeEntityPosition(GetPlayerPed(-1),false)
            CledesirerpedTasks(GetPlayerPed(-1))
        else
            FreezeEntityPosition(GetPlayerPed(-1),false)
        end
    end
end)

RegisterInterfaceCallback('desirerp-maldinis:cola', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-maldinis:getcola')
end)

RegisterInterfaceCallback('desirerp-maldinis:water', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-maldinis:get_water')
end)

-- Poly Target Shit --

exports["desirerp-polytarget"]:AddCircleZone("desire_pizza_dough",  vector3(809.35, -761.23, 26.78), 0.35, {
    useZ = true
})


exports["desirerp-interact"]:AddPeekEntryByPolyTarget("desire_pizza_dough", {{
    event = "desirerp-jobs:make_pizza_base",
    id = "desire_pizza_dough",
    icon = "hand-holding",
    label = "Roll Dough",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddCircleZone("desire_maldini_pizza",  vector3(807.54, -756.87, 26.58), 0.4, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("desire_maldini_pizza", {{
    event = "desirerp-jobs:make_pizzas",
    id = "desire_maldini_pizza",
    icon = "circle",
    label = "Prepare Food",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
}); 

-- Tables --

-- Maldinis Tables

exports["desirerp-polytarget"]:AddBoxZone("table_1_maldinis",  vector3(807.0, -751.52, 26.78), 1, 1.0, {
    heading=0,
    --debugPoly=true,
    minZ=22.98,
    maxZ=26.98
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_1_maldinis", {{
    event = "desirerp-jobs:maldinis-1",
    id = "table_1_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_2_maldinis",  vector3(803.11, -751.53, 26.78), 1, 1, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_2_maldinis", {{
    event = "desirerp-jobs:maldinis-2",
    id = "table_2_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_3_maldinis",  vector3(799.14, -751.56, 26.78), 1, 1, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_3_maldinis", {{
    event = "desirerp-jobs:maldinis-3",
    id = "table_3_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_4_maldinis",  vector3(798.04, -748.87, 26.78), 1, 1, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_4_maldinis", {{
    event = "desirerp-jobs:maldinis-4",
    id = "table_4_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_5_maldinis",  vector3(795.25, -751.52, 26.78), 1, 1, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_5_maldinis", {{
    event = "desirerp-jobs:maldinis-5",
    id = "table_5_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_6_maldinis",  vector3(799.34, -754.97, 26.78), 1, 1, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_6_maldinis", {{
    event = "desirerp-jobs:maldinis-6",
    id = "table_6_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_7_maldinis",  vector3(807.71, -754.79, 26.78), 2, 0.7, {
    heading=0,
    --debugPoly=true,
    minZ=22.98,
    maxZ=26.98
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_7_maldinis", {{
    event = "desirerp-jobs:maldinis-7",
    id = "table_7_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_8_maldinis",  vector3(805.58, -754.92, 26.78), 2, 0.7, {
    heading=0,
    --debugPoly=true,
    minZ=22.98,
    maxZ=26.98
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_8_maldinis", {{
    event = "desirerp-jobs:maldinis-8",
    id = "table_8_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_9_maldinis",  vector3(803.54, -754.9, 26.78), 2, 0.7, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_9_maldinis", {{
    event = "desirerp-jobs:maldinis-9",
    id = "table_9_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_10_maldinis",  vector3(801.42, -754.83, 26.78), 2, 0.7, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_10_maldinis", {{
    event = "desirerp-jobs:maldinis-10",
    id = "table_10_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_11_maldinis",  vector3(799.32, -757.63, 26.78), 0.7, 1.5, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_11_maldinis", {{
    event = "desirerp-jobs:maldinis-11",
    id = "table_11_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddBoxZone("table_12_maldinis",  vector3(799.34, -759.74, 26.78), 0.7, 1.5, {
    heading=0,
    --debugPoly=true,
    minZ=22.78,
    maxZ=26.78
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("table_12_maldinis", {{
    event = "desirerp-jobs:maldinis-12",
    id = "table_12_maldinis",
    icon = "boxes",
    label = "Table",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("maldinis_fridge", {{
    event = "desirerp-jobs:maldinis_fridge",
    id = "maldinis_fridge",
    icon = "circle",
    label = "Fridge",
    parameters = {},
}}, {
    distance = { radius = 2.5 },
});

exports["desirerp-polytarget"]:AddCircleZone("maldinsdrinks",  vector3(811.48, -765.26, 26.78), 0.5, {
    useZ = true
})


exports["desirerp-interact"]:AddPeekEntryByPolyTarget("maldinsdrinks", {{
    event = "desirerp-jobs:maldinis-drinks",
    id = "maldinsdrinks",
    icon = "circle",
    label = "Make Drink.",
    parameters = {},
}}, {
    distance = { radius = 1.5 },
});

-- Trays --

exports["desirerp-polytarget"]:AddCircleZone("maldinis_tray_1",  vector3(810.86, -751.35, 26.78), 0.45, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("maldinis_tray_1", {{
    event = "desirerp-jobs:maldinis-tray-1",
    id = "maldinis_tray_1",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 1.5 },
});

RegisterNetEvent("desirerp-jobs:maldinis-tray-1")
AddEventHandler("desirerp-jobs:maldinis-tray-1", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-tray-1");
end)

exports["desirerp-polytarget"]:AddCircleZone("maldinis_tray_2",  vector3(810.94, -752.84, 26.78), 0.5, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("maldinis_tray_2", {{
    event = "desirerp-jobs:maldinis-tray-2",
    id = "maldinis_tray_2",
    icon = "hand-holding",
    label = "Open",
    parameters = {},
}}, {
    distance = { radius = 1.5 },
});

RegisterNetEvent("desirerp-jobs:maldinis-tray-2")
AddEventHandler("desirerp-jobs:maldinis-tray-2", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-tray-2");
end)

-- Events --

RegisterNetEvent("desirerp-jobs:maldinis-1")
AddEventHandler("desirerp-jobs:maldinis-1", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-1");
end)

RegisterNetEvent("desirerp-jobs:maldinis-2")
AddEventHandler("desirerp-jobs:maldinis-2", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-2");
end)

RegisterNetEvent("desirerp-jobs:maldinis-3")
AddEventHandler("desirerp-jobs:maldinis-3", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-3");
end)

RegisterNetEvent("desirerp-jobs:maldinis-4")
AddEventHandler("desirerp-jobs:maldinis-4", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-4");
end)

RegisterNetEvent("desirerp-jobs:maldinis-5")
AddEventHandler("desirerp-jobs:maldinis-5", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-5");
end)

RegisterNetEvent("desirerp-jobs:maldinis-6")
AddEventHandler("desirerp-jobs:maldinis-6", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-6");
end)

RegisterNetEvent("desirerp-jobs:maldinis-7")
AddEventHandler("desirerp-jobs:maldinis-7", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-7");
end)

RegisterNetEvent("desirerp-jobs:maldinis-8")
AddEventHandler("desirerp-jobs:maldinis-8", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-8");
end)

RegisterNetEvent("desirerp-jobs:maldinis-9")
AddEventHandler("desirerp-jobs:maldinis-9", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-9");
end)

RegisterNetEvent("desirerp-jobs:maldinis-10")
AddEventHandler("desirerp-jobs:maldinis-10", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-10");
end)

RegisterNetEvent("desirerp-jobs:maldinis-11")
AddEventHandler("desirerp-jobs:maldinis-11", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-11");
end)

RegisterNetEvent("desirerp-jobs:maldinis-12")
AddEventHandler("desirerp-jobs:maldinis-12", function()
    TriggerEvent("server-inventory-open", "1", "maldinis-table-12");
end)

-- Stash --

RegisterNetEvent('desirerp-polyzone:enter')
AddEventHandler('desirerp-polyzone:enter', function(name)
    if name == "Maldinis_Stash" then
        Maldinis_Stash = true
        MaldinisStash()
        local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
        if isEmployed then
            exports['desirerp-interface']:showInteraction("[E] Stash")
        end
    end
end)

RegisterNetEvent('desirerp-polyzone:exit')
AddEventHandler('desirerp-polyzone:exit', function(name)
    if name == "Maldinis_Stash" then
        Maldinis_Stash = false
        exports['desirerp-interface']:hideInteraction()
    end
end)

function MaldinisStash()
	Citizen.CreateThread(function()
        while Maldinis_Stash do
            Citizen.Wait(5)
			if IsControlJustReleased(0, 38) then
                local isEmployed = exports["desirerp-business"]:IsEmployedAt("maldinis")
                if isEmployed then
                    TriggerEvent('server-inventory-open', '1', 'stash-maldinos')
                end
			end
		end
	end)
end

Citizen.CreateThread(function()
    exports["desirerp-polyzone"]:AddBoxZone("Maldinis_Stash", vector3(813.65, -749.38, 26.78), 1, 2.6, {
        name="Maldinis_Stash",
        heading=270,
        --debugPoly=true,
        minZ=23.98,
        maxZ=27.98
    })
end)