





resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_script "@qpixel-lib/client/cl_interface.lua"

server_scripts {
	'@qpixel-garage-lib/server/sv_rpc.lua',
    '@qpixel-garage-lib/server/sv_sql.lua',
	'server/sv_*.lua'
}

client_script "@qpixel-garage-lib/client/cl_ui.lua"
client_scripts {
	'@qpixel-errorlog/client/cl_errorlog.lua',
	'@qpixel-garage-lib/client/cl_rpc.lua',
	'client/cl_*.lua'
}

shared_scripts {
	'shared/sh_*.lua'
}

exports{
	'atShared'
}