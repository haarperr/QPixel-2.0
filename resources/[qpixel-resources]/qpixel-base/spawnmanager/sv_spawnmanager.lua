DPX.SpawnManager = {}

RegisterServerEvent('qpixel-base:spawnInitialized')
AddEventHandler('qpixel-base:spawnInitialized', function()
    local src = source
    TriggerClientEvent('qpixel-base:spawnInitialized', src)
end)