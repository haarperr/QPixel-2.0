local weedPlants = {}

SQL = function(query, parameters, cb)
    local res = nil
    local IsBusy = true
    exports.oxmysql:execute(query, parameters, function(result)
        if cb then
            cb(result)
        else
            res = result
            IsBusy = false
        end
    end)
    while IsBusy do
        Citizen.Wait(0)
    end
    return res
end

RPC.register("qpixel-weed:getPlants", function()
    return weedPlants
end)

RPC.register("qpixel-weed:plantSeed", function( pCoords, pStrain)
    local src = source
    local pGender = 0
    local pTimestamp = os.time()

    local insertId = SQL([[
        INSERT INTO weed (gender, coords, strain, timestamp)
        VALUES (?, ?, ?, ?)
    ]],
    { pGender, json.encode(pCoords), json.encode(pStrain), pTimestamp })
    local data = {
        id = insertId,
        gender = pGender,
        coords = pCoords,
        strain = pStrain,
        timestamp = pTimestamp,
        last_harvest = 0
    }

    weedPlants[insertId] = data
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 1, data)

    return true
end)

RPC.register("qpixel-weed:daddWater", function(pPlantId)
    local src = source
    local plant = weedPlants[pPlantId]
    if plant == nil then
        return false
    end

    local strain = plant["strain"]
    strain["water"] = strain["water"] + PlantConfig.WaterAdd
    local affectedRows = SQL([[
        UPDATE weed
        SET strain = ?
        WHERE id = ?
    ]],
    { json.encode(strain), pPlantId })
    weedPlants[pPlantId]["strain"] = strain
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 2, weedPlants[pPlantId])

    return true
end)

RPC.register("qpixel-weed:addFertilizer", function(pPlantId, pType)
    local src = source
    local plant = weedPlants[pPlantId]
    if plant == nil then
        return false
    end
    local strain = plant["strain"]
    strain[pType] = strain[pType] + PlantConfig.FertilizerAdd

    local affectedRows = SQL([[
        UPDATE weed
        SET strain = ?
        WHERE id = ?
    ]],
    { json.encode(strain), pPlantId })
    weedPlants[pPlantId]["strain"] = strain
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 2, weedPlants[pPlantId])
    return true
end)

RPC.register("qpixel-weed:addMaleSeed", function(pPlantId)
    local src = source
    local plant = weedPlants[pPlantId]
    if plant == nil then
        return false
    end
    local affectedRows = SQL([[
        UPDATE weed
        SET gender = 1
        WHERE id = ?
    ]],
    { pPlantId })
    weedPlants[pPlantId]["gender"] = 1
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 2, weedPlants[pPlantId])
    return true
end)

RPC.register("qpixel-weed:removePlant", function(pPlantId, pFertilizer)
    local src = source
    local plant = weedPlants[pPlantId]
    if plant == nil then
        return false
    end
    local affectedRows = SQL([[
        DELETE FROM weed
        WHERE id = ?
    ]],
    { pPlantId })
    weedPlants[pPlantId] = nil
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 3, { id = pPlantId })
    return true
end)

RPC.register("qpixel-weed:harvestPlant", function(pPlantId)
    local src = source
    local plant = weedPlants[pPlantId]
    if plant == nil then
        return false
    end
    local pTimestamp = os.time()
    local affectedRows = SQL([[
        UPDATE weed
        SET last_harvest = ?
        WHERE id = ?
    ]],
    { pTimestamp, pPlantId })
    weedPlants[pPlantId]["last_harvest"] = pTimestamp
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 2, weedPlants[pPlantId])

    if weedPlants[pPlantId]["gender"] == 0 then
        TriggerClientEvent("player:receiveItem", src, "weedq", 5)
    elseif weedPlants[pPlantId]["gender"] == 1 then
        if PlantConfig.RemoveMaleOnHarvest then
            local affectedRows2 = SQL([[
                DELETE FROM weed
                WHERE id = ?
            ]],
            { pPlantId })

            if not affectedRows2.affectedRows2 or affectedRows2.affectedRows2 < 1 then
                TriggerEvent("DoLongHudText", src, "ERROR: affectedRows2 == nil or affectedRows2 < 1", 2)
                return false
            end

            weedPlants[pPlantId] = nil
            TriggerClientEvent("qpixel-weed:trigger_zone", -1, 3, { id = pPlantId })
        end

        local seedAmount = math.random(PlantConfig.SeedsFromMale[1], PlantConfig.SeedsFromMale[2])
        for i = 1, seedAmount do
            local chance = roundDecimals(math.random(), 2)
            if chance <= PlantConfig.MaleChance then
                TriggerClientEvent("player:receiveItem", src, "maleseed", 1)
            else
                TriggerClientEvent("player:receiveItem", src, "femaleseed", 1)
            end
        end
    end

    return true
end)

Citizen.CreateThread(function()
    local plants = SQL([[
        SELECT *
        FROM weed
    ]])

    for idx, plant in ipairs(plants) do

        plant["coords"] = json.decode(plant.coords)
        plant["strain"] = json.decode(plant.strain)

        plant["coords"] = vector3(plant["coords"]["x"], plant["coords"]["y"], plant["coords"]["z"])
        weedPlants[plant.id] = plant
    end

    while true do
        local time = os.time()

        for id, plant in pairs(weedPlants) do
            if (time - plant.timestamp) >= (PlantConfig.LifeTime * 60) then
                local affectedRows = SQL([[
                    DELETE FROM weed
                    WHERE id = ?
                ]],
                { id })

                if affectedRows.affectedRows and affectedRows.affectedRows > 0 then
                    weedPlants[id] = nil
                    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 3, plant)
                end
            end
        end

        Citizen.Wait(PlantConfig.UpdateTimer)
    end
end)