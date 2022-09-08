RegisterServerEvent("qpixel-base:sv:player_control_set")
AddEventHandler("qpixel-base:sv:player_control_set", function(controlsTable)
    local src = source
    QPX.DB:UpdateControls(src, controlsTable, function(UpdateControls, err)
            if UpdateControls then
                -- we are good here.
            end
    end)
end)

RegisterServerEvent("qpixel-base:sv:player_controls")
AddEventHandler("qpixel-base:sv:player_controls", function()
    local src = source
    QPX.DB:GetControls(src, function(loadedControls, err)
        if loadedControls ~= nil then 
            TriggerClientEvent("qpixel-base:cl:player_control", src, loadedControls) 
        else 
            TriggerClientEvent("qpixel-base:cl:player_control",src, nil) print('controls fucked') 
        end
    end)
end)
