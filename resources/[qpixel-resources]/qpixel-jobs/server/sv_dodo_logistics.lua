RegisterServerEvent('qpixel-jobs:dodoLogisticsPayout')
AddEventHandler('qpixel-jobs:dodoLogisticsPayout', function()
    local src = tonumber(source)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(src)
    local payment = math.random(250, 325)

    user:addBank(payment)
    TriggerClientEvent('DoLongHudText', src, 'You completed the delivery and got $'..payment , 1)
end)