local wheelInUse = false

RPC.register("qpixel-wheelfitment_sv:setIsWheelFitmentInUse", function(pSource, pBool)
    wheelInUse = pBool
end)

RPC.register("qpixel-wheelfitment_sv:getIsWheelFitmentInUse", function(pSource)
    return wheelInUse
end)

RPC.register("qpixel-wheelfitment_sv:checkIfWhitelisted", function(pSource)
    return true
end)

RegisterNetEvent('qpixel-wheelfitment_sv:saveWheelfitment')
AddEventHandler('qpixel-wheelfitment_sv:saveWheelfitment', function(pPlate, data)
    local pSrc = source
    if pPlate == nil or pPlate == 0 or pPlate == "" then return end
    exports.oxmysql:execute("UPDATE characters_cars SET wheelfitment = @wheelfitment WHERE license_plate = @license_plate", {
        ['@wheelfitment'] = data,
        ['@license_plate'] = pPlate
    })
end)

RegisterNetEvent("qpixel-wheelfitment:GetVehicleStatus", function(plate, pVehicle)
    local src = source
    exports.oxmysql:execute("SELECT `wheelfitment` FROM characters_cars WHERE license_plate = @license_plate", {['license_plate'] = plate}, function(result)

        if result[1] ~= nil then
            print(result[1].wheelfitment)
			if result[1].wheelfitment == '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}' then
                print('DONT SET FITMENT')
                return
			else
                print('SET FITMENT')
                TriggerClientEvent('qpixel-wheelfitment_cl:applySavedWheelFitment',src, pVehicle, result[1].wheelfitment)                return
			end
		end
    end)
end)