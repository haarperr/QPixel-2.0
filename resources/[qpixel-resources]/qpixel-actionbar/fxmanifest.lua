





fx_version 'cerulean'
games {"gta5"}

description "actionbar"

client_scripts {
  "@qpixel-errorlog/client/cl_errorlog.lua",
  '@qpixel-lib/client/cl_rpc.lua',
  "client.lua",
}

shared_script {
  '@qpixel-lib/shared/sh_util.lua'
}

server_scripts {
  '@qpixel-lib/server/sv_rpc.lua',
  '@qpixel-lib/server/sv_sql.lua',
}