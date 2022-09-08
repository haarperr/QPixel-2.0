





fx_version 'cerulean'
games { 'gta5' }

dependencies {
  "PolyZone"
}

client_script "@qpixel-lib/client/cl_ui.lua"
client_script "@qpixel-lib/client/cl_interface.lua"
client_script "config.lua"

client_scripts {
  "@PolyZone/client.lua",
  "@PolyZone/BoxZone.lua",
  "@PolyZone/CircleZone.lua",
  "@PolyZone/ComboZone.lua",
  "@PolyZone/EntityZone.lua",
  '@qpixel-errorlog/client/cl_errorlog.lua',
  '@qpixel-lib/client/cl_rpc.lua',
  'client/cl_*.lua'
}


shared_script 'shared/sh_*.*'

server_scripts {
    '@qpixel-lib/server/sv_rpc.lua',
    '@qpixel-lib/server/sv_sql.lua',
    'server/sv_*.lua',
}

export "getModule"