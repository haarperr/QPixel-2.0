
Citizen.CreateThread(function()
    exports["desirerp-polyzone"]:AddBoxZone("saint_stash_1", vector3(-1796.87, 439.61, 128.39), 1, 1, {
        name="saint_stash_1",
        heading=0,
        --debugPoly=true,
        minZ=124.59,
        maxZ=128.59
    })
end)

SaintsStash = false

RegisterNetEvent('desirerp-polyzone:enter')
AddEventHandler('desirerp-polyzone:enter', function(name)
    if name == "saint_stash_1" then
        SaintsStash = true     
        SaintsStashhhh()
        local isEmployed = exports["desirerp-business"]:IsEmployedAt("saints")
        if isEmployed then
            exports['desirerp-interface']:showInteraction("[E] Stash")
        end
    end
end)

RegisterNetEvent('desirerp-polyzone:exit')
AddEventHandler('desirerp-polyzone:exit', function(name)
    if name == "saint_stash_1" then
        SaintsStash = false
        exports['desirerp-interface']:hideInteraction()
    end
end)

function SaintsStashhhh()
	Citizen.CreateThread(function()
        while SaintsStash do
            Citizen.Wait(5)
			if IsControlJustReleased(0, 38) then
                local isEmployed = exports["desirerp-business"]:IsEmployedAt("saints")
                if isEmployed then
                    TriggerEvent('desirerp-stashes:openAspect', 1)
                end
			end
		end
	end)
end

RegisterNetEvent('desirerp-stashes:openAspect')
AddEventHandler('desirerp-stashes:openAspect', function(stashNum)
    TriggerEvent('server-inventory-open', '1', 'saints-stash'..stashNum)
end)