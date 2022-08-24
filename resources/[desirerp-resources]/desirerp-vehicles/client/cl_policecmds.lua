RegisterCommand("callsignveh", function(source,args,user)
    setVehicleCallsign(args[1], args[2], args[3])
end)

function setVehicleCallsign(pCallsign1, pCallsign2, pCallsign3)
    local plyVeh = GetVehiclePedIsIn(PlayerPedId(),false)
    exports['desirerp-bennys']:ApplyMod(42, tonumber(pCallsign1))
    exports['desirerp-bennys']:ApplyMod(44, tonumber(pCallsign2))
    exports['desirerp-bennys']:ApplyMod(45, tonumber(pCallsign3))
end