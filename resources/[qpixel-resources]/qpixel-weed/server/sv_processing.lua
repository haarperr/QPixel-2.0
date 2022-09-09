RPC.register('qpixel-weed:deliverpackage', function()
    TriggerClientEvent('inventory:removeItem', source, 'weedpackage', 1)
end)