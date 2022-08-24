local pPlate = nil

RegisterNetEvent('desirerp-jobs:impound')
AddEventHandler('desirerp-jobs:impound', function()
    local ImpoundMenu = {
		{
      title = "Release Vehicle",
      description = "Release a vehicle from the impound lot",
      key = "ReleaseVehicle",
      children = {
          {
            title = "Browse by Plate",
            description = "Release a vehicle from impound by plate",
            action = "desirerp-jobs:browse_plate",
          },
        },
      }
    }
    exports["desirerp-interface"]:showContextMenu(ImpoundMenu)
end)

RegisterInterfaceCallback('desirerp-jobs:browse_plate', function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
    exports['desirerp-interface']:openApplication('textbox', {
        callbackUrl = 'desirerp-jobs:pPlateBrowse',
        key = 1,
        items = {
          {
            icon = "car",
            label = "Vehicle Plate.",
            name = "pVehPlate",
          },
        },
      show = true,
    })
end)

RegisterInterfaceCallback('desirerp-jobs:pPlateBrowse', function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
  pPlate = data.values.pVehPlate
  
  TriggerServerEvent('desirerp-impound:select_plate', pPlate)
end)

RegisterNetEvent('desirerp-impound:show_car')
AddEventHandler('desirerp-impound:show_car', function(pVehicleModel, pVehiclePlate, pState)
    local pVehicle = {
		  {
        title = "Vehicle Model: "..pVehicleModel,
        description = "Vehicle Plate: "..pVehiclePlate,
      },
      {
        title = "Release Vehicle",
        disabled = pState,
        action= "desirerp-jobs:release_vehicle",
      }
    }
    exports["desirerp-interface"]:showContextMenu(pVehicle)
end)

RegisterInterfaceCallback('desirerp-jobs:release_vehicle', function(data, cb)
  cb({ data = {}, meta = { ok = true, message = '' } })
  print(pPlate)
  TriggerServerEvent('desirerp-impound:release_car', pPlate)
end)

-- Police --

RegisterNetEvent('desirerp-jobs:normal-impound')
AddEventHandler('desirerp-jobs:normal-impound', function()
	playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
   	targetVehicle = getVehicleInDirection(coordA, coordB)
	licensePlate = GetVehicleNumberPlateText(targetVehicle)
  FreezeEntityPosition(PlayerPedId(), true)
  local finished = exports['desirerp-taskbar']:taskBar(5000, "Impounding Vehicle...")
  if finished == 100 then
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("desirerp-imp:NormalImpound",licensePlate)
    TriggerEvent('DoLongHudText', 'Impounded with retrieval price of $1000', 1)
    deleteVeh(targetVehicle)
  end
end)

RegisterNetEvent('desirerp-jobs:scuff_impound')
AddEventHandler('desirerp-jobs:scuff_impound', function()
	playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
    targetVehicle = getVehicleInDirection(coordA, coordB)
	licensePlate = GetVehicleNumberPlateText(targetVehicle)
  FreezeEntityPosition(PlayerPedId(), true)
  local finished = exports['desirerp-taskbar']:taskBar(5000, "Impounding Vehicle...")
  if finished == 100 then
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("desirerp-imp:ScuffImpound",licensePlate)
    deleteVeh(targetVehicle)
  end
end)

RegisterNetEvent('desirerp-jobs:full_impound')
AddEventHandler('desirerp-jobs:full_impound', function()
	playerped = PlayerPedId()
    coordA = GetEntityCoords(playerped, 1)
    coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
   	targetVehicle = getVehicleInDirection(coordA, coordB)
	licensePlate = GetVehicleNumberPlateText(targetVehicle)
  FreezeEntityPosition(PlayerPedId(), true)
  local finished = exports['desirerp-taskbar']:taskBar(5000, "Impounding Vehicle...")
  if finished == 100 then
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("desirerp-imp:FullImpound",licensePlate)
    TriggerEvent('DoLongHudText', 'Impounded with retrieval price of $5000', 1)
    deleteVeh(targetVehicle)
  end
end)

RegisterNetEvent('desirerp-jobs:police_impound_menu')
AddEventHandler('desirerp-jobs:police_impound_menu', function()
    local ImpoundMenu = {
		{
            title = "Full Impound",
            description = "A full impound will cost the owner $5000 to retrieve the vehicle at any time from the impound lot.",
            action = "desirerp-jobs:full-impound",
        },
        {
            title = "Normal Impound",
            description = "A full impound will cost the owner $1000 to retrieve the vehicle at any time from the impound lot.",
            action = "desirerp-jobs:normal-impound",
        },
        {
            title = "Scuff Impound",
            description = "A scuff impound will put the owners vehicle back into the last garage it was in.",
            action = "desirerp-jobs:scuff-impound",
        },
      }
    exports["desirerp-interface"]:showContextMenu(ImpoundMenu)
end)

RegisterInterfaceCallback('desirerp-jobs:full-impound', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-jobs:full_impound')
end)

RegisterInterfaceCallback('desirerp-jobs:normal-impound', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-jobs:normal-impound')
end)

RegisterInterfaceCallback('desirerp-jobs:scuff-impound', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerEvent('desirerp-jobs:scuff_impound')
end)

-- Functions --

function getVehicleInDirection(coordFrom, coordTo)
	local offset = 0
	local rayHandle
	local vehicle

	for i = 0, 100 do
		rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z + offset, 10, PlayerPedId(), 0)	
		a, b, c, d, vehicle = GetRaycastResult(rayHandle)
		
		offset = offset - 1

		if vehicle ~= 0 then break end
	end
	
	local distance = Vdist2(coordFrom, GetEntityCoords(vehicle))
	
	if distance > 25 then vehicle = nil end

    return vehicle ~= nil and vehicle or 0
end

function deleteVeh(ent)
	SetVehicleHasBeenOwnedByPlayer(ent, true)
	NetworkRequestControlOfEntity(ent)
	local finished = exports["desirerp-taskbar"]:taskBar(1000,"Impounding",false,true)	
	Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(ent))
	DeleteEntity(ent)
	DeleteVehicle(ent)
	SetEntityAsNoLongerNeeded(ent)
end

-- Polyzone Shit --

exports["desirerp-polytarget"]:AddCircleZone("desire_impound_retrieve",  vector3(-192.43, -1161.93, 23.52), 0.25, {
    useZ = true
})

exports["desirerp-interact"]:AddPeekEntryByPolyTarget("desire_impound_retrieve", {{
    event = "desirerp-jobs:impound",
    id = "desire_impound_retrieve",
    icon = "car",
    label = "View Personal Impounded Vehicles !",
    parameters = {},
}}, {
    distance = { radius = 1.5 },
});