fx_version 'cerulean'
games { 'gta5' }

client_script "@arp-sync/client/lib.lua"
client_script "@arp-sync/client/lib.lua"
client_script '@arp-lib/client/cl_interface.lua'
client_script "@arp-lib/client/cl_polyhooks.lua"
client_script "@mka-array/Array.lua"
client_script "@arp-lib/client/cl_ui.lua"
client_script "@arp-lib/client/cl_rpc.lua"

client_scripts {
  '@arp-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
  "@PolyZone/client.lua",
}

shared_script {
  '@arp-lib/shared/sh_util.lua',
  'shared/sh_*.*',
}

server_scripts {
  '@arp-lib/server/sv_rpc.lua',
  '@arp-lib/server/sv_sql.lua',
  '@arp-lib/server/sv_asyncExports.lua',
  'server/sv_*.lua',
}

exports {
  'WeedPackaged'
}