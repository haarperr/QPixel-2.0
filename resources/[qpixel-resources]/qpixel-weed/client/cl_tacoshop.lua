--Store qpixel-jobs stuff
local CurrentObjective
local CurrentTaskCode
local CurrentActivity
local CurrentCallback

local CurrentNPCLocation

--Stores the data of the bud we took so we can apply it to the packages
local CurrentDeliveryNPC

local IsWeedProcessing = false
local IsWeedProcessingFinished = false

local InteractHandOff = {
    data = {
        {
            id = 'crim_taco_handoff',
            label = _L('weed-taco-deliver-package', 'deliver package'),
            icon = 'hand-holding',
            event = 'qpixel-weed:deliver_package',
            parameters = {},
        },
    },
    options = {
        distance = { radius = 2.5 },
        npcIds = {"npc_weed_package_dropoff"},
        isEnabled = function(pEntity, pContext)
            return isOnDeliveryTask()
        end
    },
}

local InteractCollect = {
    data = {
        {
            id = 'crim_taco_collect',
            label = _L('weed-taco-collect-package', 'collect package'),
            icon = 'box',
            event = 'qpixel-weed:collect_package',
            parameters = {},
        }
    },
    options = {
        npcIds = {'tacoshop'},
        distance = { radius = 2.5 },
        isEnabled=  function(pEntity, pContext)
            return IsWeedProcessingFinished
        end
    },
}

local InteractPackage = {
    data = {
        {
            id = 'crim_taco_package',
            label = _L('weed-taco-package-goods', 'package goods'),
            icon = 'box',
            event = 'qpixel-weed:package_goods',
            parameters = {},
        }
    },
    options = {
        npcIds = {'tacoshop'},
        distance = { radius = 2.5 },
        isEnabled=  function(pEntity, pContext)
            return not IsWeedProcessing
        end
    },
}

local InteractPurchaseList = {
    data = {
        {
            id = 'crim_taco_purchase',
            label = _L('weed-taco-purchase-list', 'purchase large delivery list'),
            icon = 'list-alt',
            event = 'qpixel-weed:purchase_list',
            parameters = {},
        }
    },
    options = {
        job = {'tacoshop'},
        npcIds = {'tacoshop'},
        distance = { radius = 2.5 }
    }
}

local weedAttach = {
    ["animDict"] = "anim@heists@narcotics@trash",
    ["animName"] = "drop_side",
    ["model"] = `hei_prop_heist_weed_block_01`,
    ["bone"] = 28422,
    ["x"] = 0.01,
    ["y"] = -0.02,
    ["z"] = -0.12,
    ["xR"] = 0.0,
    ["yR"] = 0.0,
    ["zR"] = 0.0,
    ["vertexIndex"] = 0,
}

function isNearFoodShop()
    if CurrentNPCLocation == nil then return false end
    local plyCoords = GetEntityCoords(PlayerPedId())
    if #(plyCoords - CurrentNPCLocation) < 25 then
        return true
    end
    return false
end

function isOnDeliveryTask()
    return CurrentTaskCode == 'first_handoff_taco' or CurrentTaskCode == 'second_handoff_taco'
    or CurrentTaskCode == 'third_handoff_taco' or CurrentTaskCode == 'fourth_handoff_taco'
    or CurrentTaskCode == 'fifth_handoff_taco' or CurrentTaskCode == 'sixth_handoff_taco'
    or CurrentTaskCode == 'seventh_handoff_taco' or CurrentTaskCode == 'eighth_handoff_taco'
    or CurrentTaskCode == 'ninth_handoff_taco' or CurrentTaskCode == 'tenth_handoff_taco'
end

Citizen.CreateThread(function()
    exports['qpixel-interact']:AddPeekEntryByFlag({'isNPC'}, InteractCollect.data, InteractCollect.options)
    exports['qpixel-interact']:AddPeekEntryByFlag({'isNPC'}, InteractPurchaseList.data, InteractPurchaseList.options)
    exports['qpixel-interact']:AddPeekEntryByFlag({'isNPC'}, InteractHandOff.data, InteractHandOff.options)
    exports['qpixel-interact']:AddPeekEntryByFlag({'isNPC'}, InteractPackage.data, InteractPackage.options)

    IsWeedProcessing = RPC.execute("qpixel-weed:currentlyProcessing")
    IsWeedProcessingFinished = RPC.execute("qpixel-weed:readyForPickup")
end)

RegisterNetEvent("qpixel-weed:tacorun")
AddEventHandler("qpixel-weed:tacorun", function(pActivityId, pTaskCode, references, objectives, cb)
    local objective = objectives[#objectives]

    CurrentCallback = cb
    CurrentTaskCode = pTaskCode
    CurrentActivity = pActivityId
    CurrentObjective = objective.id

    if isOnDeliveryTask() then
        local vectors = references[2].settings.vectors
        local coords = vector3(vectors.x, vectors.y, vectors.z - 1.0)
        --TODO: if we make this a group activity, we need to make this npc serverside or something
        local data = {
            id = 'npc_weed_package_dropoff',
            position = {
                coords = coords,
                heading = vectors.h,
            },
            pedType = 4,
            model = DeliveryNpcs[math.random(1,#DeliveryNpcs)],
            networked = true,
            distance = 50.0,
            settings = {
                { mode = 'invincible', active = true },
                { mode = 'ignore', active = true },
                { mode = 'freeze', active = false },
            },
            flags = {
                isNPC = true,
            },
        }
        if not CurrentDeliveryNPC then
            CurrentDeliveryNPC = exports["qpixel-npcs"]:RegisterNPC(data, 'qpixel-weed:dropOffNpc')
        else
            exports["qpixel-npcs"]:UpdateNPCData(CurrentDeliveryNPC.id, "position", {
                coords = coords,
                heading = vectors.h
            })
            exports["qpixel-npcs"]:UpdateNPCData(CurrentDeliveryNPC.id, "model", DeliveryNpcs[math.random(1,#DeliveryNpcs)])
            exports["qpixel-npcs"]:DisableNPC(CurrentDeliveryNPC.id)
            Wait(500)
            exports["qpixel-npcs"]:EnableNPC(CurrentDeliveryNPC.id)
        end
        if math.random() < WeedConfig.AlertChance then
            exports["qpixel-dispatch"]:dispatchadd('10-31A', "Investigate Suspicious Activity", "514")
        end
    end
end)

RegisterNetEvent("qpixel-weed:collect_package")
AddEventHandler("qpixel-weed:collect_package", function()
    local hasPackage = exports["qpixel-inventory"]:hasEnoughOfItem("weedpackage", 1, false)

    if hasPackage then return end

    local success = RPC.execute("qpixel-weed:collectpackage")

    if not success then
        TriggerEvent("DoLongHudText", "[ERR]: Could not get package.")
        return
    end
end)

RegisterNetEvent("qpixel-weed:deliver_package")
AddEventHandler("qpixel-weed:deliver_package", function()
    if CurrentCallback == nil then print("[TACO] Error: No callback for current activity.") return end
    if not isOnDeliveryTask() then return end

    local hasPackage = exports["qpixel-inventory"]:hasEnoughOfItem("weedpackage", 1, false, true)
    if not hasPackage then return end

    if CurrentDeliveryNPC ~= nil then
        CurrentDeliveryNPC = exports["qpixel-npcs"]:GetNPC(CurrentDeliveryNPC.id)
    end

    PlayAmbientSpeech1(CurrentDeliveryNPC.entity, "Chat_State", "Speech_Params_Force")
    TaskTurnPedToFaceEntity(CurrentDeliveryNPC.entity, PlayerPedId(), 0)
    exports["qpixel-taskbar"]:taskBar(20000, _L('weed-taco-weigh-package', 'Weighing Package'), false, true, false, false, nil, 5.0, PlayerPedId())
    PlayAmbientSpeech1(CurrentDeliveryNPC.entity, "Chat_State", "Speech_Params_Force")
    local finished = exports["qpixel-taskbar"]:taskBar(15000, _L('weed-taco-count-bills', 'Counting Bills'), false, true, false, false, nil, 5.0, PlayerPedId())
    if finished == 100 then
        RPC.execute("qpixel-weed:deliverpackage")
        CurrentCallback("updateObjectiveData", CurrentObjective, "status", "completed")
        CurrentTaskCode = nil
        Wait(1000)
        TriggerEvent("money:clean", 0.5)
        TriggerEvent("meth:drugsale")
        TriggerServerEvent("qpixel-heists:generateSafeCrackingTool")

        PlayAmbientSpeech1(CurrentDeliveryNPC.entity, "GENERIC_THANKS", "Speech_Params_Force")

        RequestAnimDict('anim@heists@box_carry@')
        while not HasAnimDictLoaded("anim@heists@box_carry@") do
            Citizen.Wait(0)
        end
        ClearPedTasksImmediately(CurrentDeliveryNPC.entity)
        RequestModel(weedAttach.model)
        while not HasModelLoaded(weedAttach.model) do
            Citizen.Wait(0)
        end
        local plyCoords = GetEntityCoords(PlayerPedId())
        local weedObject = CreateObjectNoOffset(weedAttach.model, plyCoords.x, plyCoords.y, plyCoords.z - 5.0, 1, 1, 0)
        SetObjectAsNoLongerNeeded(weedObject)
        AttachEntityToEntity(weedObject, CurrentDeliveryNPC.entity, GetPedBoneIndex(CurrentDeliveryNPC.entity, weedAttach.bone), weedAttach.x, weedAttach.y, weedAttach.z, weedAttach.xR, weedAttach.yR, weedAttach.zR, 1, 1, 0, 0, 2, 1)
        TaskPlayAnim(CurrentDeliveryNPC.entity, "anim@heists@box_carry@", "idle", 8.0, -8, -1, 49, 0, 0, 0, 0)
        TaskWanderStandard(CurrentDeliveryNPC.entity, 10.0, 10)

        SetTimeout(30000, function()
            Sync.DeleteObject(weedObject)
        end)
    end
end)

RegisterNetEvent("qpixel-weed:purchase_list")
AddEventHandler("qpixel-weed:purchase_list", function()
    local context = {}
    context[#context+1] = {
        title = 'Buy List $' .. WeedConfig.ListCost,
        key = {},
        action = 'qpixel-weed:buyDeliveryList',
    }
    context[#context+1] = {
        title = 'Cancel',
        key = { id = pPlantId },
        action = 'qpixel-weed:closeContext',
    }
    exports['qpixel-ui']:showContextMenu(context);
end)

RegisterNetEvent("qpixel-weed:package_goods")
AddEventHandler("qpixel-weed:package_goods", function()
    --Check if they have enough weeds M8
    local hasEnoughWeeds = exports["qpixel-inventory"]:hasEnoughOfItem("smallbud", WeedConfig.WeedsPerBrick, false, true)
    if not hasEnoughWeeds then
        TriggerEvent("DoLongHudText", _L('weed-taco-not-enough', "You don't have enough green mate"), 2)
        return
    end
    if IsWeedProcessing then
        TriggerEvent("DoLongHudText", _L('weed-taco-already-packaging', 'Someone is already preparing a package'), 2)
        return
    end
    local finished = exports["qpixel-taskbar"]:taskBar(10000, _L('weed-corner-prepare', 'Preparing'), false, true, false, false, nil, 5.0, PlayerPedId())
    if finished == 100 then
        local success = RPC.execute("qpixel-weed:processWeed")
        if success then
            TriggerEvent("DoLongHudText", _L('weed-taco-package-success', 'Stay nearby for a few minutes while I package this'))
        end
    end
end)

RegisterInterfaceCallback('qpixel-weed:buyDeliveryList', function (data, cb)
    cb({ data = {}, meta = { ok = true, message = '' } })
    RPC.execute("qpixel-weed:buyDelivery")
end)

RegisterNetEvent('qpixel-jobs:weed:addManagerLocation')
AddEventHandler('qpixel-jobs:weed:addManagerLocation', function(location)
    CurrentNPCLocation = vector3(location.vectors.x, location.vectors.y, location.vectors.z)
end)

RegisterNetEvent('qpixel-jobs:weed:editManagerLocation')
AddEventHandler('qpixel-jobs:weed:editManagerLocation', function(pVectors)
    if CurrentNPCLocation == nil then return end
    CurrentNPCLocation = vector3(pVectors.x, pVectors.y, pVectors.z)
end)

RegisterNetEvent('qpixel-jobs:weed:removeManagerLocation')
AddEventHandler('qpixel-jobs:weed:removeManagerLocation', function()
    CurrentNPCLocation = nil
end)

RegisterNetEvent("qpixel-weed:removeDeliveryNPC")
AddEventHandler("qpixel-weed:removeDeliveryNPC", function()
    if CurrentDeliveryNPC then
        exports["qpixel-npcs"]:RemoveNPC(CurrentDeliveryNPC.id)
    end
    CurrentDeliveryNPC = nil
end)

RegisterNetEvent("qpixel-weed:weedProcessing")
AddEventHandler("qpixel-weed:weedProcessing", function(pState)
    IsWeedProcessing = pState
end)

RegisterNetEvent("qpixel-weed:weedReady")
AddEventHandler("qpixel-weed:weedReady", function(pState)
    IsWeedProcessingFinished = pState
end)

exports("IsNearFoodShop", isNearFoodShop)
