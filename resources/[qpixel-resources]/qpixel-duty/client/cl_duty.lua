-- Police Duty --

local PDService = false

RegisterNetEvent('qpixel-duty:PoliceMenu')
AddEventHandler('qpixel-duty:PoliceMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDuty"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDuty"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDuty')
AddEventHandler('qpixel-duty:OnDuty', function()
	if PDService == false then
		TriggerServerEvent('qpixel-duty:AttemptDuty')
		TriggerEvent('np_clothing:inService', true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDuty')
AddEventHandler('qpixel-duty:OffDuty', function()
	if PDService == true then
		PDService = false
		TriggerEvent('np_clothing:inService', false)
		exports['qpixel-voice']:removePlayerFromRadio()
		exports["qpixel-voice"]:setVoiceProperty("radioEnabled", false)
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
		TriggerServerEvent('qpixel-duty:OffDutyComplete')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:PDSuccess')
AddEventHandler('qpixel-duty:PDSuccess', function()
	if PDService == false then
		exports["qpixel-voice"]:setVoiceProperty("radioEnabled", true)
		exports['qpixel-voice']:addPlayerToRadio(1)
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
		exports['qpixel-dispatch']:callsign_command()
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- EMS Duty --

local EMSService = false

RegisterNetEvent('qpixel-duty:EMSMenu')
AddEventHandler('qpixel-duty:EMSMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyEMS"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyEMS"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyEMS')
AddEventHandler('qpixel-duty:OnDutyEMS', function()
	if EMSService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyEMS')
		TriggerEvent('qpixel-clothing:inService', true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyEMS')
AddEventHandler('qpixel-duty:OffDutyEMS', function()
	if EMSService == true then
		EMSService = false
		TriggerEvent('qpixel-clothing:inService', false)
		exports['qpixel-voice']:removePlayerFromRadio()
		exports["qpixel-voice"]:setVoiceProperty("radioEnabled", false)
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
		TriggerServerEvent('qpixel-duty:OffDutyCompleteEMS')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:EMSSuccess')
AddEventHandler('qpixel-duty:EMSSuccess', function()
	if EMSService == false then
		exports["qpixel-voice"]:setVoiceProperty("radioEnabled", true)
		exports['qpixel-voice']:addPlayerToRadio(2)
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

RegisterNetEvent('qpixel-duty:SuitsMenu')
AddEventHandler('qpixel-duty:SuitsMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutySuits"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutySuits"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutySuits')
AddEventHandler('qpixel-duty:OnDutySuits', function()
	if SuitsService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutySuits')
		TriggerEvent('qpixel-clothing:inService', true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutySuits')
AddEventHandler('qpixel-duty:OffDutySuits', function()
	if SuitsService == true then
		SuitsService = false
		TriggerEvent('qpixel-clothing:inService', false)
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
		TriggerServerEvent('qpixel-duty:OffDutyCompleteSuits')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:SuitsSuccess')
AddEventHandler('qpixel-duty:SuitsSuccess', function()
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

RegisterNetEvent('qpixel-duty:JudgeMenu')
AddEventHandler('qpixel-duty:JudgeMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyJudge"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyJudge"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyJudge')
AddEventHandler('qpixel-duty:OnDutyJudge', function()
	if JudgeService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyJudge')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyJudge')
AddEventHandler('qpixel-duty:OffDutyJudge', function()
	if JudgeService == true then
		JudgeService = false
		TriggerServerEvent('qpixel-duty:OffDutyCompleteEMS')
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:JudgeSuccess')
AddEventHandler('qpixel-duty:JudgeSuccess', function()
	if JudgeService == false then
		JudgeService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- DA Duty --

local DAService = false

RegisterNetEvent('qpixel-duty:DAMenu')
AddEventHandler('qpixel-duty:DAMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyDA"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyDA"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyDA')
AddEventHandler('qpixel-duty:OnDutyDA', function()
	if DAService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyDA')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyDA')
AddEventHandler('qpixel-duty:OffDutyDA', function()
	if DAService == true then
		DAService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:DASuccess')
AddEventHandler('qpixel-duty:DASuccess', function()
	if DAService == false then
		DAService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Public Duty --

local PublicService = false

RegisterNetEvent('qpixel-duty:PublicMenu')
AddEventHandler('qpixel-duty:PublicMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyPublic"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyPublic"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyPublic')
AddEventHandler('qpixel-duty:OnDutyPublic', function()
	if PublicService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyPublic')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyPublic')
AddEventHandler('qpixel-duty:OffDutyPublic', function()
	if PublicService == true then
		PublicService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:PublicSuccess')
AddEventHandler('qpixel-duty:PublicSuccess', function()
	if PublicService == false then
		PublicService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- ADA Duty --

local ADAService = false

RegisterNetEvent('qpixel-duty:ADAMenu')
AddEventHandler('qpixel-duty:ADAMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyADA"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyADA"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyADA')
AddEventHandler('qpixel-duty:OnDutyADA', function()
	if PublicService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyADA')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyADA')
AddEventHandler('qpixel-duty:OffDutyADA', function()
	if ADAService == true then
		ADAService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:ADASuccess')
AddEventHandler('qpixel-duty:ADASuccess', function()
	if ADAService == false then
		ADAService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- PDM Duty --

local PDMService = false

RegisterNetEvent('qpixel-duty:PDMMenu')
AddEventHandler('qpixel-duty:PDMMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyPDM"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyPDM"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyPDM')
AddEventHandler('qpixel-duty:OnDutyPDM', function()
	if PDMService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyPDM')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyPDM')
AddEventHandler('qpixel-duty:OffDutyPDM', function()
	if PDMService == true then
		PDMService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:PDMSuccess')
AddEventHandler('qpixel-duty:PDMSuccess', function()
	if PDMService == false then
		PDMService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Sanders Duty --

local SandersService = false

RegisterNetEvent('qpixel-duty:SandersMenu')
AddEventHandler('qpixel-duty:SandersMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutySanders"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutySanders"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutySanders')
AddEventHandler('qpixel-duty:OnDutySanders', function()
	if SandersService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutySanders')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutySanders')
AddEventHandler('qpixel-duty:OffDutySanders', function()
	if SandersService == true then
		SandersService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:SandersSuccess')
AddEventHandler('qpixel-duty:SandersSuccess', function()
	if SandersService == false then
		SandersService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

-- Sanders Duty --

local TowService = false

RegisterNetEvent('qpixel-duty:TowMenu')
AddEventHandler('qpixel-duty:TowMenu', function()
	TriggerEvent('qpixel-context:sendMenu', {
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
                event = "qpixel-duty:OnDutyTow"
            }
        },
		{
            id = 3,
            header = "Signing Off Duty",
			txt = "Use this to sign off",
			params = {
                event = "qpixel-duty:OffDutyTow"
            }
        },
    })
end)

RegisterNetEvent('qpixel-duty:OnDutyTow')
AddEventHandler('qpixel-duty:OnDutyTow', function()
	if TowService == false then
		TriggerServerEvent('qpixel-duty:AttemptDutyTow')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:OffDutyTow')
AddEventHandler('qpixel-duty:OffDutyTow', function()
	if TowService == true then
		TowService = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You are not on duty!', 2)
	end
end)

RegisterNetEvent('qpixel-duty:TowSuccess')
AddEventHandler('qpixel-duty:TowSuccess', function()
	if TowService == false then
		TowService = true
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterCommand('dutyon', function()
	TriggerEvent('qpixel-duty:OnDuty')
end)
RegisterCommand('dutyoff', function()
	TriggerEvent('qpixel-duty:OffDuty')
end)