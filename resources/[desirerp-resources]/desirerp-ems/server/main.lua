RegisterServerEvent('admin:revivePlayer')
AddEventHandler('admin:revivePlayer', function(target)
	if target ~= nil then
		TriggerClientEvent('admin:revivePlayerClient', target)
		TriggerClientEvent('desirerp-hospital:client:RemoveBleed', target) 
        TriggerClientEvent('desirerp-hospital:client:ResetLimbs', target)
	end
end)

RegisterServerEvent('desirerp-ems:heal')
AddEventHandler('desirerp-ems:heal', function(target)
	TriggerClientEvent('desirerp-ems:heal', target) 	
end)

RegisterServerEvent('desirerp-ems:heal2')
AddEventHandler('desirerp-ems:heal2', function(target)
	TriggerClientEvent('desirerp-ems:big', target)
end)