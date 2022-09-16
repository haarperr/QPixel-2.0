Citizen.CreateThread(function()
	ResetGarages()
	ResetPDGarages()
end)

function ResetGarages()

	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE vehicle_state = ?', {"Out"}, function(vehicles)
		for k, v in ipairs(vehicles) do
			exports.ghmattimysql:execute("UPDATE characters_cars SET vehicle_state = @state WHERE license_plate = @plate", {['state'] = 'In', ['plate'] = v.license_plate})
		end
	end)
end


function ResetPDGarages()
	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE vehicle_state = @state AND current_garage = @garage', {['@state'] = "Out",["garage"] = "Police Shared"}, function(vehicles)
		for k, v in ipairs(vehicles) do
			exports.ghmattimysql:execute("UPDATE characters_cars SET vehicle_state = @state WHERE license_plate = @plate", {['state'] = 'In', ['plate'] = v.license_plate})
		end
	end)
end


RegisterServerEvent("qpixel-garages:resetpdgarage")
AddEventHandler("qpixel-garages:resetpdgarage",function ()
    ResetPDGarages()
end)



RegisterServerEvent("qpixel-garages:resetcartoimpound")
AddEventHandler("qpixel-garages:resetcartoimpound",function (plate)
	exports.ghmattimysql:execute("UPDATE characters_cars SET vehicle_state = @state, current_garage = @garage WHERE license_plate = @plate", {['state'] = 'In',['garage'] = 'Impound Lot', ['plate'] = plate})
end)

RPC.register("qpixel-garages:select",function(pSource,garname)
	local src = source
	if garname.param == "Impound Lot" then
		exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE vehicle_state = @state', {['@state'] = "Out"}, function(vehicles)
			for k, v in ipairs(vehicles) do
				TriggerClientEvent("qpixel-garages:resetcartoimpound", src, v.license_plate)
			end
		end)
	end

    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE cid = @cid AND current_garage = @garage ', { ['@cid'] = char.id, ["garage"] = garname.param }, function(result)
		if (result and result[1]) then
			for ind, value in pairs(result) do
				enginePercent = value.engine_damage / 10
				bodyPercent = value.body_damage / 10
				curGarage = value.current_garage
				TriggerClientEvent('qpixel-context:sendMenu', src, {
					{
						id = value.id,
						header = value.name,
						txt = 'Plate: ' .. value.license_plate,
						params = {
							event = "qpixel-garages:takeout",
							args = value.id
						}
					},
				})
			end
		else
			TriggerClientEvent('DoLongHudText', src, 'There is no parked vehicles in this garage.', 2)
		end
	end)
end)

RPC.register("qpixel-garages:selectShared",function(pSource,garname)
    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()

	TriggerClientEvent('qpixel-context:sendMenu', src, {
		{
			id = "close",
			header = "Police Garage",
			txt = "",
			params = {
				event = "qpixel-garages:open2"
			}
		},
		{
			id = "lspd",
			header = "LSPD" ,
			txt = 'Los Santos Police Department',
			params = {
				event = "qpixel-garages:attempt:lspd",
				args = result
			}
		},
		{
			id = "bcso",
			header = "BCSO" ,
			txt = 'Blane County Sheriffs Office',
			params = {
				event = "qpixel-garages:attempt:bcso",
				args = result
			}
		},
		{
			id = "sasp",
			header = "SASP" ,
			txt = 'San Andreas State Police',
			params = {
				event = "qpixel-garages:attempt:sasp",
				args = result
			}
		},
		{
			id = "parkranger",
			header = "Park Ranger" ,
			txt = 'Park Rangers',
			params = {
				event = "qpixel-garages:attempt:parkranger",
				args = result
			}
		},
		{
			id = "doc",
			header = "DOC" ,
			txt = 'Department Of Corrections',
			params = {
				event = "qpixel-garages:attempt:doc",
				args = result
			}
		},

		
	})

	--[[ exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE current_garage = @garage ', { ["garage"] = garname.param }, function(result)
		if (result[1]) then
			for ind, value in pairs(result) do
				enginePercent = value.engine_damage / 10
				bodyPercent = value.body_damage / 10
				curGarage = value.current_garage

				TriggerClientEvent('qpixel-context:sendMenu', src, {
					{
						id = value.id,
						header = value.name,
						txt = 'Plate: ' .. value.license_plate,
						params = {
							event = "qpixel-garages:takeout2", 
							args = value.id
						}
					},
				})
			end
		else
			TriggerClientEvent('DoLongHudText', src, "There is no parked vehicles in this garage.", 2)
		end
	end) ]]
end)

RPC.register("qpixel-garages:attempt:sv",function(pSource,pdata)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE cid = @cid AND id = @id', { ['@cid'] = char.id, ['@id'] = pdata.param }, function(result)
		for ind, value in pairs(result) do
			TriggerClientEvent('qpixel-context:sendMenu', src, {
				{
					id = "close",
					header = "< Go Back",
					txt = "",
					params = {
						event = "qpixel-garages:open"
					}
				},
				{
					id = "take",
					header = "Take Out : " ..value.name ,
					txt = 'Spawn Selected Vehicle',
					params = {
						event = "qpixel-garages:attempt:spawn",
						args = result
					}
				},
				{
					id = "status",
					header = "Vehicle Status",
					txt = 'Garage : ' ..value.current_garage.. ' | Body : ' .. bodyPercent .. '% | Engine : ' .. enginePercent..'% | Fuel : '..value.fuel..'%',
					params = {
						event = "qpixel-garages:open"
					}
				},
				
			})
		end
	end)
end)

RPC.register("qpixel-garages:attempt:sv2",function(pSource,pdata)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE id = @id', { ['@id'] = pdata.param }, function(result)
		for ind, value in pairs(result) do
			TriggerClientEvent('qpixel-context:sendMenu', src, {
				{
					id = "close",
					header = "< Go Back",
					txt = "",
					params = {
						event = "qpixel-garages:open2"
					}
				},
				{
					id = "take",
					header = "Take Out : " ..value.name ,
					txt = 'Spawn Selected Vehicle',
					params = {
						event = "qpixel-garages:attempt:spawn2",
						args = result
					}
				},
				{
					id = "status",
					header = "Vehicle Status",
					txt = 'Garage : ' ..value.current_garage.. ' | Body : ' .. bodyPercent .. '% | Engine : ' .. enginePercent..'% | Fuel : '..value.fuel..'%',
					params = {
						event = "qpixel-garages:open2"
					}
				},
				
			})
		end
	end)
end)

RPC.register("qpixel-garages:spawned:get",function(pSource,valid)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()

	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE cid = @cid AND id = @id', { ['@cid'] = char.id, ['@id'] = valid.param }, function(result)
		if result[1].vehicle_state == "In" then
			TriggerClientEvent("qpixel-garages:attempt:spawn", src, result, true)
		else
			TriggerClientEvent('DoLongHudText', src, 'Vehicle is not in the garage. Check in your phone maybe.', 2)
		end
    end)
end)

RPC.register("qpixel-garages:spawned:getShared",function(pSource,valid)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()

	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE id = @id', { ['@id'] = valid.param }, function(result)
		if result[1].vehicle_state == "In" then
			TriggerClientEvent("qpixel-garages:attempt:spawn2", src, result, true)
		else
			TriggerClientEvent('DoLongHudText', src, 'Vehicle is not in the garage. Check in your phone maybe.', 2)
		end
    end)
end)

RPC.register("qpixel-garages:states",function(pSource,state,plate,curGarage,fuel)
	local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE cid = @cid AND license_plate = @plate', { ['@cid'] = char.id, ['@plate'] = plate.param }, function(result)
		exports.ghmattimysql:execute("UPDATE characters_cars SET vehicle_state = @state, current_garage = @garage, fuel = @fuel WHERE license_plate = @plate", {['garage'] = curGarage.param, ['state'] = state.param, ['fuel'] = fuel.param, ['plate'] = plate.param})
    end)
	return true
end) 

RPC.register("qpixel-garages:getonlyimpound",function(pSource)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE cid = @cid AND vehicle_state = @vehiclestate', { ['@cid'] = char.id, ['@vehiclestate'] = "Out"}, function(result)
		if (result and result[1]) and result[1].vehicle_state == "Out" then
			for ind, value in pairs(result) do
				enginePercent = value.engine_damage / 10
				bodyPercent = value.body_damage / 10
				curGarage = value.current_garage

				TriggerClientEvent('qpixel-context:sendMenu', src, {
					{
						id = value.id,
						header = value.name,
						txt = 'Plate: ' .. value.license_plate,
						params = {
							event = "qpixel-garages:takeout",
							args = value.id
						}
					},
				})
			end
		else
			TriggerClientEvent('DoLongHudText', src, 'You have no vehicle here', 2)
		end
	end)
end)

RegisterServerEvent('garages:CheckGarageForVeh')
AddEventHandler("garages:CheckGarageForVeh", function()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local owner = char.id

    exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE cid = @cid', { ['@cid'] = owner }, function(vehicles)
		local v = vehicles[1]
        TriggerClientEvent('phone:Garage', src, vehicles)
    end)
end)

RegisterServerEvent('garages:carisout')
AddEventHandler("garages:carisout", function()
    exports.ghmattimysql:execute('SELECT * FROM characters_cars', {}, function(vehicles)
		for k, v in ipairs(vehicles) do
			if v.vehicle_state == "Out" then
				exports.ghmattimysql:execute("UPDATE characters_cars SET vehicle_state = @state, coords = @coords WHERE license_plate = @plate", {['state'] = 'In', ['coords'] = nil, ['plate'] = v.license_plate})
			end
		end
	end)
end)


RegisterServerEvent('updateVehicle')
AddEventHandler('updateVehicle', function(vehicleMods,plate)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	if not user then return end
	local char = user:getCurrentCharacter()
	if not char then return end
	local owner = user:getVar("hexid")
	if not owner then return end
	vehicleMods = json.encode(vehicleMods)
	exports.ghmattimysql:execute("UPDATE characters_cars SET data=@mods WHERE license_plate = @plate",
	{['mods'] = vehicleMods, ['plate'] = plate})
end)

RegisterServerEvent("yorktax:vic")
AddEventHandler("yorktax:vic",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(5000)
end)

RegisterServerEvent("yorktax:blazer")
AddEventHandler("yorktax:blazer",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(10000)
end)

RegisterServerEvent("yorktax:exp")
AddEventHandler("yorktax:exp",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(15000)
end)

RegisterServerEvent("yorktax:mm")
AddEventHandler("yorktax:mm",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(15000)
end)

RegisterServerEvent("yorktax:vette")
AddEventHandler("yorktax:vette",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(75000)
end)

RegisterServerEvent("yorktax:chal")
AddEventHandler("yorktax:chal",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(85000)
end)

RegisterServerEvent("yorktax:stang")
AddEventHandler("yorktax:stang",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(65000)
end)

RegisterServerEvent("yorktax:char")
AddEventHandler("yorktax:char",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(30000)
end)

RegisterServerEvent("yorktax:speedo")
AddEventHandler("yorktax:speedo",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(15000)
end)

RegisterServerEvent("yorktax:bamb")
AddEventHandler("yorktax:bamb",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(5000)
end)

RegisterServerEvent("yorktax:bexp")
AddEventHandler("yorktax:bexp",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(15000)
end)

RegisterServerEvent("yorktax:emspro")
AddEventHandler("yorktax:emspro",function ()
    local src = source
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    user:removeMoney(35000)
end)



RPC.register("qpixel-garages:selecteddepartment",function(pSource,deparment)
    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()

	if deparment.param == 'lspd' then
		TriggerClientEvent('qpixel-context:sendMenu', src, {
			{
				id = "close",
				header = "Police Garage",
				txt = "",
				params = {
					event = "qpixel-garages:open2"
				}
			},
			{
				id = "patrol_lspd",
				header = "Patrol" ,
				txt = 'Patrol Vehicles',
				params = {
					event = "qpixel-garages:patrol",
					args = deparment.param
				}
			},
			{
				id = "interceptor_lspd",
				header = "Interceptor" ,
				txt = 'Interceptor Vehicles',
				params = {
					event = "qpixel-garages:intercept",
					args = deparment.param
				}
			},
			
		})
	end

	if deparment.param == 'bcso' then
		TriggerClientEvent('qpixel-context:sendMenu', src, {
			{
				id = "close",
				header = "Police Garage",
				txt = "",
				params = {
					event = "qpixel-garages:open2"
				}
			},
			{
				id = "patrol_7lspd",
				header = "Patrol" ,
				txt = 'Patrol Vehicles',
				params = {
					event = "qpixel-garages:patrol",
					args = deparment.param
				}
			},
			{
				id = "intercepto4r_lspd",
				header = "Interceptor" ,
				txt = 'Interceptor Vehicles',
				params = {
					event = "qpixel-garages:intercept",
					args = deparment.param
				}
			},
			
		})
	end

	if deparment.param == 'sasp' then
		TriggerClientEvent('qpixel-context:sendMenu', src, {
			{
				id = "close",
				header = "Police Garage",
				txt = "",
				params = {
					event = "qpixel-garages:open2"
				}
			},
			{
				id = "patrol_79lspd",
				header = "Patrol" ,
				txt = 'Patrol Vehicles',
				params = {
					event = "qpixel-garages:patrol",
					args = deparment.param
				}
			},
			{
				id = "intercepto94r_lspd",
				header = "Interceptor" ,
				txt = 'Interceptor Vehicles',
				params = {
					event = "qpixel-garages:intercept",
					args = deparment.param
				}
			},
			
		})
	end

	if deparment.param == 'parkranger' then
		TriggerClientEvent('qpixel-context:sendMenu', src, {
			{
				id = "close",
				header = "Police Garage",
				txt = "",
				params = {
					event = "qpixel-garages:open2"
				}
			},
			{
				id = "patrol_769lspd",
				header = "Patrol" ,
				txt = 'Patrol Vehicles',
				params = {
					event = "qpixel-garages:patrol",
					args = deparment.param
				}
			},
			{
				id = "intercept4o94r_lspd",
				header = "Interceptor" ,
				txt = 'Interceptor Vehicles',
				params = {
					event = "qpixel-garages:intercept",
					args = deparment.param
				}
			},
			
		})
	end

	if deparment.param == 'doc' then
		TriggerClientEvent('qpixel-context:sendMenu', src, {
			{
				id = "close",
				header = "Police Garage",
				txt = "",
				params = {
					event = "qpixel-garages:open2"
				}
			},
			{
				id = "patrol_79l9spd",
				header = "Patrol" ,
				txt = 'Patrol Vehicles',
				params = {
					event = "qpixel-garages:patrol",
					args = deparment.param
				}
			},
			{
				id = "intercepto964r_lspd",
				header = "Interceptor" ,
				txt = 'Interceptor Vehicles',
				params = {
					event = "qpixel-garages:intercept",
					args = deparment.param
				}
			},
			
		})
	end
end)

RPC.register("qpixel-garages:selecteddepartmentmod",function(pSource,departmentVeh)
    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	

	TriggerClientEvent('qpixel-context:sendMenu', src, {
		{
			id = "close",
			header = "Police Garage",
			txt = "",
			params = {
				event = "qpixel-garages:open2"
			}
		},
		{
			id = "fcv",
			header = "Ford Crown Victoria" ,
			txt = 'Cadet+',
			params = {
				event = "qpixel-garages:fordcrownvic",
				args = departmentVeh
			}
		},
		{
			id = "fex",
			header = "Ford Explorer" ,
			txt = 'Corporal+',
			params = {
				event = "qpixel-garages:fordexplorer",
				args = departmentVeh
			}
		},
		{
			id = "dcha",
			header = "Dodge Charger" ,
			txt = 'H.E.A.T Certified',
			params = {
				event = "qpixel-garages:dodgecharger",
				args = departmentVeh
			}
		},
	})
end)

RPC.register("qpixel-garages:selecteddepartmentmodImp",function(pSource,departmentVeh)
    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	

	TriggerClientEvent('qpixel-context:sendMenu', src, {
		{
			id = "close",
			header = "Police Garage",
			txt = "",
			params = {
				event = "qpixel-garages:open2"
			}
		},
		{
			id = "fgcv",
			header = "Dodge Charger" ,
			txt = 'H.E.A.T Certified',
			params = {
				event = "qpixel-garages:fordcrownvic",
				args = departmentVeh
			}
		},
		{
			id = "fedx",
			header = "Dodge Challenger" ,
			txt = 'H.E.A.T Certified',
			params = {
				event = "qpixel-garages:fordexplorer",
				args = departmentVeh
			}
		},
		{
			id = "dcgha",
			header = "Ford Mustang" ,
			txt = 'H.E.A.T Certified',
			params = {
				event = "qpixel-garages:dodgecharger",
				args = departmentVeh
			}
		},
		{
			id = "ddcha",
			header = "Chevrolet Corvette" ,
			txt = 'H.E.A.T Certified',
			params = {
				event = "qpixel-garages:dodgecharger",
				args = departmentVeh
			}
		},
	})
end)


RPC.register("qpixel-garages:viccategrey",function(pSource,departmentVeh, carAsk)
    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()
	local vehicleName = json.encode(carAsk.param)
	print("--------")
	print(json.encode(departmentVeh.param.param))
	print(json.encode(carAsk.param))


	exports.ghmattimysql:execute('SELECT * FROM characters_cars WHERE current_model = @model ', { ["model"] = departmentVeh.param.param }, function(result)
		if (result[1]) then
				for ind, value in pairs(result) do
					enginePercent = value.engine_damage / 10
					bodyPercent = value.body_damage / 10
					curGarage = value.current_garage

					nameC = 'Ford Victoria tes'

					if vehicleName == '"npolvic"' then
						nameC = 'Ford Victoria'
					end

					if vehicleName == '"npolstang"' then
						nameC = 'Ford Mustang'
					end

					TriggerClientEvent('qpixel-context:sendMenu', src, {
						{
							id = "close",
							header = "Police Garage",
							txt = "",
							params = {
								event = "qpixel-garages:open2"
							}
						},
						{
							id = value.id,
							header = nameC,
							txt = 'Plate : ' .. value.license_plate..' | Status : '..value.vehicle_state..'',
							params = {
								event = "qpixel-garages:takeout2", 
								args = value.id
							}
						},
					})
				end
		else
			TriggerClientEvent('DoLongHudText', src, "There is no parked vehicles in this garage.", 2)
		end
	end) 

end)