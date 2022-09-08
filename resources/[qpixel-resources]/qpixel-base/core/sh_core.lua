QPX.Core = QPX.Core or {}

function QPX.Core.ConsoleLog(self, msg, mod)
    if not tostring(msg) then return end
    if not tostring(mod) then mod = "No Module" end
    
    local pMsg = string.format("[QPX LOG - %s] %s", mod, msg)
    if not pMsg then return end

    print(pMsg)
end

RegisterNetEvent("qpixel-base:consoleLog")
AddEventHandler("qpixel-base:consoleLog", function(msg, mod)
    QPX.Core:ConsoleLog(msg, mod)
end)

function getModule(module)
    if not QPX[module] then print("Warning: '" .. tostring(module) .. "' module doesn't exist") return false end
    return QPX[module]
end

function addModule(module, tbl)
    if QPX[module] then print("Warning: '" .. tostring(module) .. "' module is being overridden") end
    QPX[module] = tbl
end

QPX.Core.ExportsReady = false

function QPX.Core.WaitForExports(self)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if exports and exports["qpixel-base"] then
                TriggerEvent("qpixel-base:exportsReady")
                QPX.Core.ExportsReady = true
                return
            end
        end
    end)
end

exports("getModule", getModule)
exports("addModule", addModule)
QPX.Core:WaitForExports()