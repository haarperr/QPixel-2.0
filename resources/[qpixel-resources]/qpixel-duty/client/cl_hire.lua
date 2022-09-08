RegisterNetEvent("qpixel-jobsystem:PoliceJobMenu")
AddEventHandler("qpixel-jobsystem:PoliceJobMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedPD", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:PoliceJobMenu2")
AddEventHandler("qpixel-jobsystem:PoliceJobMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedPD", valid[1].input)
    end
end)

-- DOJ------------------------------------------------------------------------------------------------------------------
--Judge-----------------------------------

RegisterNetEvent("qpixel-jobsystem:JudgeJobMenuHire")
AddEventHandler("qpixel-jobsystem:JudgeJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedJudge", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:JudgeJobMenuFire")
AddEventHandler("qpixel-jobsystem:JudgeJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedJudge", valid[1].input)
    end
end)
--DA------------------------------------

RegisterNetEvent("qpixel-jobsystem:DAJobMenuHire")
AddEventHandler("qpixel-jobsystem:DAJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedDA", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:DAJobMenuFire")
AddEventHandler("qpixel-jobsystem:DAJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedDA", valid[1].input)
    end
end)

--ADA---------------------------------------

RegisterNetEvent("qpixel-jobsystem:ADAJobMenuHire")
AddEventHandler("qpixel-jobsystem:ADAJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedADA", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:ADAJobMenuFire")
AddEventHandler("qpixel-jobsystem:ADAJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedADA", valid[1].input)
    end
end)

--Defender-------------------------------------------

RegisterNetEvent("qpixel-jobsystem:DefenderJobMenuHire")
AddEventHandler("qpixel-jobsystem:DefenderJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedDefender", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:DefenderJobMenuFire")
AddEventHandler("qpixel-jobsystem:DefenderJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedDefender", valid[1].input)
    end
end)

-- Tow Hire / Fire ----------------------------------------------------------------------------------------------------
RegisterNetEvent("qpixel-jobsystem:TowJobMenuHire")
AddEventHandler("qpixel-jobsystem:TowJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedTow", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:TowJobMenuFire")
AddEventHandler("qpixel-jobsystem:TowJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedTow", valid[1].input)
    end
end)

-- Heat Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:heatJobMenuHire")
AddEventHandler("qpixel-jobsystem:heatJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassHeat", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:heatJobMenuFire")
AddEventHandler("qpixel-jobsystem:heatJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassHeat", valid[1].input)
    end
end)

-- Bondi Boys Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:bondiJobMenuHire")
AddEventHandler("qpixel-jobsystem:bondiJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassBondi", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:bondiJobMenuFire")
AddEventHandler("qpixel-jobsystem:bondiJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassBondi", valid[1].input)
    end
end)

-- Casino Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:casinoJobMenuHire")
AddEventHandler("qpixel-jobsystem:casinoJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassCasino", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:casinoJobMenuFire")
AddEventHandler("qpixel-jobsystem:casinoJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassCasino", valid[1].input)
    end
end)


-- Real Estate Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:reJobMenuHire")
AddEventHandler("qpixel-jobsystem:reJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassRe", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:reJobMenuFire")
AddEventHandler("qpixel-jobsystem:reJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassRe", valid[1].input)
    end
end)

-- Rockford Records Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:rrJobMenuHire")
AddEventHandler("qpixel-jobsystem:rrJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassrr", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:rrJobMenuFire")
AddEventHandler("qpixel-jobsystem:rrJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassrr", valid[1].input)
    end
end)


-- Yakuza Job Menu -------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:yakuzaJobMenuHire")
AddEventHandler("qpixel-jobsystem:yakuzaJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassYakuza", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:yakuzaJobMenuFire")
AddEventHandler("qpixel-jobsystem:yakuzaJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassYakuza", valid[1].input)
    end
end)

-- Winery Job Menu --------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:WineryJobMenuHire")
AddEventHandler("qpixel-jobsystem:WineryJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassWinery", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:WineryJobMenuFire")
AddEventHandler("qpixel-jobsystem:WineryJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassWinery", valid[1].input)
    end
end)

--- EMS --------------------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:EMSJobMenu")
AddEventHandler("qpixel-jobsystem:EMSJobMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedEMS", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:EMSJobMenu2")
AddEventHandler("qpixel-jobsystem:EMSJobMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedEMS", valid[1].input)
    end
end)

----AK customs Hire / Fire --------------------------

RegisterNetEvent("qpixel-jobsystem:AkJobMenuHire")
AddEventHandler("qpixel-jobsystem:AkJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassAk_customs", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:AkJobMenuFire")
AddEventHandler("qpixel-jobsystem:AkJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassAk_customs", valid[1].input)
    end
end)

---- Radical Hire / Fire --------------------------

RegisterNetEvent("qpixel-jobsystem:RadicalJobMenuHire")
AddEventHandler("qpixel-jobsystem:RadicalJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassRadical", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:RadicalJobMenuFire")
AddEventHandler("qpixel-jobsystem:RadicalJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassRadical", valid[1].input)
    end
end)

----AOD Hire / Fire --------------------------

RegisterNetEvent("qpixel-jobsystem:AodJobMenuHire")
AddEventHandler("qpixel-jobsystem:AodJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassAod", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:AodJobMenuFire")
AddEventHandler("qpixel-jobsystem:AodJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassAod", valid[1].input)
    end
end)
---- Pearls customs Hire / Fire ----------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:PearlsJobMenuHire")
AddEventHandler("qpixel-jobsystem:PearlsJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassPearls", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:PearlsJobMenuFire")
AddEventHandler("qpixel-jobsystem:PearlsJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassPearls", valid[1].input)
    end
end)

----VU Hire / Fire --------------------------

RegisterNetEvent("qpixel-jobsystem:VUJobMenuHire")
AddEventHandler("qpixel-jobsystem:VUJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassVU", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:VUJobMenuFire")
AddEventHandler("qpixel-jobsystem:VUJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassVU", valid[1].input)
    end
end)

--PDM -------------------------------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:PDMJobMenu")
AddEventHandler("qpixel-jobsystem:PDMJobMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedPDM", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:PDMJobMenu2")
AddEventHandler("qpixel-jobsystem:PDMJobMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedPDM", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:NoodleJobMenu")
AddEventHandler("qpixel-jobsystem:NoodleJobMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedNoodle", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:NoodleJobMenu2")
AddEventHandler("qpixel-jobsystem:NoodleJobMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedNoodle", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:BSJobMenuHire")
AddEventHandler("qpixel-jobsystem:BSJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassBS", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:BSJobMenuFire")
AddEventHandler("qpixel-jobsystem:BSJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassBS", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:SandersJobMenu")
AddEventHandler("qpixel-jobsystem:SandersJobMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedSanders", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:SandersJobMenu2")
AddEventHandler("qpixel-jobsystem:SandersJobMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedSanders", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:TowJobMenu")
AddEventHandler("qpixel-jobsystem:TowJobMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedTow", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:TowJobMenu2")
AddEventHandler("qpixel-jobsystem:TowJobMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedTow", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:releaseVehicle")
AddEventHandler("qpixel-jobsystem:releaseVehicle", function()
    local ped = PlayerPedId()
	local dist = #(GetEntityCoords(ped)-vector3(-193.37142944336,-1162.4571533203,23.668823242188))
	if dist <= 2.5 then 
        local valid = exports["qpixel-keyboard"]:KeyboardInput({
            header = "Release Vehicle Menu",
            rows = {
                {
                    id = 0,
                    txt = "Plate Number"
                },
            }
        })
        if valid then
            TriggerServerEvent("qpixel-jobsystem:releaseVehicle", valid[1].input)
        end
    else
        exports['qpixel-notification']:Alert({style = 'error', duration = 3000, message = 'You need to be at the front desk at the tow union to release the vehicle!'})
    end
end)

RegisterNetEvent("qpixel-jobsystem:WeedMenu")
AddEventHandler("qpixel-jobsystem:WeedMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedWeed", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:WeedMenu2")
AddEventHandler("qpixel-jobsystem:WeedMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedWeed", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:GalMenu")
AddEventHandler("qpixel-jobsystem:GalMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedGal", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:GalMenu2")
AddEventHandler("qpixel-jobsystem:GalMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedGal", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:LostMenu")
AddEventHandler("qpixel-jobsystem:LostMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedLost", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:LostMenu2")
AddEventHandler("qpixel-jobsystem:LostMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedLost", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:RedMenu")
AddEventHandler("qpixel-jobsystem:RedMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedRed", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:RedMenu2")
AddEventHandler("qpixel-jobsystem:RedMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedRed", valid[1].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:UGMenu")
AddEventHandler("qpixel-jobsystem:UGMenu", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addJobWhitelsitedUG", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:UGMenu2")
AddEventHandler("qpixel-jobsystem:UGMenu2", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:fireJobWhitelsitedUG", valid[1].input)
    end
end)

-- Suits Job Menu --------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:suitsJobMenuHire")
AddEventHandler("qpixel-jobsystem:suitsJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassSuits", valid[1].input, valid[2].input)
    end
end)


RegisterNetEvent("qpixel-jobsystem:suitsJobMenuFire")
AddEventHandler("qpixel-jobsystem:suitsJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassSuits", valid[1].input)
    end
end)

-- UG Casino Job Menu --------------------------------------------------------------------------------------

RegisterNetEvent("qpixel-jobsystem:ugCasinoJobMenuHire")
AddEventHandler("qpixel-jobsystem:ugCasinoJobMenuHire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
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
        TriggerServerEvent("qpixel-jobsystem:addCharacterPassUgCasino", valid[1].input, valid[2].input)
    end
end)

RegisterNetEvent("qpixel-jobsystem:ugCasinoJobMenuFire")
AddEventHandler("qpixel-jobsystem:ugCasinoJobMenuFire", function()
    local valid = exports["qpixel-keyboard"]:KeyboardInput({
        header = "Fire Menu",
        rows = {
            {
                id = 0,
                txt = "Enter CID"
            },
        }
    })
    if valid then
        TriggerServerEvent("qpixel-jobsystem:removeCharacterPassUgCasino", valid[1].input)
    end
end)