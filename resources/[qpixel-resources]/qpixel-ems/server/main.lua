RegisterServerEvent('admin:revivePlayer')
AddEventHandler('admin:revivePlayer', function(target)
	if target ~= nil then
		TriggerClientEvent('admin:revivePlayerClient', target)
		TriggerClientEvent('qpixel-hospital:client:RemoveBleed', target) 
        TriggerClientEvent('qpixel-hospital:client:ResetLimbs', target)
	end
end)

RegisterServerEvent('qpixel-ems:heal')
AddEventHandler('qpixel-ems:heal', function(target)
	TriggerClientEvent('qpixel-ems:heal', target) 	
end)

RegisterServerEvent('qpixel-ems:heal2')
AddEventHandler('qpixel-ems:heal2', function(target)
	TriggerClientEvent('qpixel-ems:big', target)
end)