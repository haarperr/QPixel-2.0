QPX.Events = QPX.Events or {}
QPX.Events.Registered = QPX.Events.Registered or {}

RegisterServerEvent("qpixel-events:listenEvent")
AddEventHandler("qpixel-events:listenEvent", function(id, name, args)
    local src = source

    if not QPX.Events.Registered[name] then return end

    QPX.Events.Registered[name].f(QPX.Events.Registered[name].mod, args, src, function(data)
        TriggerClientEvent("qpixel-events:listenEvent", src, id, data)
    end)
end)

function QPX.Events.AddEvent(self, module, func, name)
    QPX.Events.Registered[name] = {
        mod = module,
        f = func
    }
end


