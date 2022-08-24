





fx_version 'cerulean'
games {'gta5'}

--client_script "@npx/client/lib.js"
--server_script "@npx/server/lib.js"
--shared_script "@npx/shared/lib.lua"

client_script "@desirerp-errorlog/client/cl_errorlog.lua"
client_script "@desirerp-sync/client/lib.lua"

server_script "@desirerp-lib/server/sv_asyncExports.lua"

shared_script "@desirerp-lib/shared/sh_util.lua"

client_scripts {
  '@desirerp-lib/client/cl_rpc.lua',
  'cl_*.lua'
}

server_scripts {
  '@desirerp-lib/server/sv_sql.lua',
  '@desirerp-lib/server/sv_rpc.lua',
  'sv_*.lua'
}
