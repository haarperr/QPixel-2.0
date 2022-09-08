QPX.Player = QPX.Player or {}
QPX.LocalPlayer = QPX.LocalPlayer or {}

local function GetUser()
    return QPX.LocalPlayer
end

function QPX.LocalPlayer.setVar(self, var, data)
    GetUser()[var] = data
end

function QPX.LocalPlayer.getVar(self, var)
    return GetUser()[var]
end

function QPX.LocalPlayer.setCurrentCharacter(self, data)
    if not data then return end
    GetUser():setVar("character", data)
end

function QPX.LocalPlayer.getCurrentCharacter(self)
    return GetUser():getVar("character")
end

RegisterNetEvent("qpixel-base:networkVar")
AddEventHandler("qpixel-base:networkVar", function(var, val)
    QPX.LocalPlayer:setVar(var, val)
end)

RegisterNetEvent('returnOldRouting')
AddEventHandler('returnOldRouting', function()
    TriggerServerEvent('qpixel-spawn:SetOldRouting')
end)