RPC.register("qpixel-weed:plantSeed", function(pSource, pCoords, pStrain)
    local returnData = Await(SQL.execute("INSERT INTO _weed (coords, strain, timestamp) VALUES (?, ?, ?)", json.encode(pCoords), json.encode(pStrain), os.time()))

    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 2, {
        id = returnData.insertId,
        coords = pCoords,
        strain = pStrain,
        gender = 0,
        last_harvest = 0,
        timestamp = os.time()
    })  
end)

RPC.register("qpixel-weed:plantSeed", function(pCoords, pStrain)
    local src = source
    local pGender = 0
    local pTimestamp = os.time()

    local insertId = SQL([[
        INSERT INTO _weed (gender, strain, coords, timestamp)
        VALUES (?, ?, ?, ?)
    ]],
    { pGender, json.encode(pCoords), json.encode(pStrain), pTimestamp })

    -- if not insertId or insertId < 1 then
    --     return false
    -- end

    local data = {
        id = insertId,
        gender = pGender,
        strain = pStrain,
        coords = pCoords,
        
        timestamp = pTimestamp,
        last_harvest = 0
    }

    weedPlants[insertId] = data
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 1, data)

    return true
end)

RPC.register("qpixel-weed:addWater", function(pSource, pData)
    local returnData = Await(SQL.execute("SELECT * FROM _weed WHERE id = ?", pData))

    local coords = json.decode(returnData[1].coords)
    returnData[1].coords = vector3(coords.x, coords.y, coords.z)
    returnData[1].strain = json.decode(returnData[1].strain)
    returnData[1].strain.water = returnData[1].strain.water + PlantConfig.WaterAdd

    local metaData = Await(SQL.execute("UPDATE _weed SET strain = ? WHERE id = ?", json.encode(returnData[1].strain), pData))

    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 3, returnData[1])

end)

RPC.register("qpixel-weed:addFertilizer", function(pSource, pData)
    local returnData = Await(SQL.execute("SELECT * FROM _weed WHERE id = ?", pData.id))
    
    local coords = json.decode(returnData[1].coords)
    returnData[1].coords = vector3(coords.x, coords.y, coords.z)
    returnData[1].strain = json.decode(returnData[1].strain)
    if pData.type == "n" then
        returnData[1].strain.n = returnData[1].strain.n + PlantConfig.FertilizerAdd
    elseif pData.type == "p" then
        returnData[1].strain.p = returnData[1].strain.p + PlantConfig.FertilizerAdd
    elseif pData.type == "k" then
        returnData[1].strain.k = returnData[1].strain.k + PlantConfig.FertilizerAdd
    end    

    local metaData = Await(SQL.execute("UPDATE _weed SET strain = ? WHERE id = ?", json.encode(returnData[1].strain), pData.id))

    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 3, returnData[1])

    return true
end)

RPC.register("qpixel-weed:addMaleSeed", function(pSource, pData)
    local returnData = Await(SQL.execute("UPDATE _weed SET gender = ? WHERE id = ?", 1, pData))

    local metaData = Await(SQL.execute("SELECT * FROM _weed WHERE id = ?", pData))

    local coords = json.decode(metaData[1].coords)
    metaData[1].coords = vector3(coords.x, coords.y, coords.z)
    metaData[1].strain = json.decode(metaData[1].strain)

    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 3, metaData[1])


    return true
end)

RPC.register("qpixel-weed:removePlant", function(pSource, pData)
    Await(SQL.execute("DELETE FROM _weed WHERE id = ?", pData))

    -- will get Fertilizer item
    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 4, {
        id = pData
    })  

    return true
end)

RPC.register("qpixel-weed:harvestPlant", function(pSource, pID)
    local returnData = Await(SQL.execute("UPDATE _weed SET last_harvest = ? WHERE id = ?", os.time(), pID))

    local metaData = Await(SQL.execute("SELECT * FROM _weed WHERE id = ?", pID))

    local coords = json.decode(metaData[1].coords)
    metaData[1].coords = vector3(coords.x, coords.y, coords.z)

    if metaData[1].gender == 1 then
        local chance = math.random()
        
        if json.encode(PlantConfig.MaleChance) > chance then
            TriggerClientEvent("player:receiveItem", -1, "maleseed", 1)
        end  
    else    
        TriggerClientEvent("player:receiveItem", -1, "wetbud", 1)

    end

    if ((os.time() - metaData[1].timestamp) / 60) >= PlantConfig.LifeTime then
        Await(SQL.execute("DELETE FROM _weed WHERE id = ?", pID))
        exports["qpixel-log"]:AddLog("Weed", 
            source, "Remove Plant", { plantId = tostring(pID) })

        TriggerClientEvent("qpixel-weed:trigger_zone", -1, 4, metaData[1])
    else
        TriggerClientEvent("qpixel-weed:trigger_zone", -1, 4, metaData[1])
    end    

    return true
end)

RPC.register("qpixel-weed:getPlants", function(pSource)
    local returnData = Await(SQL.execute("SELECT * FROM _weed", {}))

    for k, v in pairs(returnData) do
        local coords = json.decode(v.coords)
        v.coords = vector3(coords.x, coords.y, coords.z)
        v.strain = json.decode(v.strain)
    end

    TriggerClientEvent("qpixel-weed:trigger_zone", -1, 1, returnData)
    return true
end)