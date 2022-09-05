-- Police Duty --

local PDService = false

RegisterNetEvent('desirerp-duty:PoliceMenu')
AddEventHandler('desirerp-duty:PoliceMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDuty"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDuty"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDuty')
AddEventHandler('desirerp-duty:OnDuty', function()
	if PDService == false then
		TriggerServerEvent('desirerp-duty:AttemptDuty')
		TriggerEvent('np_clothing:inService', true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDuty')
AddEventHandler('desirerp-duty:OffDuty', function()
	if PDService == true then
		PDService = false
		TriggerEvent('np_clothing:inService', false)
		exports['desirerp-voice']:removePlayerFromRadio()
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", false)
		TriggerEvent('radio:SetRadioStatus', false)
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerServerEvent('myskin_customization:wearSkin')
		TriggerServerEvent('tattoos:retrieve')
		TriggerServerEvent('Blemishes:retrieve')
		TriggerEvent("police:noLongerCop")
		TriggerEvent("logoffmedic")		
		TriggerEvent("loggedoff")					
		TriggerEvent('nowCopSpawnOff')
		TriggerEvent('nowMedicOff')
		SetPedRelationshipGroupHash(PlayerPedId(),`PLAYER`)
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`PLAYER`)
		SetPoliceIgnorePlayer(PlayerPedId(),false)
		TriggerServerEvent('desirerp-duty:OffDutyComplete')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:PDSuccess')
AddEventHandler('desirerp-duty:PDSuccess', function()
	if PDService == false then
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", true)
		exports['desirerp-voice']:addPlayerToRadio(1)
		TriggerEvent('radio:SetRadioStatus', true)
		PDService = true
		TriggerEvent('nowCop')
		TriggerEvent('nowService')
		TriggerEvent('nowCopHud')
		TriggerEvent('nowCopDeath')
		TriggerEvent('nowCopSpawn')
		TriggerEvent('nowMedic')
		TriggerEvent("armory:ammo")
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`MISSION2`)
		SetPedRelationshipGroupHash(PlayerPedId(),`MISSION2`)
		SetPoliceIgnorePlayer(PlayerPedId(),true)
		exports['desirerp-dispatch']:callsign_command()
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- EMS Duty --

local EMSService = false

RegisterNetEvent('desirerp-duty:EMSMenu')
AddEventHandler('desirerp-duty:EMSMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyEMS"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyEMS"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyEMS')
AddEventHandler('desirerp-duty:OnDutyEMS', function()
	if EMSService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyEMS')
		TriggerEvent('desirerp-clothing:inService', true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyEMS')
AddEventHandler('desirerp-duty:OffDutyEMS', function()
	if EMSService == true then
		EMSService = false
		TriggerEvent('desirerp-clothing:inService', false)
		exports['desirerp-voice']:removePlayerFromRadio()
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", false)
		TriggerEvent('radio:SetRadioStatus', false)
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerServerEvent('myskin_customization:wearSkin')
		TriggerServerEvent('tattoos:retrieve')
		TriggerServerEvent('Blemishes:retrieve')
		TriggerEvent("logoffmedic")		
		TriggerEvent("loggedoff")					
		TriggerEvent('nowCopSpawnOff')
		TriggerEvent('nowMedicOff')
		SetPedRelationshipGroupHash(PlayerPedId(),`PLAYER`)
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`PLAYER`)
		SetPoliceIgnorePlayer(PlayerPedId(),false)
		TriggerServerEvent('desirerp-duty:OffDutyCompleteEMS')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:EMSSuccess')
AddEventHandler('desirerp-duty:EMSSuccess', function()
	if EMSService == false then
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", true)
		exports['desirerp-voice']:addPlayerToRadio(2)
		TriggerEvent('radio:SetRadioStatus', true)
		EMSService = true
		TriggerEvent('nowCop')
		TriggerEvent('nowService')
		TriggerEvent('nowCopHud')
		TriggerEvent('nowCopDeath')
		TriggerEvent('nowCopSpawn')
		TriggerEvent('nowMedic')
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`MISSION2`)
		SetPedRelationshipGroupHash(PlayerPedId(),`MISSION2`)
		SetPoliceIgnorePlayer(PlayerPedId(),true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Suits Duty ----------------------------------------------------------------

local SuitsService = false

RegisterNetEvent('desirerp-duty:SuitsMenu')
AddEventHandler('desirerp-duty:SuitsMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutySuits"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutySuits"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutySuits')
AddEventHandler('desirerp-duty:OnDutySuits', function()
	if SuitsService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutySuits')
		TriggerEvent('desirerp-clothing:inService', true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutySuits')
AddEventHandler('desirerp-duty:OffDutySuits', function()
	if SuitsService == true then
		SuitsService = false
		TriggerEvent('desirerp-clothing:inService', false)
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerServerEvent('myskin_customization:wearSkin')
		TriggerServerEvent('tattoos:retrieve')
		TriggerServerEvent('Blemishes:retrieve')
		TriggerEvent("logoffmedic")		
		TriggerEvent("loggedoff")					
		TriggerEvent('nowCopSpawnOff')
		TriggerEvent('nowMedicOff')
		SetPedRelationshipGroupHash(PlayerPedId(),`PLAYER`)
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`PLAYER`)
		SetPoliceIgnorePlayer(PlayerPedId(),false)
		TriggerServerEvent('desirerp-duty:OffDutyCompleteSuits')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:SuitsSuccess')
AddEventHandler('desirerp-duty:SuitsSuccess', function()
	if SuitsService == false then
		SuitsService = true
		TriggerEvent('nowCop')
		TriggerEvent('nowService')
		TriggerEvent('nowCopHud')
		TriggerEvent('nowCopDeath')
		TriggerEvent('nowCopSpawn')
		TriggerEvent('nowMedic')
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`MISSION2`)
		SetPedRelationshipGroupHash(PlayerPedId(),`MISSION2`)
		SetPoliceIgnorePlayer(PlayerPedId(),true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Judge Duty ------------------------------------------------------------

local JudgeService = false

RegisterNetEvent('desirerp-duty:JudgeMenu')
AddEventHandler('desirerp-duty:JudgeMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyJudge"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyJudge"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyJudge')
AddEventHandler('desirerp-duty:OnDutyJudge', function()
	if JudgeService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyJudge')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyJudge')
AddEventHandler('desirerp-duty:OffDutyJudge', function()
	if JudgeService == true then
		JudgeService = false
		TriggerServerEvent('desirerp-duty:OffDutyCompleteEMS')
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:JudgeSuccess')
AddEventHandler('desirerp-duty:JudgeSuccess', function()
	if JudgeService == false then
		JudgeService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- DA Duty --

local DAService = false

RegisterNetEvent('desirerp-duty:DAMenu')
AddEventHandler('desirerp-duty:DAMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyDA"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyDA"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyDA')
AddEventHandler('desirerp-duty:OnDutyDA', function()
	if DAService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyDA')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyDA')
AddEventHandler('desirerp-duty:OffDutyDA', function()
	if DAService == true then
		DAService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:DASuccess')
AddEventHandler('desirerp-duty:DASuccess', function()
	if DAService == false then
		DAService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Public Duty --

local PublicService = false

RegisterNetEvent('desirerp-duty:PublicMenu')
AddEventHandler('desirerp-duty:PublicMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyPublic"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyPublic"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyPublic')
AddEventHandler('desirerp-duty:OnDutyPublic', function()
	if PublicService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyPublic')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyPublic')
AddEventHandler('desirerp-duty:OffDutyPublic', function()
	if PublicService == true then
		PublicService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:PublicSuccess')
AddEventHandler('desirerp-duty:PublicSuccess', function()
	if PublicService == false then
		PublicService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- ADA Duty --

local ADAService = false

RegisterNetEvent('desirerp-duty:ADAMenu')
AddEventHandler('desirerp-duty:ADAMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyADA"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyADA"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyADA')
AddEventHandler('desirerp-duty:OnDutyADA', function()
	if PublicService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyADA')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyADA')
AddEventHandler('desirerp-duty:OffDutyADA', function()
	if ADAService == true then
		ADAService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:ADASuccess')
AddEventHandler('desirerp-duty:ADASuccess', function()
	if ADAService == false then
		ADAService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- PDM Duty --

local PDMService = false

RegisterNetEvent('desirerp-duty:PDMMenu')
AddEventHandler('desirerp-duty:PDMMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyPDM"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyPDM"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyPDM')
AddEventHandler('desirerp-duty:OnDutyPDM', function()
	if PDMService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyPDM')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyPDM')
AddEventHandler('desirerp-duty:OffDutyPDM', function()
	if PDMService == true then
		PDMService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:PDMSuccess')
AddEventHandler('desirerp-duty:PDMSuccess', function()
	if PDMService == false then
		PDMService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Sanders Duty --

local SandersService = false

RegisterNetEvent('desirerp-duty:SandersMenu')
AddEventHandler('desirerp-duty:SandersMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutySanders"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutySanders"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutySanders')
AddEventHandler('desirerp-duty:OnDutySanders', function()
	if SandersService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutySanders')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutySanders')
AddEventHandler('desirerp-duty:OffDutySanders', function()
	if SandersService == true then
		SandersService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:SandersSuccess')
AddEventHandler('desirerp-duty:SandersSuccess', function()
	if SandersService == false then
		SandersService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Sanders Duty --

local TowService = false

RegisterNetEvent('desirerp-duty:TowMenu')
AddEventHandler('desirerp-duty:TowMenu', function()
	TriggerEvent('desirerp-context:sendMenu', {
        {
            id = 1,
            header = "Sign In / Off ",
            txt = ""
        },
        {
            id = 2,
            header = "Signing On Duty",
			txt = "Use this to sign in",
			params = {
                event = "desirerp-duty:OnDutyTow"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "desirerp-duty:OffDutyTow"
            }
        },
    })
end)

RegisterNetEvent('desirerp-duty:OnDutyTow')
AddEventHandler('desirerp-duty:OnDutyTow', function()
	if TowService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyTow')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:OffDutyTow')
AddEventHandler('desirerp-duty:OffDutyTow', function()
	if TowService == true then
		TowService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:TowSuccess')
AddEventHandler('desirerp-duty:TowSuccess', function()
	if TowService == false then
		TowService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterCommand('dutyon', function()
	TriggerEvent('desirerp-duty:OnDuty')
end)
RegisterCommand('dutyoff', function()
	TriggerEvent('desirerp-duty:OffDuty')
end)