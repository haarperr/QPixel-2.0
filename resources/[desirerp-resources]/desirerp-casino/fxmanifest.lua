








fx_version 'cerulean'
games { 'gta5' }

--[[ dependencies {
  "desirerp-polyzone",
  "desirerp-lib",
  "desirerp-ui"
} ]]--

client_script "@desirerp-lib/client/cl_ui.lua"

client_scripts {
  '@desirerp-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
  'client/cl_*.js',
  "@PolyZone/client.lua",
  "@PolyZone/ComboZone.lua",
}

shared_script {
  '@desirerp-lib/shared/sh_util.lua',
  'shared/sh_*.*',
}

--server_script "@desirerp-lib/server/sv_npx.js"
server_scripts {
  --'@desirerp-lib/server/sv_asyncExports.lua',
  --'@desirerp-lib/server/sv_rpc.lua',
  --'@desirerp-lib/server/sv_rpc.js',
  --'@desirerp-lib/server/sv_sql.lua',
  --'@desirerp-lib/server/sv_sql.js',
  'server/sv_*.lua',
  'server/sv_*.js',
}
