-- Commands
RegisterCommand("add-dispatch", function(source,args)
    exports["divine-dispatch"]:dispatchadd(args[1], args[2], args[3])
end)

RegisterCommand("runplate", function(source,args)
    exports["divine-dispatch"]:dispatchadd("LUNIS Nospraga:" .. args[1])
end)

-- Keybinds
Citizen.CreateThread(function()
    RegisterKeyMapping("map", "Open The Map", "keyboard", "I")
    RegisterKeyMapping("open-dispatch", "Opening DP", "keyboard", "O")
end)