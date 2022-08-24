RegisterNetEvent('desirerp-fuel:initFuel')
AddEventHandler('desirerp-fuel:initFuel', function(sentVeh)
	local veh = NetworkGetEntityFromNetworkId(sentVeh)
	if veh ~= 0 then
		Entity(veh).state.fuel = math.random(40, 60)
	end
end)

AddEventHandler('desirerp-fuel:setFuel', function(sentVeh, sentFuel)
	if type(sentFuel) == 'number' and sentFuel >= 0 and sentFuel <= 100 then
		if DoesEntityExist(sentVeh) then
			Entity(sentVeh).state.fuel = sentFuel
		else
			Entity(NetworkGetEntityFromNetworkId(sentVeh)).state.fuel = sentFuel
		end
	end
end)

local function GetFuel(sentVeh)
	if DoesEntityExist(sentVeh) then
		return Entity(sentVeh).state.fuel
	else
		return Entity(NetworkGetEntityFromNetworkId(sentVeh)).state.fuel
	end
end

exports('GetFuel', GetFuel) -- exports['desirerp-fuel']:GetFuel(veh)

-- RegisterCommand("setfuel", function(source, args, rawCommand)
-- 	TriggerEvent('desirerp-fuel:setFuel', GetVehiclePedIsIn(GetPlayerPed(source)), tonumber(args[1]))
-- 	Wait(500)
-- 	print(GetFuel(GetVehiclePedIsIn(GetPlayerPed(source))))
-- end, false)

RPC.register('desirerp-fuel:PurchaseSuccessful', function(src, gprice)
	local pSrc = src
	local user = exports["desirerp-base"]:getModule("Player"):GetUser(pSrc)

	if user:getBalance() >= gprice then
		print(gprice)
		user:removeBank(gprice)
		return true
	else
		TriggerClientEvent('DoLongHudText', pSrc, 'Not enough money in bank!', 2)
		return false
	end
end)

RegisterNetEvent('desirerp-fuel:Refund', function(gprice)
	local pSrc = source
	exports['desirerp-fw']:GetModule('AddBank')(pSrc, tonumber(gprice))
end)