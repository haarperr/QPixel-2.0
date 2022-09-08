local currentCops = 0
local currentEMS = 0

RegisterServerEvent('qpixel-duty:AttemptDuty')
AddEventHandler('qpixel-duty:AttemptDuty', function(pJobType, pJob)
	local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	local job = pJobType and pJobType or 'police'
	exports.ghmattimysql:execute('SELECT callsign FROM jobs_whitelist WHERE cid = ?', {character.id}, function(result)
		jobs:SetJob(user, job, false, function()
			TriggerClientEvent('qpixel-duty:PDSuccess', src)
			TriggerClientEvent("DoLongHudText", src,"10-41 and Restocked.",17)
			TriggerClientEvent("startSpeedo",src)
			currentCops = currentCops + 1
			TriggerClientEvent("job:policecount", -1, currentCops)
			TriggerEvent('badBlips:server:registerPlayerBlipGroup', src, 'police')
			TriggerEvent("badBlips:server:registerSourceName", src, character.first_name .. " " ..character.last_name.. " | " .. result[1].callsign)
		end)
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutyEMS')
AddEventHandler('qpixel-duty:AttemptDutyEMS', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	local job = pJobType and pJobType or 'ems'
	exports.ghmattimysql:execute('SELECT callsign FROM jobs_whitelist WHERE cid = ?', {character.id}, function(result)
		jobs:SetJob(user, job, false, function()
			TriggerClientEvent('qpixel-duty:EMSSuccess', src)
			TriggerClientEvent("DoLongHudText", src,"On-Duty.",17)
			currentEMS = currentEMS + 1
			TriggerClientEvent("job:emscount", -1, currentEMS)
			TriggerEvent('badBlips:server:registerPlayerBlipGroup', src, 'ems')
			TriggerEvent("badBlips:server:registerSourceName", src, character.first_name .. " " ..character.last_name.. " | " .. result[1].callsign)
		end)
	end)
end)

RegisterServerEvent('qpixel-duty:OffDutyComplete')
AddEventHandler('qpixel-duty:OffDutyComplete', function()
	if currentCops ~= 0 then
		currentCops = currentCops - 1
	else
		currentCops = 0
	end
	TriggerClientEvent("job:policecount", -1, currentCops)
	TriggerEvent('badBlips:server:removePlayerBlipGroup', src, 'police')
end)

RegisterServerEvent('qpixel-duty:OffDutyCompleteEMS')
AddEventHandler('qpixel-duty:OffDutyCompleteEMS', function()
	if currentEMS ~= 0 then
		currentEMS = currentEMS - 1
	else
		currentEMS = 0
	end
	TriggerClientEvent("job:emscount", -1, currentEMS)
	TriggerEvent('badBlips:server:removePlayerBlipGroup', src, 'ems')
end)

RegisterServerEvent('qpixel-duty:AttemptDutyJudge')
AddEventHandler('qpixel-duty:AttemptDutyJudge', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'judge'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'judge', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:JudgeSuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutyDA')
AddEventHandler('qpixel-duty:AttemptDutyDA', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'da'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'da', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:DASuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutyPublic')
AddEventHandler('qpixel-duty:AttemptDutyPublic', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'defender'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'defender', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:PublicSuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutyADA')
AddEventHandler('qpixel-duty:AttemptDutyADA', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'ada'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'ada', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:ADASuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutyPDM')
AddEventHandler('qpixel-duty:AttemptDutyPDM', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'pdm'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'pdm', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:PDMSuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutySanders')
AddEventHandler('qpixel-duty:AttemptDutySanders', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'sanders'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'sanders', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:SandersSuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

RegisterServerEvent('qpixel-duty:AttemptDutyTow')
AddEventHandler('qpixel-duty:AttemptDutyTow', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ? AND job = ?', {character.id, 'towunion'}, function(result)
		if result[1] ~= nil then
			jobs:SetJob(user, 'towunion', false, function()
				TriggerClientEvent("DoLongHudText", src,"Clock On!", 1)
				TriggerClientEvent('qpixel-duty:TowSuccess', src)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,"You are not whitelisted for this job!", 2)
		end
	end)
end)

AddEventHandler('playerDropped', function()
	local src = source
	if src ~= nil then
		local steamIdentifier = GetPlayerIdentifiers(src)[1]
		exports.ghmattimysql:execute('SELECT * FROM characters WHERE owner = ?', {steamIdentifier}, function(result)
			if result[1].job == 'police' then
				if currentCops ~= 0 then
					currentCops = currentCops - 1
				else
					currentCops = 0
				end
                print('Active PD:', currentCops)
                exports.ghmattimysql:execute("UPDATE characters SET `job` = @job WHERE `owner` = @owner", {['@owner'] = steamIdentifier, ['@job'] = 'unemployed'})
				TriggerClientEvent("job:policecount", -1, currentCops)
				TriggerEvent('badBlips:server:removePlayerBlipGroup', src, 'police')
				TriggerClientEvent('qpixel-duty:OffDuty' ,src)
            elseif result[1].job == 'ems' then
                if currentEMS ~= 0 then
					currentEMS = currentEMS - 1
				else
					currentEMS = 0
				end
                print('Active EMS:', currentEMS)
				TriggerClientEvent('qpixel-duty:OffDutyEMS' ,src)
                exports.ghmattimysql:execute("UPDATE characters SET `job` = @job WHERE `owner` = @owner", {['@owner'] = steamIdentifier, ['@job'] = 'unemployed'})
				TriggerClientEvent("job:emscount", -1, currentEMS)
				TriggerEvent('badBlips:server:removePlayerBlipGroup', src, 'ems')
			end
		end)
	end
end)


function SignOnRadio(src)

	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local char = user:getCurrentCharacter()

	local q = [[SELECT id, cid, job, callsign, rank FROM jobs_whitelist WHERE cid = @cid AND (job = 'police' or job = 'doc')]]
	local v = {["cid"] = char.id}

	exports.ghmattimysql:execute(q, v, function(results)
		if not results then return end
		local callsign = ""
		if results[1].callsign ~= nil and results[1].callsign == "" then callsign = results[1].callsign else callsign = "TBD" end
		if (src ~= nil and char.first_name ~= nil and char.last_name ~= nil) then
			TriggerClientEvent("DoLongHudText", "Sessioned!?", 2)
		else
			TriggerClientEvent("SignOnRadio", src)
		end
	end)
end

--[[ RegisterCommand('callsign', function(source, args)
    local src = source
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ?', {character.id}, function(result)
		if result[1].job == 'police' or result[1].job == 'ems' then
			exports.ghmattimysql:execute("UPDATE jobs_whitelist SET `callsign` = @callsign WHERE cid = @cid", {['callsign'] = args[1], ['cid'] = character.id})
			TriggerClientEvent('police:setCallSign',src, args[1])
		else
			TriggerClientEvent('DoLongHudText', src, 'You are not Police or EMS!', 2)
		end
	end)
end) ]]


RegisterServerEvent('qpixel-duty:AttemptDutySuits')
AddEventHandler('qpixel-duty:AttemptDutySuits', function(src, pJobType)
	if src == nil or src == 0 then src = source end
	local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
	local character = user:getCurrentCharacter()
	local jobs = exports["qpixel-base"]:getModule("JobManager")
	local job = pJobType and pJobType or 'suits'
	exports.ghmattimysql:execute('SELECT job FROM jobs_whitelist WHERE cid = ?', {character.id}, function(result)
		if result[1].job == "suits" then
			exports.ghmattimysql:execute('SELECT callsign FROM jobs_whitelist WHERE cid = ?', {character.id}, function(result2)
				jobs:SetJob(user, job, false, function()
					TriggerClientEvent('qpixel-duty:SuitsSuccess', src)
					TriggerClientEvent("DoLongHudText", src,"On-Duty.",17)
					TriggerClientEvent("job:suitscount", -1, currentSuits)
				end)
			end)
		else
			TriggerClientEvent("DoLongHudText", src,'You are not qualified for this', 2)
		end
	end)
end)




