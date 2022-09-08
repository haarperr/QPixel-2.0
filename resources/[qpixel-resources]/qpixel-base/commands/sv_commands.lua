QPX.Commands = QPX.Commands or {}
QPX.Commands.Registered = QPX.Commands.Registered or {}

AddEventHandler("qpixel-base:exportsReady", function()
    addModule("Commands", QPX.Commands)
end)

function QPX.Commands.AddCommand(self, command, suggestion, source, cb, args)
    --print('hi from commands')
    print("adding command "..command)
    if QPX.Commands.Registered[command] then return end
      table.insert(QPX.Commands.Registered, { ['command'] = command, ['suggestion'] = suggestion, ['args'] = args })
      QPX.Commands.Registered[command] = true
    cb(ok)
end

function QPX.Commands.RemoveCommand(self, command, suggestion, source, cb, args)
    print('command removed')
    if not QPX.Commands.Registered[command] or nil then return end
      -- table.remove(QPX.Commands.Registered, { ['command'] = command, ['suggestion'] = suggestion, ['args'] = args })
    QPX.Commands.Registered[command] = false
    cb(ok)
end

RegisterCommand('commands', function()
  print(json.encode(QPX.Commands.Registered))
end)

--[[
AddEventHandler('chatMessage', function(Source, Color, Message)
    if Message:sub(1, 1) == '/' then
        local fullcmd = stringsplit(Message, ' ')
        local cmd = fullcmd[1]
		local Comment

		if #fullcmd > 1 then
			Comment = fullcmd[2]
			if #fullcmd > 2 then
				for i=3, #fullcmd do
					Comment = Comment .. ' ' .. fullcmd[i]
				end
			end
		end
		
        if cmd:lower() == '/savepos' then
        	TriggerClientEvent('CoordSaver:GetCoords', Source, Comment)
        	CancelEvent()
        end
    end
end)

function stringsplit(Input, Seperator)
	if Seperator == nil then
		Seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(Input, '([^'..Seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

]]