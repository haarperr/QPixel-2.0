fx_version 'cerulean'
games { 'gta5' }

shared_script "@mka-array/Array.lua"

client_scripts {
    '@desirerp-lib/client/cl_rpc.lua',
    '@desirerp-lib/client/cl_ui.lua',
	'@desirerp-lib/client/cl_interface.lua',
    '@desirerp-errorlog/client/cl_errorlog.lua',
    'client/cl_*.lua',
}

shared_script {
    '@desirerp-lib/shared/sh_util.lua',
}

server_scripts {
    '@desirerp-lib/server/sv_rpc.lua',
    '@desirerp-lib/server/sv_sql.lua',
    'server/sv_*.lua',
}