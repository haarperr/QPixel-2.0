RegisterServerEvent("qpixel-base:sv:player_settings_set")
AddEventHandler("qpixel-base:sv:player_settings_set", function(settingsTable)
    local src = source
    DPX.DB:UpdateSettings(src, settingsTable, function(UpdateSettings, err)
            if UpdateSettings then
                -- we are good here.
            end
    end)
end)

RegisterServerEvent("qpixel-base:sv:player_settings")
AddEventHandler("qpixel-base:sv:player_settings", function()
    local src = source
    DPX.DB:GetSettings(src, function(loadedSettings, err)
        if loadedSettings ~= nil then 
            TriggerClientEvent("qpixel-base:cl:player_settings", src, loadedSettings) 
        else 
            TriggerClientEvent("qpixel-base:cl:player_settings",src, nil) 
        end
    end)
end)
