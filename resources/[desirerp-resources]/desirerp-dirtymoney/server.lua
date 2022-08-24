RegisterServerEvent("desirerp-dirtymoney:attemptDirtyMoneyDrops")
AddEventHandler("desirerp-dirtymoney:attemptDirtyMoneyDrops", function()
	local src = source
	local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
	local DirtyMoney = user:getDirtyMoney()

	if DirtyMoney > 500 then
		TriggerClientEvent("desirerp-dirtymoney:attemptDirtyMoneyDrops",source)
		DirtyMoney = DirtyMoney - 500
		user:alterDirtyMoney(DirtyMoney)

		TriggerClientEvent('UPV',src,500)
	else
		TriggerClientEvent("DoLongHudText",source,"You need $500 in Marked Bills.",2)
	end

end)

RegisterServerEvent("desirerp-dirtymoney:alterDirtyMoney")
AddEventHandler("desirerp-dirtymoney:alterDirtyMoney", function(reason, amount)
	local src = source
	local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
	local DirtyMoney = user:getDirtyMoney()

	if reason == "ItemDrop" then
		TriggerClientEvent("desirerp-dirtymoney:attemptDirtyMoneyDrops",source)
		DirtyMoney = DirtyMoney - amount
		user:alterDirtyMoney(DirtyMoney)

		TriggerClientEvent('UPV',src,amount)
	else
		DirtyMoney = DirtyMoney + amount
		user:alterDirtyMoney(DirtyMoney)
	end

end)

RegisterServerEvent("desirerp-dirtymoney:moneyPickup")
AddEventHandler("desirerp-dirtymoney:moneyPickup", function(amount)
	local src = source
	local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
	user:addMoney((amount))
end)