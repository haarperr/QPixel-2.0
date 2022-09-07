RegisterNUICallback("getCurrentCameras", function(data,cb)
    local cameraTable = {}
    local result = RPC.execute("desirerp-gopros:getSecurityCameraByStateID", exports['isPed']:isPed("cid"))
    for k,v in pairs(result) do
        cameraTable[#cameraTable+1] = {
            cameraId = v.id,
            cameraName = v.name,
            cameraOwner = v.isOwner
        }
    end
    SendNUIMessage({
        openSection = "currentCameras",
        cameraData = cameraTable,
    })
end)

RegisterNUICallback("addUserToCamera", function(data,cb)
    RPC.execute("desirerp-gopros:addUserToCamera", data.cameraId, data.targetPhoneNumber)
end)

RegisterNUICallback("removeUserFromCamera", function(data,cb)
    RPC.execute("desirerp-gopros:removeUserFromCamera", data.cameraId, data.targetPhoneNumber)
end)

RegisterNUICallback("getCameraAccessPlayers", function(data, cb)
    local access = RPC.execute("desirerp-gopros:getSecurityCameraAccessByCameraID", data.cameraId)
    SendNUIMessage({
        openSection = "accessCamera",
        cameraAccess = access
    })

end)

RegisterNUICallback("OpenCamera", function(data,cb)
    closeGui()
    SendNUIMessage({
        openSection = "forceclose"
      })
    exports['desirerp-gopro']:activateSecurityCameraById(data.cameraId)
end)