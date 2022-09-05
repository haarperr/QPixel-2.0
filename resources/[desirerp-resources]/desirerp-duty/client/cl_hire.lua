-- POLICE HIRE/FIRE --

RegisterNetEvent("desirerp-duty:HireLaw:Menu")
AddEventHandler("desirerp-duty:HireLaw:Menu", function()
    exports['desirerp-interface']:openApplication('textbox', {
        callbackUrl = 'desirerp-duty:police_menu',
        key = 1,
        items = {
          {
            icon = "pencil-alt",
            label = "Enter State ID.",
            name = "pStateID",
          },
          {
            icon = "pencil-alt",
            label = "Enter Department.",
            name = "pDepartment",
          },
          {
            icon = "pencil-alt",
            label = "Enter Rank.",
            name = "pRank",
          },
        },
        show = true,
      })
end)

RegisterInterfaceCallback('desirerp-duty:police_menu', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
   TriggerServerEvent("desirerp-duty:HireLaw", data.values.pStateID, data.values.pDepartment, data.values.pRank)
end)

RegisterNetEvent("desirerp-duty:FireLaw:Menu")
AddEventHandler("desirerp-duty:FireLaw:Menu", function()
    exports['desirerp-interface']:openApplication('textbox', {
        callbackUrl = 'desirerp-duty:fire_pd',
        key = 1,
        items = {
          {
            icon = "pencil-alt",
            label = "Enter State ID.",
            name = "pStateID",
          },
        },
        show = true,
      })
end)

RegisterInterfaceCallback('desirerp-duty:fire_pd', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerServerEvent("desirerp-duty:FireLaw", data.values.pStateID)
end)

-- END POLICE HIRE/FIRE --

-- EMS HIRE/FIRE --

RegisterNetEvent("desirerp-duty:HireEMS:Menu")
AddEventHandler("desirerp-duty:HireEMS:Menu", function()
    exports['desirerp-interface']:openApplication('textbox', {
        callbackUrl = 'desirerp-duty:hire_ems',
        key = 1,
        items = {
          {
            icon = "pencil-alt",
            label = "Enter State ID.",
            name = "pStateID",
          },
          {
            icon = "pencil-alt",
            label = "Enter Rank.",
            name = "pRankEMS",
          },
        },
        show = true,
      })
end)

RegisterInterfaceCallback('desirerp-duty:hire_ems', function(data,cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerServerEvent("desirerp-duty:HireEMS", data.values.pStateID, data.values.pRankEMS)
end)

RegisterNetEvent("desirerp-duty:FireEMS:Menu")
AddEventHandler("desirerp-duty:FireEMS:Menu", function()
        exports['desirerp-interface']:openApplication('textbox', {
        callbackUrl = 'desirerp-duty:fire_ems',
        key = 1,
        items = {
          {
            icon = "pencil-alt",
            label = "Enter State ID.",
            name = "pStateID",
          },
        },
        show = true,
      })
end)

RegisterInterfaceCallback('desirerp-duty:fire_ems', function(data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    TriggerServerEvent("desirerp-duty:FireEMS", data.values.pStateID)
end)

-- END EMS HIRE/FIRE --