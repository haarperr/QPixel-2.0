--[[RegisterNUICallback("qpixel-ui:hudUpdateRadioSettings", function(data, cb)
    exports["qpixel-base"]:getModule("SettingsData"):setSettingsTableGlobal({ ["tokovoip"] = data.settings }, true)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
end)

RegisterNUICallback("qpixel-ui:hudUpdateKeybindSettings", function(data, cb)
    exports["qpixel-base"]:getModule("DataControls"):encodeSetBindTable(data.controls)
    cb({ data = {}, meta = { ok = true, message = 'done' } })
end)]]