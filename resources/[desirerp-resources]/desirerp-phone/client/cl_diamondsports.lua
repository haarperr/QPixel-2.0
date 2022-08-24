RegisterNUICallback('getDiamondSportsEvents', function(data,cb)
    local returnEvents = RPC.execute("desirerp-phone:getDiamondSportsEvents")
    SendNUIMessage({
        openSection = "diamondSportsAppend",
        diamondSports = returnEvents,
        canMakeDiamondEvents = exports['desirerp-business']:IsEmployedAt('the_diamond')
    })
end)

RegisterNUICallback('submitNewEventDiamondSports', function(data, cb)
    RPC.execute("desirerp-phone:submitNewEventDiamondSports", data.pEventName, data.pEventLocation, data.pTimeZone, data.pEventTimeHr, data.pEventTimeMin, data.pEventDate)
end)

RegisterNUICallback('deleteDiamondEvent', function(data, cb)
    RPC.execute("desirerp-phone:deleteDiamondEvent", data.diamondEventID)
end)