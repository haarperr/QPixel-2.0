DPX.SpawnManager = {}

RegisterServerEvent('desirerp-base:spawnInitialized')
AddEventHandler('desirerp-base:spawnInitialized', function()
    local src = source
    TriggerClientEvent('desirerp-base:spawnInitialized', src)
end)