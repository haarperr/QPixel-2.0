!(function () {
    'use strict'
    var _0x443cf2 = {
      g: (function () {
        if ('object' == typeof globalThis) {
          return globalThis
        }
        try {
          return this || new Function('return this')()
        } catch (_0x164e06) {
          if ('object' == typeof window) {
            return window
          }
        }
      })(),
    }
    RPC.register('desirerp:admin:getCommandUI', async (_0x425df9) => {
      let [_0x514e27, _0x11544c] =
          _0x443cf2.g.exports['qpixel-admin'].isAdministrator(_0x425df9),
        _0x4e9eec = []
      return (
        Object.entries([
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Become Model',
                cat: 'Player',
                child: { inputs: ['Model'] },
                action: 'qpixel-admin:becomeModel',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Teleport',
                cat: 'Player',
                child: { inputs: ['Target'] },
                action: 'qpixel-admin:teleportPlayer',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Teleport Coords',
                cat: 'Player',
                child: { inputs: ['Coords'] },
                action: 'qpixel-admin:teleportCoords',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Fix Vehicle',
                cat: 'Player',
                child: void 0,
                action: 'qpixel-admin:fixVehicle',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner'],
            adminMenu: {
              command: {
                title: 'God',
                cat: 'Player',
                child: false,
                action: 'qpixel-admin:toggleGodmode',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Dev Spawn',
                cat: 'Utility',
                child: void 0,
                action: 'qpixel-admin:devSpawn',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Noclip',
                cat: 'Player',
                child: false,
                action: 'qpixel-admin:noClipToggle',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Cloak',
                cat: 'Player',
                child: false,
                action: 'qpixel-admin:toggleCloak',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Barber',
                cat: 'User',
                child: { inputs: ['Target'] },
                action: 'qpixel-admin:requestBarber',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Clothing',
                cat: 'User',
                child: { inputs: ['Target'] },
                action: 'qpixel-admin:requestClothing',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Bring',
                cat: 'User',
                child: { inputs: ['Target'] },
                action: 'qpixel-admin:bringPlayer',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Revive',
                cat: 'Player',
                child: { inputs: ['TargetNot'] },
                action: 'qpixel-admin:revive',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'cSay',
                cat: 'Utility',
                child: { inputs: ['Text'] },
                action: 'qpixel-admin:cSay',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Give License',
                cat: 'Player',
                child: {
                  inputs: ['Target', 'License'],
                },
                action: 'qpixel-admin:giveLicense',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner'],
            adminMenu: {
              command: {
                title: 'Give Cash',
                cat: 'Player',
                child: {
                  inputs: ['Target', 'Amount'],
                },
                action: 'qpixel-admin:giveCash',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Kick',
                cat: 'Utility',
                child: {
                  inputs: ['Target', 'Reason'],
                },
                action: 'qpixel-admin:kickPlayer',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Request Job',
                cat: 'Player',
                child: {
                  inputs: ['Target', 'Job'],
                },
                action: 'qpixel-admin:requestJob',
              },
              options: { bindKey: void 0 },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Teleport Marker',
                cat: 'Player',
                child: void 0,
                action: 'qpixel-admin:teleportMarker',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Give Item',
                cat: 'Utility',
                child: {
                  inputs: ['TargetNot', 'Item', 'Amount'],
                },
                action: 'qpixel-admin:giveItem',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Give Job Whitelist',
                cat: 'Utility',
                child: {
                  inputs: ['Target', 'Job', 'Rank'],
                },
                action: 'qpixel-admin:giveJobWhitelist',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Spawn Vehicle',
                cat: 'Utility',
                child: {
                  inputs: ['TargetNot', 'Vehicle', 'Vehicle Overwrite'],
                  checkBox: ['Mods'],
                },
                action: 'qpixel-admin:spawnVehicle',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev'],
            adminMenu: {
              command: {
                title: 'Max Stats',
                cat: 'Player',
                child: { inputs: ['TargetNot'] },
                action: 'qpixel-admin:maxMyStats',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Remove Stress',
                cat: 'Player',
                child: {
                  inputs: ['TargetNot', 'Amount'],
                },
                action: 'qpixel-admin:removeStress',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev', 'admin', 'mod'],
            adminMenu: {
              command: {
                title: 'Update Garage',
                cat: 'Utility',
                child: {
                  inputs: ['Plate', 'Garage'],
                },
                action: 'qpixel-admin:updateGarage',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Create Business',
                cat: 'Utility',
                child: {
                  inputs: ['ID', 'Name', 'Owner'],
                },
                action: 'qpixel-admin:createBusiness',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
          {
            rank: ['owner', 'dev', 'admin'],
            adminMenu: {
              command: {
                title: 'Search Player Inventory',
                cat: 'Player',
                child: { inputs: ['Target'] },
                action: 'qpixel-admin:searchPlayerInventory',
              },
              options: {
                bindKey: {
                  value: void 0,
                  options: {},
                },
              },
            },
          },
        ]).forEach(([_0x134e9a, _0x1c6526]) => {
          _0x1c6526.rank.forEach((_0x5e77f5) => {
            _0x5e77f5 === _0x11544c && _0x4e9eec.push(_0x1c6526)
          })
        }),
        _0x4e9eec
      )
    })
    onNet('qpixel-admin:sendAnnoucement', (_0x5f95b8) => {
      let _0x19aa42 = GetPlayerName(source.toString())
      _0x443cf2.g.exports['qpixel-admin'].sendLog(
        'https://discord.com/api/webhooks/1012086150640435250/N0LlR3HM23CxUJztdyfMoHgUMJ5Clxi1-8LHOcMj8uWrpUdCM-9Vcw9Njxe1h6sy5Ch4',
        '255',
        '[qpixel-admin] cSay Log',
        'cSay message: ' + _0x5f95b8 + '\nAdmin: ' + _0x19aa42,
        '',
        ''
      )
      emitNet('chatMessage', -1, 'Admin', 1, _0x5f95b8)
    })
    onNet('qpixel-admin:sendTsay', (_0x38b145) => {
      emitNet('pNotify:SendNotification', -1, {
        text:
          '<center><span style="font-size:28px;color:red;">' +
          _0x38b145 +
          '<br /><hr style="border-color: rgba(255, 0, 0, 0.5);">' +
          _0x38b145 +
          '</span></center>',
        layout: 'top',
        timeout: 15000,
        type: 'error',
        animation: {
          open: 'gta_effects_fade_in',
          close: 'gta_effects_fade_out',
        },
        queue: 'announcement',
        progressBar: false,
      })
    })
    RPC.register('desirerp:admin:getPlayerData', (_0x24f5cb) => {
      let _0x564b30 = []
      return (
        Object.entries(getPlayers()).forEach(([_0x4920ab, _0x229e88]) => {
          const _0x1941c8 = GetPlayerIdentifier(_0x229e88, 0)
          _0x564b30.push({
            name: GetPlayerName(_0x229e88),
            SteamID: _0x1941c8,
            serverID: _0x229e88,
            queueType: 'Regular',
          })
        }),
        _0x564b30
      )
    })
    const _0x175724 = async (
      _0x52afd9,
      _0x1a6ebf,
      _0x18da20,
      _0x19f5e2,
      _0x36627f
    ) => {
      const _0x5b3d3b = new Date()
      console.log(
        '[DEBUG] addPlayerLog',
        _0x52afd9,
        _0x1a6ebf,
        _0x18da20,
        _0x19f5e2,
        _0x36627f,
        _0x5b3d3b.toLocaleString()
      )
      await SQL.execute(
        'INSERT INTO player_logs (type, steamid, log, date, cid, data) VALUES (@type, @steamid, @log, @date, @cid, @data)',
        {
          type: _0x52afd9,
          steamid: _0x1a6ebf,
          log: _0x18da20,
          date: _0x5b3d3b.toLocaleString(),
          cid: _0x19f5e2,
          data: _0x36627f,
        }
      )
    }
    _0x443cf2.g.exports('addPlayerLog', _0x175724)
    RPC.register('desirerp:admin:getPlayerLogs', async (_0x3bdd17, _0x577d4c) =>
      '' !== _0x577d4c.steamid ||
      (void 0 !== _0x577d4c.steamid &&
        '' === _0x577d4c.type &&
        '' === _0x577d4c.cid)
        ? await SQL.execute(
            'SELECT * FROM player_logs WHERE steamid = @steamid ORDER BY id DESC LIMIT @limit',
            {
              steamid: _0x577d4c.steamid,
              limit: _0x577d4c.limit,
            }
          )
        : '' !== _0x577d4c.cid ||
          (void 0 !== _0x577d4c.cid &&
            '' === _0x577d4c.type &&
            '' === _0x577d4c.steamid)
        ? await SQL.execute(
            'SELECT * FROM player_logs WHERE cid = @cid ORDER BY id DESC LIMIT @limit',
            {
              cid: _0x577d4c.cid,
              limit: _0x577d4c.limit,
            }
          )
        : '' !== _0x577d4c.type ||
          (void 0 !== _0x577d4c.type &&
            '' === _0x577d4c.cid &&
            '' === _0x577d4c.steamid)
        ? await SQL.execute(
            'SELECT * FROM player_logs WHERE type = @type ORDER BY id DESC LIMIT @limit',
            {
              type: _0x577d4c.type,
              limit: _0x577d4c.limit,
            }
          )
        : []
    )
    RPC.register('desirerp:admin:isAdmin', async (_0xf14756) => {
      let [_0x22130d, _0x2f0c14] =
        _0x443cf2.g.exports['qpixel-admin'].isAdministrator(_0xf14756)
      return !!_0x22130d
    })
    onNet('qpixel-admin:teleportPlayer', (_0x284120, _0x31e23e) => {
      let _0x4ec066 = _0x31e23e
      if (0 !== _0x4ec066) {
        let _0x591f36 = GetPlayerPed(_0x284120),
          _0x5b74a8 = GetPlayerPed(_0x4ec066)
        if (DoesEntityExist(_0x5b74a8)) {
          let _0x347379 = GetEntityCoords(_0x5b74a8)
          SetEntityCoords(
            _0x591f36,
            _0x347379[0],
            _0x347379[1],
            _0x347379[2],
            true,
            false,
            false,
            false
          )
        }
      }
    })
    onNet('qpixel-admin:bringPlayer', (_0x3c9006, _0x37277f) => {
      let _0x3d35e5 = _0x37277f
      if (0 !== _0x3d35e5) {
        let _0x1bf2f6 = GetPlayerPed(_0x3c9006),
          _0x57d11a = GetPlayerPed(_0x3d35e5)
        if (DoesEntityExist(_0x57d11a)) {
          let _0x1cff21 = GetEntityCoords(_0x1bf2f6)
          SetEntityCoords(
            _0x57d11a,
            _0x1cff21[0],
            _0x1cff21[1],
            _0x1cff21[2],
            true,
            false,
            false,
            false
          )
        }
      }
    })
    onNet('qpixel-admin:maxMyStats', (_0x2fe8d5) => {
      let _0x2d8cb0 =
        ('' !== _0x2fe8d5 && void 0 !== _0x2fe8d5 && _0x2fe8d5) || source
      console.log('[DEBUG] Target', _0x2d8cb0)
      let _0x5ac947 = GetPlayerName(source.toString()),
        _0x3c01bd = GetPlayerName(_0x2d8cb0.toString())
      _0x443cf2.g.exports['qpixel-admin'].sendLog(
        'https://discord.com/api/webhooks/1012086119946539068/DSvrwvAgICAX0YMa55XvqzcGfB_t9kWmPyobqDMaILylmhxZRri3D2EzGebxMv_dr8KX',
        '255',
        '[qpixel-admin] Max Stats Log',
        'Admin: ' + _0x5ac947 + '\nTarget: ' + _0x3c01bd,
        ''
      )
      emitNet('qpixel-admin:maxstats', _0x2d8cb0)
    })
    onNet('qpixel-admin:removeStress', (_0x20fb61, _0x74e673) => {
      let _0x419c77 = ('' !== _0x20fb61 && _0x20fb61) || source
      emitNet('qpixel-admin:clearStress', _0x419c77, _0x74e673)
    })
    onNet('qpixel-admin:requestJob', (_0x42c8ca, _0x2d9f5f) => {
      let _0x280909 = ('' !== _0x42c8ca && _0x42c8ca) || source
      emitNet('qpixel-admin:requestedJob', _0x280909, _0x2d9f5f)
    })
    onNet('qpixel-admin:requestBarber', (_0x4e1941) => {
      let _0x4e53df = ('' !== _0x4e1941 && _0x4e1941) || source
      emitNet('qpixel-admin:openBarber', _0x4e53df)
    })
    onNet('qpixel-admin:requestClothing', (_0x10890c) => {
      let _0x398c3f = ('' !== _0x10890c && _0x10890c) || source
      emitNet('qpixel-admin:openClothing', _0x398c3f)
    })
    onNet('qpixel-admin:requestBennys', (_0x3dad0c) => {
      let _0x179658 = ('' !== _0x3dad0c && _0x3dad0c) || source
      emitNet('qpixel-admin:bennys', _0x179658)
    })
    onNet('qpixel-admin:updateGarage', async (_0x368002, _0x9b6bbd) => {
      let _0xa025c8 = source,
        _0x4cab0d = ('' !== _0x9b6bbd && _0x9b6bbd) || 'garage_alta'
      await SQL.execute(
        'UPDATE characters_cars SET current_garage = @current_garage, vehicle_state = @vehicle_state WHERE license_plate = @license_plate',
        {
          current_garage: _0x4cab0d,
          vehicle_state: 'In',
          license_plate: _0x368002,
        }
      )
      emitNet('DoLongHudText', _0xa025c8, 'Successfully updated garage state', 1)
    })
    onNet('qpixel-admin:giveLicense', async (_0x390c55, _0x3b5b09) => {
      if ('' === _0x390c55 || void 0 === _0x390c55) {
        return emitNet('DoLongHudText', source, 'You must select a target', 2)
      }
      let _0x2dd0b7 = GetPlayerName(source.toString()),
        _0xefbb3a = GetPlayerName(_0x390c55.toString())
      return (
        _0x443cf2.g.exports['qpixel-admin'].sendLog(
          'https://discord.com/api/webhooks/1012086049465450567/sizSvurpDV2KZ8ooSwXUKltsyMGeFFFGt5j5IE3n794jqdYOy_v5rdoFwYI98M8-_BxV',
          '255',
          '[qpixel-admin] Give License Log',
          'License Given: ' +
            _0x3b5b09 +
            ' License\nAdmin: ' +
            _0x2dd0b7 +
            '\nTarget: ' +
            _0xefbb3a,
          ''
        ),
        _0x443cf2.g.exports['qpixel-admin'].giveLicense(Number(_0x390c55), _0x3b5b09)
          ? emitNet('DoLongHudText', source, 'Successfully gave license!', 1)
          : emitNet(
              'DoLongHudText',
              source,
              'Error while trying to give license.',
              2
            )
      )
    })
    onNet(
      'qpixel-admin:giveJobWhitelist',
      async (_0x13524d, _0x4876d4, _0x3e0395) => {
        if ('' === _0x13524d || void 0 === _0x13524d) {
          return emitNet('DoLongHudText', source, 'You must select a target', 2)
        }
        let _0x1aff4b = GetPlayerName(source.toString()),
          _0x8a8a2f = GetPlayerName(_0x13524d.toString())
        return (
          _0x443cf2.g.exports['qpixel-admin'].sendLog(
            'https://discord.com/api/webhooks/1012086013864198164/YtzXWIUZ52I8Wze-p827KdKRY7a8sBwQI2Y95-Dxv0BXoCc_ecjAgH0KnsGXsB2mN7Ow',
            '255',
            '[qpixel-admin] Job Whitelist Log',
            'Whitelisted Job Given: ' +
              _0x4876d4 +
              '\nRank: ' +
              _0x3e0395 +
              '\nAdmin: ' +
              _0x1aff4b +
              '\nTarget: ' +
              _0x8a8a2f,
            ''
          ),
          _0x443cf2.g.exports['qpixel-admin'].giveJobWhitelist(
            Number(_0x13524d),
            _0x4876d4,
            _0x3e0395
          )
            ? emitNet(
                'DoLongHudText',
                source,
                'Successfully gave job whitelist!',
                1
              )
            : emitNet(
                'DoLongHudText',
                source,
                'Error while trying to give job whitelist.',
                2
              )
        )
      }
    )
    onNet('qpixel-admin:giveCash', async (_0x1ae7bd, _0x5e1bd2) => {
      if ('' === _0x1ae7bd || void 0 === _0x1ae7bd) {
        return emitNet('DoLongHudText', source, 'You must select a target', 2)
      }
      let _0x1ff7e4 = GetPlayerName(source.toString()),
        _0x48e165 = GetPlayerName(_0x1ae7bd.toString())
      return (
        _0x443cf2.g.exports['qpixel-admin'].sendLog(
          'https://discord.com/api/webhooks/1012085976564256769/1Yc8Ejg05M2bprMDm4MHLPbZWica8irXl1o74xUsLX8oWSan2YzDwW2IiQRJSrl7Po4_',
          '255',
          '[qpixel-admin] Give Cash Log',
          'Cash Given: $' +
            _0x5e1bd2.toLocaleString() +
            '\nAdmin: ' +
            _0x1ff7e4 +
            '\nTarget: ' +
            _0x48e165,
          ''
        ),
        _0x443cf2.g.exports['qpixel-admin'].giveCash(Number(_0x1ae7bd), _0x5e1bd2)
          ? emitNet('DoLongHudText', source, 'Successfully gave cash!', 1)
          : emitNet(
              'DoLongHudText',
              source,
              'Error while trying to give cash.',
              2
            )
      )
    })
    onNet('qpixel-admin:kickPlayer', async (_0x385b59, _0x128c93) => {
      if ('' === _0x385b59 || void 0 === _0x385b59) {
        return emitNet('DoLongHudText', source, 'You must select a target', 2)
      }
      DropPlayer(_0x385b59, _0x128c93)
      let _0x5521ae = GetPlayerName(source.toString()),
        _0x42583a = GetPlayerName(_0x385b59.toString())
      _0x443cf2.g.exports['qpixel-admin'].sendLog(
        'https://discord.com/api/webhooks/1012085946914721862/3NKldUypurDhSTTV_KdsqPvliWqrEFu8rj41ooz0VS3ht-pnqhVGKpYm5qJii8wd18LD',
        '255',
        '[qpixel-admin] Kick Player Log',
        'Reason: ' +
          _0x128c93 +
          '\nAdmin: ' +
          _0x5521ae +
          '\nTarget: ' +
          _0x42583a,
        ''
      )
    })
    onNet('qpixel-admin:createBusiness', async (_0x125447, _0x2b8f0d, _0x5b4abf) => {
      console.log('qpixel-admin:createBusiness', _0x125447, _0x2b8f0d, _0x5b4abf)
      let _0x1fb2d5 = GetPlayerName(source.toString())
      _0x443cf2.g.exports['qpixel-admin'].sendLog(
        'https://discord.com/api/webhooks/1012085912815009812/SfJvvqL0rAyzCsMzZAsmkArqt0oJkmoF9IpjiNebrgJaQ_pJ_DcfgmBqAR2BnIHwNoKV',
        '255',
        '[qpixel-admin] Business Creation Log',
        'Business ID: ' +
          _0x125447 +
          '\nBusiness Name: ' +
          _0x2b8f0d +
          '\nBusiness Owner: ' +
          _0x5b4abf +
          '\nAdmin: ' +
          _0x1fb2d5,
        ''
      )
      let _0x3817cf = []
      _0x3817cf.push(
        {
          name: 'Owner',
          charge_access: true,
          bank_access: true,
          role_manage: true,
          role_create: true,
          key_access: true,
          stash_access: true,
          craft_access: true,
          can_hire: true,
          can_fire: true,
        },
        {
          name: 'Employee',
          charge_access: false,
          bank_access: false,
          role_manage: false,
          role_create: false,
          key_access: true,
          stash_access: true,
          craft_access: true,
          can_hire: false,
          can_fire: false,
        }
      )
      let _0x2d0bf0 = []
      _0x2d0bf0.push({
        cid: _0x5b4abf,
        role: 'Owner',
        rank: 5,
      })
      let _0x153956 =
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString() +
        Math.floor(10 * Math.random()).toString()
      return (await SQL.execute(
        'INSERT INTO businesses (business_id, business_name, employees, roles, bank_id) VALUES (@business_id, @business_name, @employees, @roles, @bank_id)',
        {
          business_id: _0x125447,
          business_name: _0x2b8f0d,
          employees: JSON.stringify(_0x2d0bf0),
          roles: JSON.stringify(_0x3817cf),
          bank_id: _0x153956,
        }
      ))
        ? emitNet('DoLongHudText', source, 'Successfully created business!', 1)
        : emitNet(
            'DoLongHudText',
            source,
            'Error while trying to create business.',
            2
          )
    })
    RegisterCommand(
      'testidentifiers',
      (_0x3e224f, _0x3dbe4b) => {
        const _0xd33948 = GetPlayerIdentifier(_0x3e224f, Number(_0x3dbe4b[0]))
        console.log('yo', _0xd33948)
      },
      false
    )
    onNet('qpixel-admin:giveItem', async (_0x5e74bd, _0x495027, _0x520d07) => {
      let _0x34b98b = ('' !== _0x5e74bd && _0x5e74bd) || source,
        _0x2fc452 = ('' !== _0x520d07 && _0x520d07) || 1
      isNaN(_0x495027) || (_0x495027 = Number(_0x495027))
      const _0x568991 = source
      emitNet('player:receiveItem', _0x34b98b, _0x495027.toString(), _0x2fc452)
      let _0xfb09a8 =
          'https://discord.com/api/webhooks/1012085878396555354/xQzlNcDg_E-oqmsNgD0b5cqda3WmU_i80Z-ZXJn3IZv4VWkiZ0uoBwhElpXo8zegKoNJ',
        _0x4a04df = GetPlayerName(source.toString())
      if ('' !== _0x5e74bd || null !== _0x5e74bd) {
        let _0xb34ec5 = GetPlayerName(_0x34b98b.toString())
        _0x443cf2.g.exports['qpixel-admin'].sendLog(
          _0xfb09a8,
          '255',
          '[qpixel-admin] Spawn Item Log',
          'Item Spawned: ' +
            _0x495027 +
            '\nItem Amount: 1\nAdmin: ' +
            _0x4a04df +
            '\nTarget: ' +
            _0xb34ec5,
          ''
        )
        const _0x1f4549 = _0x443cf2.g.exports['qpixel-lib'].getCharacter(_0x568991)
        if (!_0x1f4549) {
          return
        }
        const _0x41e5e2 = _0x443cf2.g.exports['qpixel-lib'].getCharacter(_0x34b98b)
        if (!_0x41e5e2) {
          return
        }
        const _0x28bde3 =
            '{"amount":"' + _0x2fc452 + '","item":"' + _0x495027 + '"}',
          _0x4ab72d = GetPlayerIdentifier(_0x568991, 0)
        _0x175724(
          'Admin',
          null !== _0x4ab72d ? _0x4ab72d : 'None',
          'Spawned item for ' +
            _0xb34ec5 +
            ' (' +
            _0x41e5e2.id +
            ') [' +
            _0x41e5e2.first_name +
            ' ' +
            _0x41e5e2.last_name +
            ']',
          _0x1f4549.id,
          _0x28bde3
        )
      } else {
        _0x443cf2.g.exports['qpixel-admin'].sendLog(
          _0xfb09a8,
          '255',
          '[qpixel-admin] Spawn Item Log',
          'Item Spawned: ' + _0x495027 + '\nItem Amount: 1\nAdmin: ' + _0x4a04df,
          'Item Name: ' + _0x495027 + ' | Item Amount: 1',
          ''
        )
        const _0x1a76b8 = _0x443cf2.g.exports['qpixel-lib'].getCharacter(_0x568991)
        if (!_0x1a76b8) {
          return
        }
        const _0x408639 =
            '{"amount":"' + _0x2fc452 + '","item":"' + _0x495027 + '"}',
          _0x1ab5fb = GetPlayerIdentifier(_0x568991, 0)
        _0x175724(
          'Admin',
          null !== _0x1ab5fb ? _0x1ab5fb : 'None',
          'Spawned item',
          _0x1a76b8.id,
          _0x408639
        )
      }
    })
    onNet('qpixel-admin:sendLog', async (_0x38146f, _0x187835, _0x21a109) => {
      console.log('qpixel-admin:sendLog', _0x38146f, _0x187835, _0x21a109)
      let _0x2d3366 = GetPlayerName(source.toString())
      switch (_0x38146f) {
        case 'godmode':
          let _0x44e720 =
            'https://discord.com/api/webhooks/1012085847241277470/5un7D2kdN-4BmTm9uB8McXz1skYDQecoKCY1-P3jtG2UQBCvB4zfAqP30nv6TKuXk9iJ'
          _0x443cf2.g.exports['qpixel-admin'].sendLog(
            _0x44e720,
            '255',
            '[qpixel-admin] Godmode Log',
            'Godmode Toggled: ' + _0x187835 + '\nAdmin: ' + _0x2d3366,
            '',
            ''
          )
          break
        case 'reviveDistance':
          let _0x45b285 =
            'https://discord.com/api/webhooks/1012085816677388488/LYwPbJ-UlPSmaBu8dU_vOXw90pnCpc4fUf8DZ97uXCEruP07ktZhEIGjRxIQXT3pm8Hk'
          _0x443cf2.g.exports['qpixel-admin'].sendLog(
            _0x45b285,
            '255',
            '[qpixel-admin] Revive Distance Log',
            'Revived in Distance\nAdmin: ' + _0x2d3366,
            '',
            ''
          )
          break
        case 'reviveTarget':
          let _0x492fdd =
            'https://discord.com/api/webhooks/1012085784964255755/N1T3BEY2G_mEH0CaEkokpclsuzPp9y27KsxkrlBWr4T7yAxkI3bLww1vhvgG9KSIYJpe'
          _0x443cf2.g.exports['qpixel-admin'].sendLog(
            _0x492fdd,
            '255',
            '[qpixel-admin] Revive Target Log',
            'Revived a Target\nAdmin: ' +
              _0x2d3366 +
              '\nTarget: ' +
              GetPlayerName(_0x21a109) +
              ' (' +
              GetPlayerIdentifier(_0x21a109, 0) +
              ')',
            '',
            ''
          )
      }
    })
  })()
  