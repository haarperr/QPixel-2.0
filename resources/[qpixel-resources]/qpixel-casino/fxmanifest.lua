








fx_version 'cerulean'
games { 'gta5' }

--[[ dependencies {
  "qpixel-polyzone",
  "qpixel-lib",
  "qpixel-ui"
} ]]--

client_script "@qpixel-lib/client/cl_ui.lua"

client_scripts {
  '@qpixel-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
  'client/cl_*.js',
  "@PolyZone/client.lua",
  "@PolyZone/ComboZone.lua",
}

shared_script {
  '@qpixel-lib/shared/sh_util.lua',
  'shared/sh_*.*',
}

--server_script "@qpixel-lib/server/sv_npx.js"
server_scripts {
  --'@qpixel-lib/server/sv_asyncExports.lua',
  --'@qpixel-lib/server/sv_rpc.lua',
  --'@qpixel-lib/server/sv_rpc.js',
  --'@qpixel-lib/server/sv_sql.lua',
  --'@qpixel-lib/server/sv_sql.js',
  'server/sv_*.lua',
  'server/sv_*.js',
}
