fx_version 'adamant'
games { 'gta5' }

client_script {
    '@desirerp-lib/client/cl_rpc.lua',
	'@desirerp-lib/client/cl_ui.lua',
	'@desirerp-lib/client/cl_interface.lua',
    '@desirerp-lib/client/cl_ui.js',
    'client/cl_*.lua'
}

server_script {
    '@desirerp-lib/server/sv_rpc.lua',
    'server/sv_*.lua'
}

exports {
    'canHandOffPackages'
}