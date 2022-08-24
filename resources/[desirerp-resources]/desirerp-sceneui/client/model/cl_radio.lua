--[[RegisterNUICallback("desirerp-ui:hudUpdateRadioSettings", function(data, cb)
    exports["desirerp-base"]:getModule("SettingsData"):setSettingsTableGlobal({ ["tokovoip"] = data.settings }, true)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterNUICallback("desirerp-ui:hudUpdateKeybindSettings", function(data, cb)
    exports["desirerp-base"]:getModule("DataControls"):encodeSetBindTable(data.controls)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
end)]]