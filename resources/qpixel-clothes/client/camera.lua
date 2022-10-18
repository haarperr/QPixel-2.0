RegisterNUICallback("updateCamera", function(data)
    exports["qpixel-clothes"]:updateCamera(data)
end)

RegisterNUICallback("rotateCharacter", function(data)
    local ped = PlayerPedId()

    local currentHeading = GetEntityHeading(ped)
    SetEntityHeading(ped, currentHeading + (data))
    print(data)
end)


