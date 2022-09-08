DPX.Events = DPX.Events or {}
DPX.Events.Registered = DPX.Events.Registered or {}

RegisterServerEvent("qpixel-events:listenEvent")
AddEventHandler("qpixel-events:listenEvent", function(id, name, args)
    local src = source

    if not DPX.Events.Registered[name] then return end

    DPX.Events.Registered[name].f(DPX.Events.Registered[name].mod, args, src, function(data)
        TriggerClientEvent("qpixel-events:listenEvent", src, id, data)
    end)
end)

function DPX.Events.AddEvent(self, module, func, name)
    DPX.Events.Registered[name] = {
        mod = module,
        f = func
    }
end


