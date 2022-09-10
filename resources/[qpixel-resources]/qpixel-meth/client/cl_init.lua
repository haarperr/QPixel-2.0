local config = nil
local labs = nil
function getConfig()
    local METH_LAB_BATCH_PRICE = 150
    return METH_LAB_BATCH_PRICE
end

Citizen.CreateThread(function()
    config , labs = RPC.execute("qpixel-meth:getConfig")
    for _ , v in pairs(config.ACTIVE_CORNERS) do
        if v.enabled then
          print('Zone created', json.encode({ v.polyzone[1], v.polyzone[2], v.polyzone[3] })  )
            exports["qpixel-polyzone"]:AddBoxZone(
                "meth_corner",
                vector3(v.polyzone[1], v.polyzone[2], v.polyzone[3]),
                v.h,
                v.w,
                v.options
            )
        end
    end
    for _, v in pairs(labs.ACTIVE_LABS) do

        if v.enabled then
    
            exports["qpixel-polyzone"]:AddBoxZone(
                "methlab", 
                vector3(v.polyzone[1], v.polyzone[2], v.polyzone[3]), 
                v.length, 
                v.width, 
                v.options
            )
            for k, target in pairs(v.polytargets) do
              print('AJDHASKJDHASKJ',json.encode(target.length))
              exports["qpixel-polytarget"]:AddBoxZone(
                "methlab_target_" .. k,
                vector3(target.x, target.y, target.z),
                target.width,
                target.length,
                target.options
              )
            end
        end
    end    
    local defaultOptions = { distance = { radius = 1.5 } }
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_laptop", {{
      id = "meth_start_cooking",
      event = "qpixel-meth:startCooking",
      icon = "stroopwafel",
      label = "Start Cooking",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_fridge", {{
      id = "meth_adjust_fridge_temp",
      event = "qpixel-meth:adjustFridgeTemp",
      icon = "thermometer-quarter",
      label = "Adjust Temperature",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_dis_settings", {{
      id = "meth_adjust_distil_settings",
      event = "qpixel-meth:adjustDistilSettings",
      icon = "sliders-h",
      label = "Adjust Settings",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_dis_steam", {{
      id = "meth_adjust_steam_level",
      event = "qpixel-meth:adjustSteamLevel",
      icon = "bong",
      label = "Adjust Steam Levels",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_settings", {{
      id = "meth_adjust_mixer_settings",
      event = "qpixel-meth:adjustMixerSettings",
      icon = "blender",
      label = "Adjust Mixer Settings",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_temperature", {{
      id = "meth_adjust_mixer_temp",
      event = "qpixel-meth:adjustMixerTemp",
      icon = "thermometer-full",
      label = "Adjust Mixer Temperature",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByPolyTarget("methlab_target_drop", {{
      id = "meth_add_ingredient",
      event = "qpixel-meth:addIngredient",
      icon = "mortar-pestle",
      label = "Drop Ingredients",
      parameters = {},
    }}, defaultOptions)
    exports['qpixel-interact']:AddPeekEntryByModel({ 652625140, 1868096318, 974707040 }, {{
      id = "meth_pickup_ingredient",
      event = "qpixel-meth:pickupIngredient",
      icon = "hand-holding",
      label = "Pick up Ingredients",
      parameters = {},
    }}, defaultOptions)
end)
