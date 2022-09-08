





fx_version 'cerulean'

games {
    'gta5',
    'rdr3'
}

client_scripts {
  '@qpixel-lib/client/cl_rpc.lua',
  '@qpixel-lib/client/cl_ui.lua',
  '@qpixel-lib/client/cl_interface.lua',
  '@qpixel-lib/client/cl_polyhooks.lua',
	'client/cl_*.lua'
}

shared_scripts {
  '@qpixel-lib/shared/sh_util.lua',
	"shared/*.lua"
}

server_scripts {
  '@qpixel-lib/server/sv_rpc.lua',
  '@qpixel-lib/server/sv_sql.lua',
	'server/*.lua'
}