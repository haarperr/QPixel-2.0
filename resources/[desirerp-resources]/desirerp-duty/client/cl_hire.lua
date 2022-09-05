RegisterNetEvent("desirerp-jobsystem:PoliceJobMenu")
AddEventHandler("desirerp-jobsystem:PoliceJobMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedPD", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:PoliceJobMenu2")
AddEventHandler("desirerp-jobsystem:PoliceJobMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedPD", valid[1].input)
    end
end)

-- DOJ------------------------------------------------------------------------------------------------------------------
--Judge-----------------------------------

RegisterNetEvent("desirerp-jobsystem:JudgeJobMenuHire")
AddEventHandler("desirerp-jobsystem:JudgeJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedJudge", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:JudgeJobMenuFire")
AddEventHandler("desirerp-jobsystem:JudgeJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedJudge", valid[1].input)
    end
end)
--DA------------------------------------

RegisterNetEvent("desirerp-jobsystem:DAJobMenuHire")
AddEventHandler("desirerp-jobsystem:DAJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedDA", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:DAJobMenuFire")
AddEventHandler("desirerp-jobsystem:DAJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedDA", valid[1].input)
    end
end)

--ADA---------------------------------------

RegisterNetEvent("desirerp-jobsystem:ADAJobMenuHire")
AddEventHandler("desirerp-jobsystem:ADAJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedADA", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:ADAJobMenuFire")
AddEventHandler("desirerp-jobsystem:ADAJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedADA", valid[1].input)
    end
end)

--Defender-------------------------------------------

RegisterNetEvent("desirerp-jobsystem:DefenderJobMenuHire")
AddEventHandler("desirerp-jobsystem:DefenderJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedDefender", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:DefenderJobMenuFire")
AddEventHandler("desirerp-jobsystem:DefenderJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedDefender", valid[1].input)
    end
end)

-- Tow Hire / Fire ----------------------------------------------------------------------------------------------------
RegisterNetEvent("desirerp-jobsystem:TowJobMenuHire")
AddEventHandler("desirerp-jobsystem:TowJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedTow", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:TowJobMenuFire")
AddEventHandler("desirerp-jobsystem:TowJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedTow", valid[1].input)
    end
end)

-- Heat Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:heatJobMenuHire")
AddEventHandler("desirerp-jobsystem:heatJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassHeat", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:heatJobMenuFire")
AddEventHandler("desirerp-jobsystem:heatJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassHeat", valid[1].input)
    end
end)

-- Bondi Boys Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:bondiJobMenuHire")
AddEventHandler("desirerp-jobsystem:bondiJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassBondi", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:bondiJobMenuFire")
AddEventHandler("desirerp-jobsystem:bondiJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassBondi", valid[1].input)
    end
end)

-- Casino Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:casinoJobMenuHire")
AddEventHandler("desirerp-jobsystem:casinoJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassCasino", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:casinoJobMenuFire")
AddEventHandler("desirerp-jobsystem:casinoJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassCasino", valid[1].input)
    end
end)


-- Real Estate Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:reJobMenuHire")
AddEventHandler("desirerp-jobsystem:reJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassRe", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:reJobMenuFire")
AddEventHandler("desirerp-jobsystem:reJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassRe", valid[1].input)
    end
end)

-- Rockford Records Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:rrJobMenuHire")
AddEventHandler("desirerp-jobsystem:rrJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassrr", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:rrJobMenuFire")
AddEventHandler("desirerp-jobsystem:rrJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassrr", valid[1].input)
    end
end)


-- Yakuza Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:yakuzaJobMenuHire")
AddEventHandler("desirerp-jobsystem:yakuzaJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassYakuza", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:yakuzaJobMenuFire")
AddEventHandler("desirerp-jobsystem:yakuzaJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassYakuza", valid[1].input)
    end
end)

-- Winery Job Menu --------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:WineryJobMenuHire")
AddEventHandler("desirerp-jobsystem:WineryJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassWinery", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:WineryJobMenuFire")
AddEventHandler("desirerp-jobsystem:WineryJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassWinery", valid[1].input)
    end
end)

--- EMS --------------------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:EMSJobMenu")
AddEventHandler("desirerp-jobsystem:EMSJobMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedEMS", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:EMSJobMenu2")
AddEventHandler("desirerp-jobsystem:EMSJobMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedEMS", valid[1].input)
    end
end)

----AK customs Hire / Fire --------------------------

RegisterNetEvent("desirerp-jobsystem:AkJobMenuHire")
AddEventHandler("desirerp-jobsystem:AkJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassAk_customs", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:AkJobMenuFire")
AddEventHandler("desirerp-jobsystem:AkJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassAk_customs", valid[1].input)
    end
end)

---- Radical Hire / Fire --------------------------

RegisterNetEvent("desirerp-jobsystem:RadicalJobMenuHire")
AddEventHandler("desirerp-jobsystem:RadicalJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassRadical", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:RadicalJobMenuFire")
AddEventHandler("desirerp-jobsystem:RadicalJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassRadical", valid[1].input)
    end
end)

----AOD Hire / Fire --------------------------

RegisterNetEvent("desirerp-jobsystem:AodJobMenuHire")
AddEventHandler("desirerp-jobsystem:AodJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassAod", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:AodJobMenuFire")
AddEventHandler("desirerp-jobsystem:AodJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassAod", valid[1].input)
    end
end)
---- Pearls customs Hire / Fire ----------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:PearlsJobMenuHire")
AddEventHandler("desirerp-jobsystem:PearlsJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassPearls", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:PearlsJobMenuFire")
AddEventHandler("desirerp-jobsystem:PearlsJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassPearls", valid[1].input)
    end
end)

----VU Hire / Fire --------------------------

RegisterNetEvent("desirerp-jobsystem:VUJobMenuHire")
AddEventHandler("desirerp-jobsystem:VUJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassVU", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:VUJobMenuFire")
AddEventHandler("desirerp-jobsystem:VUJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassVU", valid[1].input)
    end
end)

--PDM -------------------------------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:PDMJobMenu")
AddEventHandler("desirerp-jobsystem:PDMJobMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedPDM", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:PDMJobMenu2")
AddEventHandler("desirerp-jobsystem:PDMJobMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedPDM", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:NoodleJobMenu")
AddEventHandler("desirerp-jobsystem:NoodleJobMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedNoodle", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:NoodleJobMenu2")
AddEventHandler("desirerp-jobsystem:NoodleJobMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedNoodle", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:BSJobMenuHire")
AddEventHandler("desirerp-jobsystem:BSJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassBS", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:BSJobMenuFire")
AddEventHandler("desirerp-jobsystem:BSJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassBS", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:SandersJobMenu")
AddEventHandler("desirerp-jobsystem:SandersJobMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedSanders", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:SandersJobMenu2")
AddEventHandler("desirerp-jobsystem:SandersJobMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedSanders", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:TowJobMenu")
AddEventHandler("desirerp-jobsystem:TowJobMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedTow", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:TowJobMenu2")
AddEventHandler("desirerp-jobsystem:TowJobMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedTow", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:releaseVehicle")
AddEventHandler("desirerp-jobsystem:releaseVehicle", function()
    local ped = PlayerPedId()
	local dist = #(GetEntityCoords(ped)-vector3(-193.37142944336,-1162.4571533203,23.668823242188))
	if dist <= 2.5 then 
        local valid = exports["desirerp-keyboard"]:KeyboardInput({
            header = "Release Vehicle Menu",
            rows = {
                {
                    id = 0,
                    txt = "Plate Number"
                },
            }
        })
        if valid then
            TriggerServerEvent("desirerp-jobsystem:releaseVehicle", valid[1].input)
        end
    else
        exports['desirerp-notification']:Alert({style = 'error', duration = 3000, message = 'You need to be at the front desk at the tow union to release the vehicle!'})
    end
end)

RegisterNetEvent("desirerp-jobsystem:WeedMenu")
AddEventHandler("desirerp-jobsystem:WeedMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedWeed", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:WeedMenu2")
AddEventHandler("desirerp-jobsystem:WeedMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedWeed", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:GalMenu")
AddEventHandler("desirerp-jobsystem:GalMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedGal", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:GalMenu2")
AddEventHandler("desirerp-jobsystem:GalMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedGal", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:LostMenu")
AddEventHandler("desirerp-jobsystem:LostMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedLost", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:LostMenu2")
AddEventHandler("desirerp-jobsystem:LostMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedLost", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:RedMenu")
AddEventHandler("desirerp-jobsystem:RedMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedRed", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:RedMenu2")
AddEventHandler("desirerp-jobsystem:RedMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedRed", valid[1].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:UGMenu")
AddEventHandler("desirerp-jobsystem:UGMenu", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addJobWhitelsitedUG", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:UGMenu2")
AddEventHandler("desirerp-jobsystem:UGMenu2", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:fireJobWhitelsitedUG", valid[1].input)
    end
end)

-- Suits Job Menu --------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:suitsJobMenuHire")
AddEventHandler("desirerp-jobsystem:suitsJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassSuits", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("desirerp-jobsystem:suitsJobMenuFire")
AddEventHandler("desirerp-jobsystem:suitsJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassSuits", valid[1].input)
    end
end)

-- UG Casino Job Menu --------------------------------------------------------------------------------------

RegisterNetEvent("desirerp-jobsystem:ugCasinoJobMenuHire")
AddEventHandler("desirerp-jobsystem:ugCasinoJobMenuHire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Hire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
            {
                id = 1,
                txt = "Enter Rank"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:addCharacterPassUgCasino", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("desirerp-jobsystem:ugCasinoJobMenuFire")
AddEventHandler("desirerp-jobsystem:ugCasinoJobMenuFire", function()
    local valid = exports["desirerp-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("desirerp-jobsystem:removeCharacterPassUgCasino", valid[1].input)
    end
end)