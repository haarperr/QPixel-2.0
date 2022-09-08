gunshotmsg = "Gunshot"

RegisterCommand("add-dispatch", function(source,args)
    exports["qpixel-dispatch"]:dispatchadd(args[1], args[2], args[3])
end)

RegisterCommand("runplate", function(source,args)
    exports["qpixel-dispatch"]:dispatchadd("10-69D", "Flagged Vehicle:" .. args[1])
end)

RegisterCommand("open-dp", function()
    openMenu()
end)

RegisterCommand("map", function()
    SendNUIMessage({
        action = "map"
    })
end)

Citizen.CreateThread(function()
    RegisterKeyMapping("map", "Open the map", "keyboard", "M")
    RegisterKeyMapping("open-dp", "Open the menu", "keyboard", "O")
end)