local weedPlants = {}
activeZones = {}
local inZone = false

local function cl_ ()
    exports["qpixel-interface"]:hideContextMenu()
end

function addPlant(pPlant)
    exports["qpixel-polyzone"]:AddCircleZone("qpixel-weed:plant", pPlant.coords, 50, {
        data = pPlant,
    })
    weedPlants[pPlant.id] = pPlant
end

function createWeedStageAtCoords(pStage, pCoords)
    local model = PlantConfig.GrowthObjects[pStage].hash
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    local plantObject = CreateObject(model, pCoords.x, pCoords.y, pCoords.z + PlantConfig.GrowthObjects[pStage].zOffset, 0, 0, 0)
    FreezeEntityPosition(plantObject, true)
    -- SetEntityHeading(plantObject, math.random(0, 360) + 0.0)
    return plantObject
end

function getStageFromPercent(pPercent)
    local growthObjects = #PlantConfig.GrowthObjects - 1
    local percentPerStage = 100 / growthObjects
    return math.floor((pPercent / percentPerStage) + 1.5)
end

function getPlantGrowthPercent(pPlant)
    local timeDiff = (GetCloudTimeAsInt() - pPlant.timestamp) / 60
    local genderFactor = (pPlant.gender == 1 and PlantConfig.MaleFactor or 1)
    local fertilizerFactor = pPlant.strain.n >= 0.9 and PlantConfig.FertilizerFactor or 1.0
    local growthFactors = (PlantConfig.GrowthTime * genderFactor * fertilizerFactor)
    return math.min((timeDiff / growthFactors) * 100, 100.0)
end

function playPourAnimation()
    RequestAnimDict("weapon@w_sp_jerrycan")
    while (not HasAnimDictLoaded("weapon@w_sp_jerrycan")) do
        Wait(0)
    end
    TaskPlayAnim(PlayerPedId(),"weapon@w_sp_jerrycan","fire",2.0, -8, -1,49, 0, 0, 0, 0)
end

function showPlantMenu(pPlantId)
    local plant = weedPlants[pPlantId]
    local growth = getPlantGrowthPercent(plant)
    local water = plant.strain.water * 100.0
    local myjob = exports['qpixel-base']:CurrentJob()
    local context = {}

    context[#context+1] = {
        title = "Growth: " .. string.format("%.2f", growth) .. "%",
        description = "Sex: " .. (plant.gender == 1 and "Male" or "Female"),
    }

    local disableActions = growth >= PlantConfig.HarvestPercent

    --Only allow adding water/fertilzier before harvest time
    context[#context+1] = {
        title = "Add Water",
        description = "Water: " .. string.format("%.2f", water) .. "%",
        action = "qpixel-weed:addWater",
        key = { id = pPlantId },
        disabled = water >= 100.0 or not exports["qpixel-inventory"]:hasEnoughOfItem("water", 1, false),
    }

    context[#context+1] = {
        title  = "Add Fertilizer",
        description = "",
        children = {
            {
                title = "Add Fertilizer (N)",
                action = "qpixel-weed:addFertilizer",
                key = { id = pPlantId, type = "n" },
            },
            {
                title = "Add Fertilizer (P)",
                action = "qpixel-weed:addFertilizer",
                key = { id = pPlantId, type = "p" },
            },
            {
                title = "Add Fertilizer (K)",
                action = "qpixel-weed:addFertilizer",
                key = { id = pPlantId, type = "k" },
            }
        },
        disabled = not exports["qpixel-inventory"]:hasEnoughOfItem("fertilizer", 1, false) or disableActions,
    }

    --Only allow changing gender in the first 2~ stages
    if getStageFromPercent(growth) < 3 and plant.gender == 0 then
        context[#context+1] = {
            title = "Add Male Seed",
            description = "Make the plant preggies",
            action = "qpixel-weed:addMaleSeed",
            key = { id = pPlantId },
            disabled = not exports["qpixel-inventory"]:hasEnoughOfItem("maleseed", 1, false),
        }
    end

    if growth >= 95 or exports['qpixel-base']:CurrentJob() == 'police' or exports['qpixel-base']:CurrentJob() == 'sheriff' or exports['qpixel-base']:CurrentJob() == 'state' or exports['qpixel-base']:CurrentJob() == 'DOJ' then
        context[#context+1] = {
            title = "Destroy Plant",
            description = "",
            action = "qpixel-weed:removePlant",
            key = { id = pPlantId },
        }
    end

    exports["qpixel-interface"]:showContextMenu(context)
end

--[[

    Events

]]

AddEventHandler("onResourceStop", function(resource)
    if resource ~= GetCurrentResourceName() then return end
    for id, plant in pairs(activeZones) do
        DeleteObject(plant)
    end
end)

AddEventHandler("qpixel-polyzone:enter", function(zone, data)
    if zone == "qpixel-weed:area" then
        inZone = true
    elseif zone == "qpixel-weed:plant" then
        if activeZones[data.id] == nil then
            local plantGrowth = getPlantGrowthPercent(data)
            local curStage = getStageFromPercent(plantGrowth)
            local object = createWeedStageAtCoords(curStage, data.coords)
            if weedPlants[data.id] then
                weedPlants[data.id]["stage"] = curStage
                activeZones[data.id] = object
            end
        end
    end
end)

AddEventHandler("qpixel-polyzone:exit", function(zone, data)
    if zone == "qpixel-weed:area" then
        inZone = false
    elseif zone == "qpixel-weed:plant" then
        if activeZones[data.id] ~= nil then
            DeleteObject(activeZones[data.id])
            activeZones[data.id] = nil
        end
    end
end)

AddEventHandler("qpixel-inventory:itemUsed", function(item)
    if item == "femaleseed" then
        inZone = true
        if inZone == true then
            local plyCoords = GetEntityCoords(PlayerPedId())
            local offsetCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0, 0.7, 0)
            local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(offsetCoords.x, offsetCoords.y, offsetCoords.z, offsetCoords.x, offsetCoords.y, offsetCoords.z - 2, 1, 0, 4)
            local retval, hit, endCoords, _, materialHash, _ = GetShapeTestResultIncludingMaterial(rayHandle)
            if hit then
                local foundHash = true
                for matHash,matType in pairs(MaterialHashes) do
                    if not materialHash == matHash then return TriggerEvent("DoLongHudText", "I need to find a better area to plant.", 2) end
                    if materialHash == matHash then
                        local typeMod = PlantConfig.TypeModifiers[matType]
                        foundHash = true
                        TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_GARDENER_PLANT", 0, true)
                       -- local finished = exports["qpixel-taskbar"]:taskBar(3000, "Planting Seed", false, true, false, false, nil, 5.0, PlayerPedId())
                        exports['qpixel-taskbar']:Progress({
                            duration = 10000,
                            label = "Planting Seed",
                        }, function(cancelled)
                        ClearPedTasks(PlayerPedId())
                        if not cancelled then
                            RPC.execute("qpixel-weed:plantSeed", endCoords, typeMod)
                            TriggerEvent("inventory:removeItem", item, 1)
                        end
                    end)
                end
                end
                if not foundHash then
                    TriggerEvent("DoLongHudText", "I need to find better soil to plant.", 2)
                end
            end
        end
    end
end)

RegisterNetEvent("qpixel-weed:trigger_zone", function (type, pData)
    --New plant being added
    if type == 1 then
        addPlant(pData)
    end

    --Plant being harvested/updated
    if type == 2 then
        weedPlants[pData.id] = pData

        if activeZones[pData.id] ~= nil then
            local plantGrowth = getPlantGrowthPercent(pData)
            local curStage = getStageFromPercent(plantGrowth)
            local object = createWeedStageAtCoords(curStage, pData.coords)
            DeleteObject(activeZones[pData.id])
            activeZones[pData.id] = object
        end
    end

    --Plant being removed
    if type == 3 then
        if activeZones[pData.id] ~= nil then
            DeleteObject(activeZones[pData.id])
            activeZones[pData.id] = nil
        end

        weedPlants[pData.id] = nil
    end
end)

AddEventHandler("qpixel-weed:checkPlant", function(pContext, pEntity)
    local plantId = false

    for id, plant in pairs(activeZones) do
        if pEntity == plant then
            plantId = id
            break
        end
    end
    if not plantId then return end
    showPlantMenu(plantId)
end)

RegisterUICallback("qpixel-weed:addWater", function (pParams)
    cl_()
    if not exports["qpixel-inventory"]:hasEnoughOfItem("purifiedwater", 1, true, true) then return TriggerEvent('DoLongHudText', 'Missing Something !',2) end
    playPourAnimation()
    exports['qpixel-taskbar']:Progress({
        duration = 5000,
        label = "Adding Water",
    }, function(cancelled)
        if not cancelled then
        local success = RPC.execute("qpixel-weed:daddWater", pParams.key.id)
        if not success then
            TriggerEvent("DoLongHudText", "[ERROR]: Could not add water.", 2)
        else
            TriggerEvent("inventory:removeItem", "purifiedwater", 1)
        end
    end
    showPlantMenu(pParams.key.id)
 end)
end)

RegisterUICallback("qpixel-weed:addFertilizer", function (pParams)
    cl_()
    if not exports["qpixel-inventory"]:hasEnoughOfItem("fertilizerA", 1, true, true) then return end
    playPourAnimation()
    exports['qpixel-taskbar']:Progress({
        duration = 5000,
        label = "Adding Fertilizer",
    }, function(cancelled)
        if not cancelled then
            ClearPedTasks(PlayerPedId())
        local success = RPC.execute("qpixel-weed:addFertilizer", pParams.key.id, pParams.key.type)
        if not success then
            ClearPedTasks(PlayerPedId())
            TriggerEvent("DoLongHudText", "[ERROR] Unable to Add Fertilizer.")
        else
            ClearPedTasks(PlayerPedId())
            TriggerEvent("inventory:removeItem", "fertilizer", 1)
        end
    end
    ClearPedTasks(PlayerPedId())
    showPlantMenu(pParams.key.id)
 end)
end)

RegisterUICallback("qpixel-weed:addMaleSeed", function (pParams)
    cl_()
    if not exports["qpixel-inventory"]:hasEnoughOfItem("maleseed", 1, true, true) then return TriggerEvent('DoLongHudText', 'Missing Something !',2) end
    TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_GARDENER_PLANT", 0, true)
    --local finished = exports["qpixel-taskbar"]:taskBar(3000, "Adding Male Seed", false, true, false, false, nil, 5.0, PlayerPedId())
    exports['qpixel-taskbar']:Progress({
        duration = 5000,
        label = "Adding Male Seed",
    }, function(cancelled)
    ClearPedTasks(PlayerPedId())
    if not cancelled then
        RPC.execute("qpixel-weed:addMaleSeed", pParams.key.id)
        TriggerEvent("inventory:removeItem", "maleseed", 1)
    end
    showPlantMenu(pParams.key.id)
 end)
end)

RegisterUICallback("qpixel-weed:removePlant", function (pParams)
    TriggerEvent("animation:PlayAnimation","layspike")
    cl_()
    --local finished = exports["qpixel-taskbar"]:taskBar(3000, "Removing", false, true, false, false, nil, 5.0, PlayerPedId())
    exports['qpixel-taskbar']:Progress({
        duration = 5000,
        label = "Removing",
    }, function(cancelled)
    ClearPedTasks(PlayerPedId())
    if not cancelled then
        local getFertilizer = getPlantGrowthPercent(weedPlants[pParams.id]) > 20.0
        local success = RPC.execute("qpixel-weed:removePlant", pParams.key.id, getFertilizer)
        if not success then
            return 
        end
    end
  end)
end)

AddEventHandler("qpixel-weed:pickPlant", function(pContext, pEntity)
    local plantId = false

    for id, plant in pairs(activeZones) do
        if pEntity == plant then
            plantId = id
            break
        end
    end

    if not plantId then return end

    local plant = weedPlants[plantId]
    if getPlantGrowthPercent(plant) < PlantConfig.HarvestPercent then
        TriggerEvent("DoLongHudText", "This plant is not ready yet..", 2)
        return
    end

    local timeSinceHarvest = GetCloudTimeAsInt() - plant.last_harvest
    if timeSinceHarvest <= (PlantConfig.TimeBetweenHarvest * 60) then
        TriggerEvent("DoLongHudText", "This plant has been harvested recently! Better come back later to try to re-up again.", 2)
        return
    end

    local plyWeight = exports["qpixel-inventory"]:getCurrentWeight()
    if plyWeight + 35.0 > 250.0 and plant.gender == 0 then
        TriggerEvent("DoLongHudText", "You can't carry that much weight.", 2)
        return
    end

    TriggerEvent("animation:PlayAnimation", "layspike")
    cl_()
   -- local finished = exports["qpixel-taskbar"]:taskBar(10000, "Harvesting", false, true, false, false, nil, 5.0, PlayerPedId())
   exports['qpixel-taskbar']:Progress({
    duration = 10000,
    label = "Harvesting",
}, function(cancelled)
    ClearPedTasks(PlayerPedId())
    if not cancelled then
        RPC.execute("qpixel-weed:harvestPlant", plantId)
    end
  end)
end)

--Creates da weed
--TODO: cache close plants
Citizen.CreateThread(function()
    exports["qpixel-polyzone"]:AddPolyZone("qpixel-weed:area", {
        vector2(-342.00247192383, -1253.5378417969),
        vector2(84.262420654297, -1242.6663818359),
        vector2(520.96197509766, -1240.0241699219),
        vector2(1258.8310546875, -1228.4302978516),
        vector2(1407.0397949219, -1121.8983154297),
        vector2(1649.0086669922, -976.5205078125),
        vector2(1924.1279296875, -822.08416748047),
        vector2(2068.68359375, -1006.6109008789),
        vector2(2859.5693359375, -1742.0363769531),
        vector2(2648.7900390625, -2252.2673339844),
        vector2(1814.0902099609, -2787.0224609375),
        vector2(1344.9066162109, -2808.6821289062),
        vector2(1001.0428466797, -2734.3996582031),
        vector2(618.41564941406, -2574.2868652344),
        vector2(388.52581787109, -2406.0385742188),
        vector2(66.28978729248, -2305.4445800781),
        vector2(31.951961517334, -2045.0936279297),
        vector2(-192.29954528809, -1838.7125244141),
        vector2(-405.87139892578, -1651.3764648438)
    }, {
        --debugGrid = true,
        gridDivisions = 25,
        minZ = 10.0,
        maxZ = 500.0,
    })

    Citizen.Wait(1000)

    local _plants = RPC.execute("qpixel-weed:getPlants")
    for idx, plant in pairs(_plants) do
        addPlant(plant)
    end
end)