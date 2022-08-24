





fx_version 'cerulean'
games {"gta5"}

description "actionbar"

client_scripts {
  "@desirerp-errorlog/client/cl_errorlog.lua",
  '@desirerp-lib/client/cl_rpc.lua',
  "client.lua",
}

shared_script {
  '@desirerp-lib/shared/sh_util.lua'
}

server_scripts {
  '@desirerp-lib/server/sv_rpc.lua',
  '@desirerp-lib/server/sv_sql.lua',
}