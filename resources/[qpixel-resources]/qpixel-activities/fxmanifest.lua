fx_version 'adamant'
games { 'gta5' }

client_script {
    '@qpixel-lib/client/cl_rpc.lua',
	'@qpixel-lib/client/cl_ui.lua',
	'@qpixel-lib/client/cl_interface.lua',
    '@qpixel-lib/client/cl_ui.js',
    'client/cl_*.lua'
}

server_script {
    '@qpixel-lib/server/sv_rpc.lua',
    'server/sv_*.lua'
}

exports {
    'canHandOffPackages'
}