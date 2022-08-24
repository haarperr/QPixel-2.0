RegisterNUICallback("getDocuments", function(data, cb)
    SendNUIMessage({
        openSection = "addDocuments",
        documentData = RPC.execute("desirerp-phone:getDocuments", data.pType)
    })
end)

RegisterNUICallback("deleteDocument", function(data, cb)
    print(data.documentID)
    RPC.execute("desirerp-phone:deleteDocument", data.documentID)
end)

RegisterNUICallback("updateDocument", function(data, cb)
    RPC.execute("desirerp-phone:updateDocument", data.documentID, data.documentTitle, data.documentText)
end)

RegisterNUICallback("createDocument", function(data, cb)
    RPC.execute("desirerp-phone:createDocument", exports['isPed']:isPed("cid"), "New Document", "Text Goes Here", data.documentType)
end)

RegisterNUICallback("shareDocumentPermanent", function(data)
    print("SHARE PERMANENT: " .. data.documentID .. " "..data.targetCID)
    RPC.execute("desirerp-phone:shareDocumentPermanent", data.documentID, data.targetCID)
end)

RegisterNUICallback("shareDocumentLocal", function(data)
    print("SHARE LOCAL" .. data.documentID)
    local ptable = GetPlayers()
    local pCoords = GetEntityCoords(PlayerPedId())
    local closestDistance = 5.0
    for index,value in ipairs(ptable) do
        print(PlayerPedId(), GetPlayerPed(value))
        if PlayerPedId() ~= GetPlayerPed(value) then
        local tCoords = GetEntityCoords(GetPlayerPed(value))
        print(tCoords, pCoords)
        local dis = GetDistanceBetweenCoords(tCoords['x'], tCoords['y'], tCoords['z'], pCoords['x'], pCoords['y'], pCoords['z'], true)
        print(dis)
        if (closestDistance == -1 or closestDistance > dis) then
            sendDocumentEvent(data.documentID)
        end
    end
    end
   -- RPC.execute("desirerp-phone:shareDocumentLocal", data.documentID, ptable)
end)

RegisterCommand("sendDocumentEvent", function()
    sendDocumentEvent(45)
end)

function sendDocumentEvent(dID)
    print(dID)
    
    data = {documentID = dID}
    phoneBillNotification("documents", data, '')
end

RegisterNUICallback("acceptDocumentReceiveRequest", function(data)
    local pDocShared = RPC.execute("desirerp-phone:acceptDocumentReceiveRequest", data.documentID)
    SendNUIMessage({
        openSection = "openSharedDocument",
        documentData = pDocShared
    })
end)

RegisterNUICallback("dropQRCode", function(data)
    print("DROP QRCODE" .. data.documentID)
    RPC.execute("desirerp-phone:dropQRCode", data.documentID)
end)