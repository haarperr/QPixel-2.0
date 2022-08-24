








fx_version 'cerulean'

games { 'gta5' }

client_script "@desirerp-sync/client/lib.lua"
client_script "@desirerp-lib/client/cl_ui.lua"

client_scripts {
  '@desirerp-lib/client/cl_rpc.lua',
  'client/cl_*.lua'
}

server_script "@desirerp-lib/server/sv_npx.js"
server_scripts {
  '@desirerp-lib/server/sv_rpc.lua',
  '@desirerp-lib/server/sv_rpc.js',
  '@desirerp-lib/server/sv_sql.lua',
  '@desirerp-lib/server/sv_sql.js',
  "@desirerp-lib/server/sv_asyncExports.lua",
  'config.lua',
  'server/sv_*.lua',
}