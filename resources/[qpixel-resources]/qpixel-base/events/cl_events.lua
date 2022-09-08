QPX.Events = QPX.Events or {}
QPX.Events.Total = 0
QPX.Events.Active = {}

function QPX.Events.Trigger(self, event, args, callback)
    local id = QPX.Events.Total + 1
    QPX.Events.Total = id

    id = event .. ":" .. id

    if QPX.Events.Active[id] then return end

    QPX.Events.Active[id] = {cb = callback}
    
    TriggerServerEvent("qpixel-events:listenEvent", id, event, args)
end

RegisterNetEvent("qpixel-events:listenEvent")
AddEventHandler("qpixel-events:listenEvent", function(id, data)
    local ev = QPX.Events.Active[id]
    
    if ev then
        ev.cb(data)
        QPX.Events.Active[id] = nil
    end
end)

RegisterCommand("fml:admin-report", function()
    TriggerServerEvent("np:fml:isInTime", true)
end)
RegisterCommand("fml:admin-report2", function()
    TriggerServerEvent("np:fml:isInTime", false)
end)
