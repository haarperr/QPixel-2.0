-- Police Duty --

local PDService = false
local SASPService = false
local BCSOService = false
local SAPRService = false
local DOCService = false
local DISPATCHERService = false

RegisterNetEvent('desirerp-police:DOCDuty')
AddEventHandler('desirerp-police:DOCDuty', function()

	local menuData = {
		{
            title = "DOC",
            description = "Sign On/Off Duty",
            key = "EVENTS.DOC",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:OnDutyDOC", key = "EVENTS.DOC" },
				{ title = "Sign Off Duty", action = "desirerp-duty:OffDutyDOC", key = "EVENTS.DOC" },
            },
        },
    }
    exports["desirerp-interface"]:showContextMenu(menuData)
end)

RegisterCommand('duty', function()
	TriggerEvent('desirerp-duty:PoliceMenu')
end)

RegisterNetEvent('desirerp-duty:PoliceMenu')
AddEventHandler('desirerp-duty:PoliceMenu', function()
	local menuData = {
		{
            title = "Police",
            description = "Sign On/Off Duty",
            key = "EVENTS.POLICE",
			children = {
				{
					title = "LSPD",
					key = "EVENTS.LSPD",
					children = {
						{
							title = "Sign On Duty",
							action = "desirerp-duty:OnDutyPD",
						},
						{
							title = "Sign Off Duty",
							action = "desirerp-duty:OffDutyPD",
						},
					}
				},
				{
					title = "SASP",
					key = "EVENTS.SASP",
					children = {
						{
							title = "Sign On Duty",
							action = "desirerp-duty:OnDutyHP",
						},
						{
							title = "Sign Off Duty",
							action = "desirerp-duty:OffDutyHP",
						},
					}
				},
				{
					title = "BCSO",
					key = "EVENTS.SASP",
					children = {
						{
							title = "Sign On Duty",
							action = "desirerp-duty:OnDutySH",
						},
						{
							title = "Sign Off Duty",
							action = "desirerp-duty:OffDutySH",
						},
					}
				},
				{
					title = "Rangers",
					key = "EVENTS.RANGERS",
					children = {
						{
							title = "Sign On Duty",
							action = "desirerp-duty:OnDutyRN",
						},
						{
							title = "Sign Off Duty",
							action = "desirerp-duty:OffDutyRN",
						},
					}
				},
            },
        },
		{
            title = "DOC",
            description = "Sign On/Off Duty",
            key = "EVENTS.DOC",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:OnDutyDOC", key = "EVENTS.DOC" },
				{ title = "Sign Off Duty", action = "desirerp-duty:OffDutyDOC", key = "EVENTS.DOC" },
            },
        },
		{
            title = "Dispatcher",
            description = "Sign On/Off Duty",
            key = "EVENTS.DISPATCHER",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:OnDutyDispatcher", key = "EVENTS.DISPATCHER" },
				{ title = "Sign Off Duty", action = "desirerp-duty:OffDutyDispatcher", key = "EVENTS.DISPATCHER" },
            },
        },
    }
    exports["desirerp-interface"]:showContextMenu(menuData)
end)

RegisterInterfaceCallback("desirerp-duty:OnDutyPD", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if PDService == false then
		TriggerServerEvent('desirerp-duty:AttemptDuty', 'police')
		TriggerEvent('desirerp-clothing:inService', true)
		TriggerServerEvent('dispatch:setcallsign')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OffDutyPD", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if PDService == true then
		PDService = false
		TriggerEvent('desirerp-clothing:inService', false)
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
		TriggerServerEvent('desirerp-duty:OffDutyComplete', 'police')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You wasnt on duty!', 2)
	end
end)

-- Sheriff

RegisterInterfaceCallback("desirerp-duty:OnDutySH", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if BCSOService == false then
		TriggerServerEvent('desirerp-duty:AttemptDuty', 'sheriff')
		TriggerEvent('desirerp-clothing:inService', true)
		TriggerServerEvent('dispatch:setcallsign')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OnDutyRN", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if SAPRService == false then
		TriggerServerEvent('desirerp-duty:AttemptDuty', 'ranger')
		TriggerEvent('desirerp-clothing:inService', true)
		TriggerServerEvent('dispatch:setcallsign')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OffDutySH", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if BCSOService == true then
		BCSOService = false
		TriggerEvent('desirerp-clothing:inService', false)
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
		TriggerServerEvent('desirerp-duty:OffDutyComplete', 'sheriff')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You wasnt on duty!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OffDutyRN", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if SAPRService == true then
		SAPRService = false
		TriggerEvent('desirerp-clothing:inService', false)
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
		TriggerServerEvent('desirerp-duty:OffDutyComplete', 'ranger')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You wasnt on duty!', 2)
	end
end)


-- State

RegisterInterfaceCallback("desirerp-duty:OnDutyHP", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if SASPService == false then
		TriggerServerEvent('desirerp-duty:AttemptDuty', 'state')
		TriggerEvent('desirerp-clothing:inService', true)
		TriggerServerEvent('dispatch:setcallsign')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OffDutyHP", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if SASPService == true then
		SASPService = false
		TriggerEvent('desirerp-clothing:inService', false)
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
		TriggerServerEvent('desirerp-duty:OffDutyComplete', 'state')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You wasnt on duty!', 2)
	end
end)

-- DOC

RegisterInterfaceCallback("desirerp-duty:OnDutyDOC", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if DOCService == false then
		TriggerServerEvent('desirerp-duty:AttemptDuty', 'doc')
		TriggerEvent('desirerp-clothing:inService', true)
		TriggerServerEvent('dispatch:setcallsign')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OnDutyDispatcher", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if DISPATCHERService == false then
		DISPATCHERService = true
		TriggerEvent('DoLongHudText', 'Clocked in as Dispatcher.', 1)
		TriggerServerEvent('desirerp-duty:AttemptDuty', 'dispatcher')
		TriggerServerEvent('dispatch:setcallsign')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OffDutyDOC", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if DOCService == true then
		DOCService = false
		TriggerEvent('desirerp-clothing:inService', false)
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
		TriggerServerEvent('desirerp-duty:OffDutyComplete', 'doc')
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You wasnt on duty!', 2)
	end
end)

RegisterInterfaceCallback("desirerp-duty:OffDutyDispatcher", function(data, cb)
	cb({ data = {}, meta = { ok = true, message = 'done' } })
	if DISPATCHERService == true then
		DISPATCHERService = false
		TriggerEvent('desirerp-clothing:inService', false)
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
		TriggerEvent("DoLongHudText",'Signed off Duty!',1)
	else
		TriggerEvent("DoLongHudText",'You wasnt on duty!', 2)
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
		SetPedRelationshipGroupDefaultHash(PlayerPedId(),`MISSION2`)
		SetPedRelationshipGroupHash(PlayerPedId(),`MISSION2`)
		SetPoliceIgnorePlayer(PlayerPedId(),true)
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:BCSOSuccess')
AddEventHandler('desirerp-duty:BCSOSuccess', function()
	if BCSOService == false then
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", true)
		exports['desirerp-voice']:addPlayerToRadio(1)
		TriggerEvent('radio:SetRadioStatus', true)
		BCSOService = true
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

RegisterNetEvent('desirerp-duty:SAPRSuccess')
AddEventHandler('desirerp-duty:SAPRSuccess', function()
	if SAPRService == false then
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", true)
		exports['desirerp-voice']:addPlayerToRadio(1)
		TriggerEvent('radio:SetRadioStatus', true)
		SAPRService = true
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

RegisterNetEvent('desirerp-duty:SASPSuccess')
AddEventHandler('desirerp-duty:SASPSuccess', function()
	if SASPService == false then
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", true)
		exports['desirerp-voice']:addPlayerToRadio(1)
		TriggerEvent('radio:SetRadioStatus', true)
		SASPService = true
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

RegisterNetEvent('desirerp-duty:DOCSuccess')
AddEventHandler('desirerp-duty:DOCSuccess', function()
	if DOCService == false then
		exports["desirerp-voice"]:setVoiceProperty("radioEnabled", true)
		exports['desirerp-voice']:addPlayerToRadio(3)
		TriggerEvent('radio:SetRadioStatus', true)
		DOCService = true
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

-- EMS Duty --

local EMSService = false

RegisterNetEvent('desirerp-duty:EMSMenu')
AddEventHandler('desirerp-duty:EMSMenu', function()

	local EMSData = {
		{
            title = "EMS",
            description = "Sign On/Off Duty",
            key = "EVENTS.EMS",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:ems_41", key = "EVENTS.EMS" },
				{ title = "Sign Off Duty", action = "desirerp-duty:ems_42", key = "EVENTS.EMS" },
            },
        },
    }
    exports["desirerp-interface"]:showContextMenu(EMSData)
end)

RegisterInterfaceCallback('desirerp-duty:ems_42', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:OffDutyEMS')
end)

RegisterInterfaceCallback('desirerp-duty:ems_41', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:OnDutyEMS')
end)

RegisterNetEvent('desirerp-duty:OnDutyEMS')
AddEventHandler('desirerp-duty:OnDutyEMS', function()
	if EMSService == false then
		TriggerServerEvent('desirerp-duty:AttemptDutyEMS')
		TriggerEvent('desirerp-clothing:inService', true)
		TriggerServerEvent('dispatch:setcallsign')
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


-- Judge Duty ------------------------------------------------------------

local JudgeService = false

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


curPolice = 0

RegisterNetEvent('job:policecount')
AddEventHandler('job:policecount', function(pAmount)
	curPolice = pAmount
end)

function LawAmount()
	return curPolice
end

-- DOJ Duty --

local ClockedInAsJudge = false

local ClockedInAsPublicDefender = false

local ClockedInAsDistrictAttorney = false

RegisterNetEvent('desirerp-duty:doj_board')
AddEventHandler('desirerp-duty:doj_board', function()

	local JudgeData = {
		{
            title = "Judge Duty",
            description = "Sign On/Off Duty",
            key = "EVENTS.JUDGE",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:judge_on", key = "EVENTS.JUDGE" },
				{ title = "Sign Off Duty", action = "desirerp-duty:judge_off", key = "EVENTS.JUDGE" },
            },
        },
		{
            title = "Public Defender Duty",
            description = "Sign On/Off Duty",
            key = "EVENTS.DEFENDER",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:defender_on", key = "EVENTS.DEFENDER" },
				{ title = "Sign Off Duty", action = "desirerp-duty:defender_off", key = "EVENTS.DEFENDER" },
            },
        },
		{
            title = "District Attorney Duty",
            description = "Sign On/Off Duty",
            key = "EVENTS.ATTORNEY",
			children = {
				{ title = "Sign On Duty", action = "desirerp-duty:attorney_on", key = "EVENTS.ATTORNEY" },
				{ title = "Sign Off Duty", action = "desirerp-duty:attorney_off", key = "EVENTS.ATTORNEY" },
            },
        },
    }
    exports["desirerp-interface"]:showContextMenu(JudgeData)
end)

RegisterInterfaceCallback('desirerp-duty:attorney_on', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:clock_in:district_attorney')
end)

RegisterInterfaceCallback('desirerp-duty:attorney_off', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:clock_out:district_attorney')
end)

RegisterInterfaceCallback('desirerp-duty:defender_on', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:clock_in:public_defender')
end)

RegisterInterfaceCallback('desirerp-duty:defender_off', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:clock_out:public_defender')
end)

RegisterInterfaceCallback('desirerp-duty:judge_on', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:clock_in:judge')
end)

RegisterInterfaceCallback('desirerp-duty:judge_off', function(data, cb)
	cb({ data = {}, meta = { ok = true, message = '' } })
	TriggerEvent('desirerp-duty:clock_out:judge')
end)


-- Judge --

RegisterNetEvent('desirerp-duty:clock_in:judge')
AddEventHandler('desirerp-duty:clock_in:judge', function()
	if ClockedInAsJudge == false then
		TriggerServerEvent('desirerp-duty:attempt_duty:judge')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:clock_out:judge')
AddEventHandler('desirerp-duty:clock_out:judge', function()
	if ClockedInAsJudge == true then
		ClockedInAsJudge = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed out. You are no longer a Judge', 2)
		TriggerServerEvent('desirerp-duty:offDutyJudge')
	else
		TriggerEvent("DoLongHudText",'You was never clocked in as a Judge', 2)
	end
end)

RegisterNetEvent('desirerp-duty:clocked_in:judge_successful')
AddEventHandler('desirerp-duty:clocked_in:judge_successful', function()
	if ClockedInAsJudge == false then
		ClockedInAsJudge = true
	else
		TriggerEvent("DoLongHudText",'You are already clocked in as a Judge', 2)
	end
end)

-- Public Defender --

RegisterNetEvent('desirerp-duty:clock_in:public_defender')
AddEventHandler('desirerp-duty:clock_in:public_defender', function()
	if ClockedInAsPublicDefender == false then
		TriggerServerEvent('desirerp-duty:attempt_duty:public_defender')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:clock_out:public_defender')
AddEventHandler('desirerp-duty:clock_out:public_defender', function()
	if ClockedInAsPublicDefender == true then
		ClockedInAsPublicDefender = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed out. You are no longer a Public Defender', 2)
		TriggerServerEvent('desirerp-duty:offDutyDefender')
	else
		TriggerEvent("DoLongHudText",'You was never clocked in as a Public Defender', 2)
	end
end)

RegisterNetEvent('desirerp-duty:clocked_in:public_defender_successful')
AddEventHandler('desirerp-duty:clocked_in:public_defender_successful', function()
	if ClockedInAsPublicDefender == false then
		ClockedInAsPublicDefender = true
	else
		TriggerEvent("DoLongHudText",'You are already clocked in as a Public Defender', 2)
	end
end)

-- District Attorney --

RegisterNetEvent('desirerp-duty:clock_in:district_attorney')
AddEventHandler('desirerp-duty:clock_in:district_attorney', function()
	if ClockedInAsDistrictAttorney == false then
		TriggerServerEvent('desirerp-duty:attempt_duty:district_attorney')
	else
		TriggerEvent("DoLongHudText",'You are on duty already!', 2)
	end
end)

RegisterNetEvent('desirerp-duty:clock_out:district_attorney')
AddEventHandler('desirerp-duty:clock_out:district_attorney', function()
	if ClockedInAsDistrictAttorney == true then
		ClockedInAsDistrictAttorney = false
		TriggerServerEvent("jobssystem:jobs", "unemployed")
		TriggerEvent("DoLongHudText",'Signed out. You are no longer a District Attorney', 2)
	else
		TriggerEvent("DoLongHudText",'You was never clocked in as a District Attorney', 2)
	end
end)

RegisterNetEvent('desirerp-duty:clocked_in:district_attorney_successful')
AddEventHandler('desirerp-duty:clocked_in:district_attorney_successful', function()
	if ClockedInAsDistrictAttorney == false then
		ClockedInAsDistrictAttorney = true
	else
		TriggerEvent("DoLongHudText",'You are already clocked in as a District Attorney', 2)
	end
end)