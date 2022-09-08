!(function () {
    'use strict'
    onNet('qpixel-objects:requestObjects', async () => {
      let pSource = source,
        pObjects = await SQL.execute('SELECT * FROM __objects', {}),
        pObjectTable = []
      for (let pObjectNumber = 0; pObjectNumber < pObjects.length; pObjectNumber++) {
        let pCoords = JSON.parse(pObjects[Number(pObjectNumber)].coordinates),
          pObjectCoords = {
            x: pCoords.x,
            y: pCoords.y,
            z: pCoords.z,
            h: pCoords.h,
          }
        pObjectTable.push({
          id: pObjects[Number(pObjectNumber)].id,
          model: pObjects[Number(pObjectNumber)].model,
          coordinates: pObjectCoords,
          metaData: JSON.parse(pObjects[Number(pObjectNumber)].metaData),
        })
      }
      emitNet('qpixel-objects:loadObjects', pSource, pObjectTable)
    })
    onNet(
      'qpixel-objects:prepareObject',
      async (
        pObjectModel,
        pObjectCoordsX,
        pObjectCoordsY,
        pObjectCoordsZ,
        pObjectCoordsH,
        pObjectMetaData
      ) => {
        let pCoords = {
            x: pObjectCoordsX,
            y: pObjectCoordsY,
            z: pObjectCoordsZ,
            h: pObjectCoordsH,
          },
          pRandomID =
            Math.floor(10 * Math.random()).toString() +
            Math.floor(10 * Math.random()).toString() +
            Math.floor(10 * Math.random()).toString() +
            Math.floor(10 * Math.random()).toString()
        if (
          !(await SQL.execute(
            'INSERT INTO __objects (model, coordinates, metaData, randomId) VALUES (@model, @coordinates, @metaData, @randomId)',
            {
              model: pObjectModel,
              coordinates: JSON.stringify(pCoords),
              metaData: JSON.stringify(pObjectMetaData),
              randomId: pRandomID,
            }
          ))
        ) {
          return
        }
        let pRandomObject = await SQL.execute(
          'SELECT * FROM __objects WHERE randomId = @randomId',
          { randomId: pRandomID }
        )
        if (!pRandomObject[0]) {
          return
        }
        let pObjectData = {
          id: pRandomObject[0].id,
          model: pObjectModel,
          coordinates: pCoords,
          metaData: pObjectMetaData,
        }
        emitNet('qpixel:objects:prepareNewObject', -1, pObjectData)
      }
    )
    RPC.register(
      'qpixel-objects:SaveObject',
      async (
        pSource,
        pType,
        pObjectModel,
        pObjCoords,
        pObjHeading,
        pObjMetadata
      ) => {
        let pObjFinalCoords = {
            x: pObjCoords.x,
            y: pObjCoords.y,
            z: pObjCoords.z,
            h: pObjHeading,
          },
          pGenRandomID =
            Math.floor(10 * Math.random()).toString() +
            Math.floor(10 * Math.random()).toString() +
            Math.floor(10 * Math.random()).toString() +
            Math.floor(10 * Math.random()).toString()
        if (
          !(await SQL.execute(
            'INSERT INTO __objects (model, coordinates, metaData, randomId) VALUES (@model, @coordinates, @metaData, @randomId)',
            {
              model: pObjectModel,
              coordinates: JSON.stringify(pObjFinalCoords),
              metaData: JSON.stringify(pObjMetadata),
              randomId: pGenRandomID,
            }
          ))
        ) {
          return false
        }
        let pObjRandomID = await SQL.execute(
          'SELECT * FROM __objects WHERE randomId = @randomId',
          { randomId: pGenRandomID }
        )
        if (!pObjRandomID[0]) {
          return false
        }
        let pObjects = {
          id: pObjRandomID[0].id,
          model: pObjectModel,
          coordinates: pObjFinalCoords,
          metaData: pObjMetadata,
        }
        return emitNet('qpixel:objects:prepareNewObject', -1, pObjects), true
      }
    )
    RPC.register('qpixel-objects:DeleteObject', async (pSource, pObjectID) => {
      let pObject = await SQL.execute(
        'SELECT * FROM __objects WHERE id = @id',
        { id: pObjectID }
      )
      if (!pObject[0]) {
        return false
      }
      let pObjects = {
        id: pObject[0].id,
        model: pObject[0].model,
        coordinates: JSON.parse(pObject[0].coordinates),
        metaData: JSON.parse(pObject[0].metaData),
        randomId: pObject[0].randomId,
      }
      return (
        !!(await SQL.execute('DELETE FROM __objects WHERE id = @id', {
          id: pObjectID,
        })) && (emitNet('qpixel-objects:clearObjects', -1, pObjects), true)
      )
    })
    RPC.register(
      'qpixel-objects:UpdateObject',
      async (pSource, pObjectID, pObjectModel) => {
        if (
          !(await SQL.execute(
            'UPDATE __objects SET model = @model WHERE id = @id',
            {
              model: pObjectModel,
              id: pObjectID,
            }
          ))
        ) {
          return false
        }
        let pObject = await SQL.execute(
          'SELECT * FROM __objects WHERE id = @id',
          { id: pObjectID }
        )
        if (!pObject[0]) {
          return false
        }
        let pObjects = {
          id: pObject[0].id,
          model: pObject[0].model,
          coordinates: JSON.parse(pObject[0].coordinates),
          metaData: JSON.parse(pObject[0].metaData),
          randomId: pObject[0].randomId,
        }
        return emitNet('qpixel-objects:updateObjects', -1, pObjects), true
      }
    )
  })()
  