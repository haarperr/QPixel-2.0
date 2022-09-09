fx_version 'cerulean'
games { 'gta5' }

client_script "@qpixel-sync/client/lib.lua"
client_script "@qpixel-sync/client/lib.lua"
client_script '@qpixel-lib/client/cl_interface.lua'
client_script "@qpixel-lib/client/cl_polyhooks.lua"
client_script "@mka-array/Array.lua"
client_script "@qpixel-lib/client/cl_ui.lua"
client_script "@qpixel-lib/client/cl_rpc.lua"

client_scripts {
  "@qpixel-sync/client/lib.lua",
  "@qpixel-lib/client/cl_interface.lua",
  "@qpixel-lib/client/cl_polyhooks.lua",
  "@qpixel-locales/client/lib.lua",
  "@qpixel-lib/client/cl_rpc.lua",
  'client/cl_*.lua',
  "@PolyZone/client.lua",
}

shared_script {
  '@qpixel-lib/shared/sh_util.lua',
  'shared/sh_*.*',
}

server_scripts {
  "@qpixel-lib/server/sv_rpc.lua",
  "@qpixel-lib/server/sv_sql.lua",
  "@qpixel-lib/server/sv_asyncExports.lua",
  'server/sv_*.lua',
}

exports {
  'WeedPackaged'
}