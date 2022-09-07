;(function () {
    'use strict'
    var pLoad = {
        678: function (rando, DPX) {
          Object.defineProperty(DPX, '__esModule', { value: true })
          DPX.Hud =
            DPX.Interface =
            DPX.Utils =
            DPX.Streaming =
            DPX.Zones =
            DPX.Procedures =
            DPX.Events =
              void 0
          DPX.Events = {
            on: (pName, pData) => {
              return DPX.Events.on(pName, pData)
            },
            onNet: (pName, pData) => {
              return DPX.Events.onNet(pName, pData)
            },
            emit: (pName, ...pData) => {
              return DPX.Events.emit(pName, ...pData)
            },
            emitNet: (pName, ...pData) => {
              return DPX.Events.emitNet(pName, ...pData)
            },
            remove: (pName, pData) => {
              return DPX.Events.remove(pName, pData)
            },
          }
          DPX.Procedures = {
            register: (pName, pData) => {
              return DPX.Procedures.register(pName, pData)
            },
            execute: (pName, ...pData) => {
              return (
                console.log('execute', pName, pData),
                DPX.Procedures.execute(pName, ...pData)
              )
            },
          }
          DPX.Zones = {
            isActive: (pZone, pData) => {
              return DPX.Zones.isActive(pZone, pData)
            },
            onEnter: (pZone, pData) => {
              return DPX.Zones.onEnter(pZone, pData)
            },
            onExit: (pZone, pData) => {
              return DPX.Zones.onExit(pZone, pData)
            },
            addBoxZone: (
              pOptionsID,
              pName,
              pVectors,
              pLength,
              pWidth,
              pOptionAssign,
              pData = {}
            ) => {
              return DPX.Zones.addBoxZone(
                pOptionsID,
                pName,
                pVectors,
                pLength,
                pWidth,
                pOptionAssign,
                pData
              )
            },
            addBoxTarget: (
              pOptionsID,
              pName,
              pVectors,
              pLength,
              pWidth,
              pOptionAssign,
              pData = {}
            ) => {
              return DPX.Zones.addBoxTarget(
                pOptionsID,
                pName,
                pVectors,
                pLength,
                pWidth,
                pOptionAssign,
                pData
              )
            },
          }
          DPX.Streaming = {
            loadTexture: (pTexture) => {
              return DPX.Streaming.loadTexture(pTexture)
            },
            loadAnim: (pAnim) => {
              return DPX.Streaming.loadAnim(pAnim)
            },
            loadClipSet: (pClip) => {
              return DPX.Streaming.loadClipSet(pClip)
            },
            loadWeaponAsset: (pWeapon, pWeapon2, pWeapon3) => {
              return DPX.Streaming.loadWeaponAsset(pWeapon)
            },
            loadNamedPtfxAsset: (pPtfxAsset) => {
              return DPX.Streaming.loadNamedPtfxAsset(pPtfxAsset)
            },
          }
          DPX.Utils = {
            cache: (pCache, pData) => {
              return DPX.Utils.cache(pCache, pData)
            },
            cacheableMap: (pCacheableMap, pData) => {
              return DPX.Utils.cacheableMap(pCacheableMap, pData)
            },
            waitForCondition: (pNameee, pDatahhh) => {
              return DPX.Utils.waitForCondition(pNameee, pDatahhh)
            },
            getMapRange: (pMap, pRange, pData) => {
              return DPX.Utils.getMapRange(pMap, pRange, pData)
            },
            getDistance: (
              [pCoordsX, pCoordsY, pCoordsZ],
              [vCoordsX, vCoordsY, vCoordsZ]
            ) => {
              return DPX.Utils.getDistance(
                [pCoordsX, pCoordsY, pCoordsZ],
                [vCoordsX, vCoordsY, vCoordsZ]
              )
            },
            getRandomNumber: (pNumMin, pNumMax) => {
              return DPX.Utils.getRandomNumber(pNumMin, pNumMax)
            },
          }
          DPX.Interface = {
            addPeekEntryByModel: (pModel, pData, pOptions) => {
              return DPX.Interface.addPeekEntryByModel(
                pModel,
                pData,
                pOptions
              )
            },
            addPeekEntryByTarget: (pEvent, pData, pOptions) => {
              return DPX.Interface.addPeekEntryByTarget(
                pEvent,
                pData,
                pOptions
              )
            },
            addPeekEntryByFlag: (pFlag, pData, pOptions) => {
              return DPX.Interface.addPeekEntryByFlag(
                pFlag,
                pData,
                pOptions
              )
            },
            taskbar: (
              pLength,
              pName,
              pRunCheck = false,
              pCb = null
            ) => {
              return DPX.Interface.taskbar(
                pLength,
                pName,
                pRunCheck,
                pCb
              )
            },
          }
          DPX.Hud = {
            createBlip: (pName, ...pData) => {
              return DPX.Hud.createBlip(pName, ...pData)
            },
            applyBlipSettings: (
              blip,
              spriteText,
              spriteID,
              spriteColor,
              spriteAlpha,
              spriteScale,
              spriteRoute,
              spriteShortRange
            ) => {
              return DPX.Hud.applyBlipSettings(
                blip,
                spriteText,
                spriteID,
                spriteColor,
                spriteAlpha,
                spriteScale,
                spriteRoute,
                spriteShortRange
              )
            },
          }
        },
        615: function (pIDK, Desire) {
          Object.defineProperty(Desire, '__esModule', { value: true })
          Desire.mathClass = Desire.loadAnimDict = Desire.Delay = void 0
          let pDelay = (pTime) =>
            new Promise((pPromiseTime) => setTimeout(pPromiseTime, pTime))
          Desire.Delay = pDelay
          async function PrepAnimDict(pAnim) {
            while (!HasAnimDictLoaded(pAnim)) {
              RequestAnimDict(pAnim)
              await (0, Desire.Delay)(5)
            }
          }
          Desire.loadAnimDict = PrepAnimDict
          class coordShit {
            constructor(pCoordsX = 0, pCoordsY = 0, pCoordsZ = 0) {
              this.x = pCoordsX
              this.y = pCoordsY
              this.z = pCoordsZ
            }
            ['setFromArray'](pCoords) {
              return (
                (this.x = pCoords[0]),
                (this.y = pCoords[1]),
                (this.z = pCoords[2]),
                this
              )
            }
            ['getArray']() {
              return [this.x, this.y, this.z]
            }
            ['add'](pCoords) {
              return (
                (this.x += pCoords.x),
                (this.y += pCoords.y),
                (this.z += pCoords.z),
                this
              )
            }
            ['addScalar'](pCoords) {
              return (
                (this.x += pCoords),
                (this.y += pCoords),
                (this.z += pCoords),
                this
              )
            }
            ['sub'](pCoords) {
              return (
                (this.x -= pCoords.x),
                (this.y -= pCoords.y),
                (this.z -= pCoords.z),
                this
              )
            }
            ['equals'](pCoords) {
              return (
                this.x === pCoords.x &&
                this.y === pCoords.y &&
                this.z === pCoords.z
              )
            }
            ['subScalar'](pCoords) {
              return (
                (this.x -= pCoords),
                (this.y -= pCoords),
                (this.z -= pCoords),
                this
              )
            }
            ['multiply'](pCoords) {
              return (
                (this.x *= pCoords.x),
                (this.y *= pCoords.y),
                (this.z *= pCoords.z),
                this
              )
            }
            ['multiplyScalar'](pCoords) {
              return (
                (this.x *= pCoords),
                (this.y *= pCoords),
                (this.z *= pCoords),
                this
              )
            }
            ['round']() {
              return (
                (this.x = Math.round(this.x)),
                (this.y = Math.round(this.y)),
                (this.z = Math.round(this.z)),
                this
              )
            }
            ['floor']() {
              return (
                (this.x = Math.floor(this.x)),
                (this.y = Math.floor(this.y)),
                (this.z = Math.floor(this.z)),
                this
              )
            }
            ['ceil']() {
              return (
                (this.x = Math.ceil(this.x)),
                (this.y = Math.ceil(this.y)),
                (this.z = Math.ceil(this.z)),
                this
              )
            }
            ['magnitude']() {
              return Math.sqrt(
                this.x * this.x + this.y * this.y + this.z * this.z
              )
            }
            ['normalize']() {
              let pMagnitude = this.magnitude
              if (isNaN(pMagnitude)) {
                pMagnitude = 0
              }
              return this.multiplyScalar(1 / pMagnitude)
            }
            ['forward']() {
              const pCoords = coordShit
                .fromObject(this)
                .multiplyScalar(Math.PI / 180)
              return new coordShit(
                -Math.sin(pCoords.z) * Math.abs(Math.cos(pCoords.x)),
                Math.cos(pCoords.z) * Math.abs(Math.cos(pCoords.x)),
                Math.sin(pCoords.x)
              )
            }
            ['getDistance'](pCoords) {
              const [pCoordsX, pCoordsY, pCoordsZ] = [
                this.x - pCoords.x,
                this.y - pCoords.y,
                this.z - pCoords.z,
              ]
              return Math.sqrt(
                pCoordsX * pCoordsX +
                  pCoordsY * pCoordsY +
                  pCoordsZ * pCoordsZ
              )
            }
            ['getDistanceFromArray'](pCoords) {
              const [pCoordsX, pCoordsY, pCoordsZ] = [
                this.x - pCoords[0],
                this.y - pCoords[1],
                this.z - pCoords[2],
              ]
              return Math.sqrt(
                pCoordsX * pCoordsX + pCoordsY * pCoordsY + pCoordsZ * pCoordsZ
              )
            }
            static ['fromArray'](pCoords) {
              return new coordShit(pCoords[0], pCoords[1], pCoords[2])
            }
            static ['fromObject'](pCoords) {
              return new coordShit(pCoords.x, pCoords.y, pCoords.z)
            }
          }
          Desire.mathClass = coordShit
        },
      },
      thefuckisthis = {}
    function global(pArgs) {
      var randomassshit = thefuckisthis[pArgs]
      if (randomassshit !== undefined) {
        return randomassshit.exports
      }
      var globe = (thefuckisthis[pArgs] = { exports: {} })
      return (
        pLoad[pArgs](globe, globe.exports, global),
        globe.exports
      )
    }
    !(function () {
      global.g = (function () {
        if (typeof globalThis === 'object') {
          return globalThis
        }
        try {
          return this || new Function('return this')()
        } catch (err) {
          if (typeof window === 'object') {
            return window
          }
        }
      })()
    })()
    var pRandomAssTable = {}
    !(function () {
      var anotheruselessthing = {},
        pObjValue
      pObjValue = { value: true }
      pObjValue = void 0
      const pLoadModel = global(678),
        Objection = global(615)
      let pObjData = [],
        pObjIndex = []
      setImmediate(async () => {
        await (0, Objection.Delay)(5000)
        Number(pObjData.length) === 0 && emitNet('desirerp-objects:requestObjects')
      })
      onNet('desirerp-objects:loadObjects', async (pObjects) => {
        console.log('[desirerp-objects] Load Objects')
        let pDefinedObjects = pObjects
        Object.entries(pDefinedObjects).forEach(([key, value]) => {
          addObject(value)
        })
      })
      onNet('desirerp:objects:prepareNewObject', async (pObject) => {
        addObject(pObject)
      })
      on('desirerp-polyzone:enter', async (pName, pID) => {
        if (pName !== 'object_zone') {
          return
        }
        let pObjID = pObjData.findIndex(
          (pObjectDataFind) => pObjectDataFind.id.toString() === pID.id.toString()
        )
        if (!pObjData[pObjID]) {
          return
        }
        if (pObjData[pObjID].obj) {
          return
        }
        console.log('[desirerp-objects] Entered zone, load objects in distance.')
        let pCoords = pObjData[pObjID].coordinates
        pObjData[pObjID].obj = await getObjectData(
          pObjData[pObjID].model,
          pCoords.x,
          pCoords.y,
          pCoords.z,
          pCoords.h
        )
        let pCoordsIndex = pObjIndex.findIndex(
          (pCoords) => pCoords.id.toString() === pID.id.toString()
        )
        pObjIndex[pCoordsIndex] = {
          x: pCoords.x,
          y: pCoords.y,
          z: pCoords.z,
        }
      })
      on('desirerp-polyzone:exit', (pZone, pData) => {
        if (pZone !== 'object_zone') {
          return
        }
        let pDataID = pObjData.findIndex(
          (err) => err.id.toString() === pData.id.toString()
        )
        if (!pObjData[pDataID]) {
          return
        }
        if (!pObjData[pDataID].obj) {
          return
        }
        console.log('[desirerp-objects] Left zone, unload objects in distance.')
        DeleteObject(pObjData[pDataID].obj)
        pObjData[pDataID].obj = 0
        let pObjIndexNumber = pObjIndex.filter(
          (pObj) => Number(pObj.id) !== Number(pData.id)
        )
        pObjIndex = pObjIndexNumber
      })
      onNet('desirerp-objects:clearObjects', (pObjects) => {
        Object.entries(pObjects).forEach(([pArgs, pData]) => {
          let pObjIDFilteredIndex = pObjIndex.findIndex(
            (pGlobalDictationObj) => pGlobalDictationObj.id.toString() === pData.toString()
          )
          if (pObjIndex[pObjIDFilteredIndex]) {
            let pObjFilterIndex = pObjIndex.filter(
              (pData) => Number(pData.id) !== Number(pData)
            )
            pObjIndex = pObjFilterIndex
          }
          let PID = pObjData.findIndex(
            (p) => p.id.toString() === pData.toString()
          )
          if (pObjData[PID]) {
            pObjData[PID].obj &&
              DeleteObject(Number(pObjData[PID].obj))
            let pObjFilteredData = pObjData.filter(
              (fucc) => Number(fucc.id) !== Number(pData)
            )
            pObjData = pObjFilteredData
          }
        })
      })
      onNet('desirerp-objects:updateObjects', (pObjects) => {
        Object.entries(pObjects).forEach(([k, v]) => {
          let pidd = pObjIndex.findIndex(
            (fucccccxx) => fucccccxx.id.toString() === v.toString()
          )
          if (pObjIndex[pidd]) {
            let pObjFilIndex = pObjIndex.filter(
              (fucccc) => Number(fucccc.id) !== Number(v)
            )
            pObjIndex = pObjFilIndex
          }
          let pObjDatahFInInd = pObjData.findIndex(
            (fuccccc) => fuccccc.id.toString() === v.toString()
          )
          if (pObjData[pObjDatahFInInd]) {
            pObjData[pObjDatahFInInd].obj && DeleteObject(pObjData[pObjDatahFInInd].obj)
            let pObjDatahFInIndFilt = pObjData.filter(
              (fucccccx) => Number(fucccccx.id) !== Number(v)
            )
            pObjData = pObjDatahFInIndFilt
          }
        }),
          addObject(pObjects)
      })
      async function addObject(pObject) {
        console.log('[desirerp-objects] Adding object: ', pObject)
        let pCoords = {
          x: pObject.coordinates.x,
          y: pObject.coordinates.y,
          z: pObject.coordinates.z,
        }
        PolyZone.addCircleZone(
          'object_zone',
          {
            x: pObject.coordinates.x,
            y: pObject.coordinates.y,
            z: pObject.coordinates.z,
          },
          Math.max(75, 40),
          { data: { id: pObject.id } }
        )
        let pObjDATAHH = undefined,
          playerCoords = GetEntityCoords(PlayerPedId(), false),
          pDistance = GetDistanceBetweenCoords(
            playerCoords[0],
            playerCoords[1],
            playerCoords[2],
            pCoords.x,
            pCoords.y,
            pCoords.z,
            true
          )
        if (Number(pDistance) < 25) {
          let pHeading = pObject.coordinates.h
          if (pHeading === undefined) {
            pHeading = 0
          }
          pObjDATAHH = await getObjectData(
            pObject.model,
            pCoords.x,
            pCoords.y,
            pCoords.z,
            pHeading
          )
          pObjIndex.push({
            id: pObject.id,
            vector: pCoords,
          })
        }
        pObjData.push({
          id: pObject.id,
          model: pObject.model,
          coordinates: pObject.coordinates,
          metaData: pObject.metaData,
          obj: pObjDATAHH,
        })
      }
      pObjValue = addObject
      async function getObjectData(
        pModelH,
        pObjCoordsX,
        pObjCoordsY,
        pObjCoordsZ,
        pGivenCoords
      ) {
        await DPX.Streaming.loadModel(pModelH)
        const pObjHash = GetHashKey(pModelH)
        let pCurrentObject = CreateObjectNoOffset(
          pObjHash,
          pObjCoordsX,
          pObjCoordsY,
          pObjCoordsZ,
          false,
          false,
          false
        )
        if (!pGivenCoords) {
          pGivenCoords = 0
        }
        if (typeof pGivenCoords === 'number') {
          SetEntityHeading(pCurrentObject, pGivenCoords + 0)
        } else {
          SetEntityRotation(
            pCurrentObject,
            pGivenCoords.x,
            pGivenCoords.y,
            pGivenCoords.z,
            2,
            true
          )
        }
        return FreezeEntityPosition(pCurrentObject, true), pCurrentObject
      }
      on('onResourceStop', (pResourceName) => {
        if (pResourceName !== 'desirerp-objects') {
          return
        }
        Object.entries(pObjData).forEach(([pArgs, objectData]) => {
          if (objectData.obj) {
            DeleteObject(Number(objectData.obj))
          }
        })
      })
      function GetObjectByEntity(pEntity) {
        let pObjReturn = false
        return (
          Object.entries(pObjData).forEach(([pArgs, pData]) => {
            if (Number(pData.obj) === Number(pEntity)) {
              let pObjID = pObjData.findIndex(
                (pObjGivenID) => Number(pObjGivenID.id) === Number(pData.id)
              )
              pObjData[pObjID] && (pObjReturn = pObjData[pObjID])
            }
          }),
          pObjReturn
        )
      }
      global.g.exports('GetObjectByEntity', GetObjectByEntity)
      function GetObject(pObj) {
        let pObjReturn = false,
          pObjID = pObjData.findIndex(
            (pGivenObj) => pGivenObj.id.toString() === pObj.toString()
          )
        return (
          pObjData[pObjID] && (pObjReturn = pObjData[pObjID]), pObjReturn
        )
      }
      global.g.exports('GetObject', GetObject)
      function DelObject(pObj) {
        let pResult = RPC.execute('desirerp-objects:DeleteObject', pObj)
        return pResult
      }
      global.g.exports('DelObject', DelObject)
      function updataObject(pObj, pData) {
        RPC.execute('desirerp-objects:UpdateObject', pObj, pData)
      }
      global.g.exports('UpdateObject', updataObject)
      RegisterCommand(
        'getObject',
        (src, args, users) => {
          let pText = args[0],
            obj = GetObjectByEntity(pText)
          console.log('[desirerp-objects] getObject return: ', obj)
        },
        false
      )
      RegisterCommand(
        'objects:print',
        () => {
          console.log(pObjData)
        },
        false
      )
    })()
    !(function () {
      var rat = pRandomAssTable,
        pObjValue
      pObjValue = { value: true }
      const DVX = global(615)
      let pObj = undefined,
        pObjectMetaData = undefined,
        pPlace = false,
        pObjectCoordsH = 0,
        pPlacingObj = undefined
      const PlaceAndSaveObject = async (
        pObjectModel,
        pObjMetadata = {},
        pObjDatah,
        isPlacingEntityFuck = () => true,
        pType = 'objects',
        pArg
      ) => {
        const [pPlacingObject, pObjPData] = await PlaceObject(
          pObjectModel,
          pCreatedProp,
          isPlacingEntityFuck
        )
        if (!pPlacingObject) {
          return null
        }
        console.log(pType, pObjectModel, pObjPData.coords, pObjPData.rotation, pObjMetadata, pArg)
        return await RPC.execute(
          'desirerp-objects:SaveObject',
          pType,
          pObjectModel,
          pObjPData.coords,
          pObjPData.rotation,
          pObjMetadata,
          pArg
        )
      }
      global.g.exports('PlaceAndSaveObject', PlaceAndSaveObject)
      let pValidity = false
      const PlaceObject = async (pEntityModelGiven, pCreatedProp, pCreatedFunction = () => true) => {
        var pCreatedPropGroundSnap, pCreatedPropZOffs, pCreatedPropAlignToSur, pCreatedPropSurfOffset
        if (pValidity) {
          return [false, null]
        }
        const pEntityModel =
          typeof pEntityModelGiven === 'string' ? pEntityModelGiven.trim() : pEntityModelGiven
        if (!IsModelValid(pEntityModel)) {
          return [false, null]
        }
        pValidity = true
        await requestObjModel(pEntityModel)
        const [keyDimension, valueDimension] = GetModelDimensions(pEntityModel),
          keyDimensionArray = DVX.mathClass.fromArray(keyDimension),
          valueDimensionArray = DVX.mathClass.fromArray(valueDimension),
          keyValueDimensionSub = valueDimensionArray.sub(keyDimensionArray),
          pPlayerPed = PlayerPedId()
        let getCurrentPlayerCoordsArray =
            (pCreatedPropGroundSnap = pCreatedProp.groundSnap) !== null && pCreatedPropGroundSnap !== void 0
              ? pCreatedPropGroundSnap
              : pCreatedProp.forceGroundSnap,
          pEntityCurrHeading = GetEntityHeading(pPlayerPed),
          pCreatedPropModelOffset = pCreatedProp.useModelOffset,
          isPlacingEntity = true,
          pFinishPlacement = true,
          pCreatingProp = true,
          getCreatedPropZOffset =
            (pCreatedPropZOffs = pCreatedProp.zOffset) !== null && pCreatedPropZOffs !== void 0
              ? pCreatedPropZOffs
              : 0,
          pInvis = false
        const pObjGivenHeading =
            (pCreatedPropAlignToSur = pCreatedProp.alignToSurface) !== null &&
            pCreatedPropAlignToSur !== void 0
              ? pCreatedPropAlignToSur
              : false,
          pGetCreatedPropSurfaceOffset =
            (pCreatedPropSurfOffset = pCreatedProp.surfaceOffset) !== null && pCreatedPropSurfOffset !== void 0
              ? pCreatedPropSurfOffset
              : 0,
          pCreatedEntity = CreateObjectNoOffset(
            pEntityModel,
            0,
            0,
            0,
            false,
            false,
            false
          )
        SetEntityAlpha(pCreatedEntity, 200, false)
        SetEntityCollision(pCreatedEntity, false, false)
        SetCanClimbOnEntity(pCreatedEntity, false)
        SetEntityDrawOutlineColor(255, 0, 0, 128)
        const pCreateEntityTick = setTick(() => {
            var pCreatedPropDistance
            const [
              pNothing,
              pName,
              pData,
              pHeading1,
              pData1,
              pData2,
            ] = pFinalizeEntityCreation(
              19,
              pCreatedEntity,
              (pCreatedPropDistance = pCreatedProp.distance) !== null && pCreatedPropDistance !== void 0
                ? pCreatedPropDistance
                : 10
            )
            if (pName) {
              const pObjCurrCoords = DVX.mathClass.fromArray(pData)
              !getCurrentPlayerCoordsArray && pCreatedPropModelOffset && (pObjCurrCoords.z += keyValueDimensionSub.z / 2)
              let pGetEntityForwardVector = [0, 0, 0]
              pObjGivenHeading
                ? ((pEntityCurrHeading =
                    -Math.atan2(pHeading1[0], pHeading1[1]) * 57.2958 + 180),
                  SetEntityHeading(pCreatedEntity, pEntityCurrHeading),
                  (pGetEntityForwardVector = GetEntityForwardVector(pCreatedEntity).map(
                    (pVal) => pVal * pGetCreatedPropSurfaceOffset
                  )))
                : SetEntityHeading(pCreatedEntity, pEntityCurrHeading)
              SetEntityCoords(
                pCreatedEntity,
                pObjCurrCoords.x - pGetEntityForwardVector[0],
                pObjCurrCoords.y - pGetEntityForwardVector[1],
                pObjCurrCoords.z - pGetEntityForwardVector[2],
                false,
                false,
                false,
                false
              )
              getCurrentPlayerCoordsArray && PlaceObjectOnGroundProperly_2(pCreatedEntity)
              if (getCreatedPropZOffset !== 0) {
                const pArrayCoords = DVX.mathClass.fromArray(
                  GetEntityCoords(pCreatedEntity, false)
                )
                pObjCurrCoords.z += getCreatedPropZOffset
                SetEntityCoords(
                  pCreatedEntity,
                  pArrayCoords.x,
                  pArrayCoords.y,
                  pArrayCoords.z + getCreatedPropZOffset,
                  false,
                  false,
                  false,
                  false
                )
              }
              const pPlayerCoordsArray = getCurrentPlayerCoordsArray
                  ? DVX.mathClass.fromArray(
                      GetEntityCoords(pCreatedEntity, true)
                    )
                  : pObjCurrCoords,
                pCreatingPropColl = pCreatedProp.collision
                  ? !shapeTestResultMaterial(
                      pCreatedEntity,
                      pPlayerPed,
                      keyValueDimensionSub,
                      pPlayerCoordsArray,
                      pCreatedProp.colZOffset
                    )
                  : true
              pCreatingProp =
                pCreatingPropColl &&
                true &&
                pCreatedFunction(pPlayerCoordsArray, pData1, pCreatedEntity, pData2)
              if (pCreatingProp) {
                SetEntityDrawOutline(pCreatedEntity, false)
              } else {
                SetEntityDrawOutline(pCreatedEntity, true)
              }
            } else {
              pCreatingProp = false
            }
            pCreatedProp.afterRender &&
              pCreatedProp.afterRender(pCreatedEntity, !!pName, pCreatingProp)
          }),
          pDisableControlTick = setTick(() => {
            DisableControlAction(0, 44, true)
            DisableControlAction(0, 46, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 20, true)
            DisableControlAction(0, 16, true)
            DisableControlAction(0, 17, true)
            DisableControlAction(0, 36, true)
            const isThisDisabledControlPressed = IsDisabledControlPressed(0, 36)
            if (IsDisabledControlPressed(2, 17)) {
              if (pInvis) {
                getCreatedPropZOffset += isThisDisabledControlPressed ? 0.1 : 0.5
              } else {
                pEntityCurrHeading += isThisDisabledControlPressed ? 1 : 5
                if (!isThisDisabledControlPressed) {
                  pEntityCurrHeading = Math.round(pEntityCurrHeading)
                }
              }
            } else {
              if (IsDisabledControlPressed(2, 16)) {
                if (pInvis) {
                  getCreatedPropZOffset -= isThisDisabledControlPressed ? 0.1 : 0.5
                } else {
                  pEntityCurrHeading -= isThisDisabledControlPressed ? 1 : 5
                  if (!isThisDisabledControlPressed) {
                    pEntityCurrHeading = Math.round(pEntityCurrHeading)
                  }
                }
              }
            }
            if (pEntityCurrHeading > 360) {
              pEntityCurrHeading -= 360
            } else {
              pEntityCurrHeading < 0 && (pEntityCurrHeading += 360)
            }
            pCreatedProp.groundSnap &&
              !pCreatedProp.forceGroundSnap &&
              IsDisabledControlJustPressed(0, 44) &&
              (getCurrentPlayerCoordsArray = !getCurrentPlayerCoordsArray)
            pCreatedProp.useModelOffset &&
              IsDisabledControlJustPressed(0, 140) &&
              (pCreatedPropModelOffset = !pCreatedPropModelOffset)
            if (pCreatedProp.adjustZ && IsDisabledControlJustPressed(0, 20)) {
              pInvis = !pInvis
              SetEntityAlpha(pCreatedEntity, pInvis ? 255 : 200, false)
            }
            ;(IsDisabledControlJustPressed(0, 200) ||
              IsDisabledControlJustPressed(0, 177)) &&
              (isPlacingEntity = false)
            if (pCreatingProp && IsDisabledControlJustPressed(0, 46)) {
              pFinishPlacement = false
              isPlacingEntity = false
            }
          })
        while (isPlacingEntity) {
          await (0, DVX.Delay)(1)
        }
        clearTick(pCreateEntityTick)
        clearTick(pDisableControlTick)
        const pCoordsArray = DVX.mathClass.fromArray(
            GetEntityCoords(pCreatedEntity, true)
          ),
          pCoordsRot = DVX.mathClass.fromArray(
            GetEntityRotation(pCreatedEntity, 2)
          ),
          pCoordsQuaternion = GetEntityQuaternion(pCreatedEntity)
        delObj(pCreatedEntity)
        pValidity = false
        if (pFinishPlacement) {
          return [false, null]
        }
        const pObjTable = {}
        return (
          (pObjTable.coords = pCoordsArray),
          (pObjTable.rotation = pCoordsRot),
          (pObjTable.quaternion = pCoordsQuaternion),
          [true, pObjTable]
        )
      }
      global.g.exports('PlaceObject', PlaceObject)
      function shapeTestResultMaterial(pEntity, pIDFK, pObjj, pCoords, pEntityZ) {
        const entityRot = DVX.mathClass.fromArray(
            GetEntityRotation(pEntity, 2)
          ),
          sCoords = DVX.mathClass
            .fromObject(pObjj)
            .multiplyScalar(0.75),
          shapeTestBox = StartShapeTestBox(
            pCoords.x,
            pCoords.y,
            pCoords.z +
              (pEntityZ !== null && pEntityZ !== void 0 ? pEntityZ : 0),
            sCoords.x,
            sCoords.y,
            sCoords.z,
            entityRot.x,
            entityRot.y,
            entityRot.z,
            2,
            83,
            pIDFK,
            4
          ),
          [pNun, pResult] = GetShapeTestResultIncludingMaterial(shapeTestBox)
        return pResult
      }
      const pFinalizeEntityCreation = (pName, pData, pArgs = 5) => {
          const gameplayCamCoord = GetGameplayCamCoord(),
            [pCamRotArgs, , pCamRotMapped] = GetGameplayCamRot(0).map(
              (keyValueForGameplayCamRot) => (Math.PI / 180) * keyValueForGameplayCamRot
            ),
            pCamRotCoordsMath = Math.abs(Math.cos(pCamRotArgs)),
            pObjCoords = [
              -Math.sin(pCamRotMapped) * pCamRotCoordsMath,
              Math.cos(pCamRotMapped) * pCamRotCoordsMath,
              Math.sin(pCamRotArgs),
            ],
            pObjMapped = pObjCoords.map(
              (k, v) => gameplayCamCoord[v] + k
            ),
            pObjGetDistance = DVX.mathClass
              .fromArray(GetEntityCoords(PlayerPedId(), false))
              .getDistanceFromArray(GetGameplayCamCoord()),
            pObjCoordsMapped = pObjCoords.map(
              (k, v) =>
                gameplayCamCoord[v] + k * (pArgs + pObjGetDistance)
            ),
            pTestSweptSphere = StartShapeTestSweptSphere(
              pObjMapped[0],
              pObjMapped[1],
              pObjMapped[2],
              pObjCoordsMapped[0],
              pObjCoordsMapped[1],
              pObjCoordsMapped[2],
              0.2,
              pName,
              pData,
              7
            )
          return GetShapeTestResultIncludingMaterial(pTestSweptSphere)
        },
        delObj = (pObj) => {
          DoesEntityExist(pObj) && DeleteObject(pObj)
        }
      async function requestObjModel(pObjModel) {
        if (IsModelValid(pObjModel)) {
          RequestModel(pObjModel)
          let isLoading = false
          setTimeout(() => (isLoading = true), 3000)
          while (!HasModelLoaded(pObjModel) && !isLoading) {
            await (0, DVX.Delay)(10)
          }
          return !isLoading
        }
        return false
      }
      function placeObj(pCoords, pData) {
        if (pPlacingObj === undefined) {
          return cancelPlacement()
        }
        let pObjectTable = {
            x: pCoords[0],
            y: pCoords[1],
            z: pCoords[2],
          },
          eCoords = GetEntityCoords(PlayerPedId(), false),
          dCoords = GetDistanceBetweenCoords(
            eCoords[0],
            eCoords[1],
            eCoords[2],
            pObjectTable.x,
            pObjectTable.y,
            pObjectTable.z,
            true
          )
        if (Number(dCoords) > 50) {
          emit('DoLongHudText', 'You cannot place the object this far away', 2)
          return
        }
        pPlace = true
        prepareObjects(pObjectTable)
      }
      function prepareObjects(pCoords) {
        emitNet(
          'desirerp-objects:prepareObject',
          pObj,
          pCoords.x,
          pCoords.y,
          pCoords.z,
          pObjectCoordsH,
          pObjectMetaData
        )
        cancelPlacement()
      }
      function cancelPlacement() {
        pObjectCoordsH = 0
        pObj = undefined
        pPlacingObj = undefined
        pPlace = false
      }
      function getShapeCoord(pVal, pVal_) {
        let GetCamCoord = GetGameplayCamCoord(),
          GetCamRot = GetGameplayCamRot(0),
          pRot0 = (Math.PI / 180) * GetCamRot[0],
          pRot2 = (Math.PI / 180) * GetCamRot[2],
          pRot1 = Math.abs(Math.cos(pRot0)),
          pCoordsX = -Math.sin(pRot2) * pRot1,
          pCoordsY = Math.cos(pRot2) * pRot1,
          pCoordsZ = Math.sin(pRot0),
          pCoords = {
            x: pCoordsX,
            y: pCoordsY,
            z: pCoordsZ,
          },
          ShapeTestSweptSphere = StartShapeTestSweptSphere(
            GetCamCoord[0] + pCoords.x,
            GetCamCoord[1] + pCoords.y,
            GetCamCoord[2] + pCoords.z,
            GetCamCoord[0] + pCoords.x * 200,
            GetCamCoord[1] + pCoords.y * 200,
            GetCamCoord[2] + pCoords.z * 200,
            0.2,
            pVal,
            pVal_,
            7
          )
        return GetShapeTestResult(ShapeTestSweptSphere)
      }
      function getShapeTestR() {
        const [pArgs, pArgsNum, pArgsNum1, pArgsNum2, pArgsNum3] = getShapeCoord(
          1,
          0
        )
        Number(pArgsNum) === 1 && (pPlacingObj = pArgsNum1)
      }
      on('onResourceStop', (resourceName) => {
        if (resourceName !== 'desirerp-objects') {
          return
        }
        false && DeleteObject(0)
      })
    })()
  })()
  