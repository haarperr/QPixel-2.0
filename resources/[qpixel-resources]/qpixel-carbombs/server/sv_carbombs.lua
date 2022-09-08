local carBombTable = {}

RegisterNetEvent("qpixel-miscscripts:carbombs:removeBomb", function(pNetId)
    carBombTable[pNetId] = nil
end)

RegisterNetEvent("qpixel-usableprops:defusePhoneBomb", function(pNetId)
    carBombTable[pNetId] = nil
end)

RPC.register("qpixel-miscscripts:carbombs:addCarBomb", function(pSource, netId, minSpeed, ticksBeforeExplode, ticksForRemoval, gridSize, coloredSquares, timeToComplete)
    print(netId, minSpeed, ticksBeforeExplode, ticksForRemoval, gridSize, coloredSquares, timeToComplete)
    carBombTable[netId] = {
        carBombData = {
            minSpeed = minSpeed, 
            ticksBeforeExplode = ticksBeforeExplode, 
            ticksForRemoval = ticksForRemoval, 
            gridSize = gridSize, 
            coloredSquares = coloredSquares, 
            timeToComplete = timeToComplete,
            hasCarBomb = true,
        }
    }
end)

RPC.register("qpixel-miscscripts:carbombs:getCarBombDataFromNetID", function(pSource, netId)
    return carBombTable[netId]
end)

RPC.register("qpixel-usableprops:hasPhoneBomb", function(pSource, pNetId)
    for k,v in pairs(carBombTable) do
        if pNetId == k then
            return true
        end
    end
    return false
end)