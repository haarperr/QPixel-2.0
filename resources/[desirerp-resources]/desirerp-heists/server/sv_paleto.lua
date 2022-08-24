local LootPaleto = false
CnaRob = true
Step1 = false

RegisterServerEvent("step1enable", function()
    local source = source
    Step1 = true
end)

RegisterServerEvent("desirerp-paleto:startCoolDown", function()
    local source = source
    CnaRob = false
    Available = false
    CreateThread(function()
        while true do
            Citizen.Wait(7200000)
            CnaRob = true
            Available = true
            TriggerServerEvent('desirerp-doors:change-lock-state', 45, true) 
        end
    end)
end)

RegisterServerEvent('desirerp-paleto:tut_tut')
AddEventHandler('desirerp-paleto:tut_tut', function()
    local src = source
    if not LootPaleto then
        LootPaleto = true
        TriggerClientEvent('desirerp-vault:grab', src)
        Citizen.Wait(40000)
        LootPaleto = false
    end
end)

RegisterServerEvent('desirerp-paleto:hacklaptop')
AddEventHandler('desirerp-paleto:hacklaptop', function()
    if Step1 then
        TriggerClientEvent('desirerp-paleto:startpaleto', source)
    end
end)