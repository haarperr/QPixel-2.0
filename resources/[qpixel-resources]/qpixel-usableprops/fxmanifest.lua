





fx_version 'cerulean'
games {'gta5'}

--client_script "@npx/client/lib.js"
--server_script "@npx/server/lib.js"
--shared_script "@npx/shared/lib.lua"

client_script "@qpixel-errorlog/client/cl_errorlog.lua"
client_script "@qpixel-sync/client/lib.lua"

server_script "@qpixel-lib/server/sv_asyncExports.lua"

shared_script "@qpixel-lib/shared/sh_util.lua"

client_scripts {
  '@qpixel-lib/client/cl_rpc.lua',
  'cl_*.lua'
}

server_scripts {
  '@qpixel-lib/server/sv_sql.lua',
  '@qpixel-lib/server/sv_rpc.lua',
  'sv_*.lua'
}
