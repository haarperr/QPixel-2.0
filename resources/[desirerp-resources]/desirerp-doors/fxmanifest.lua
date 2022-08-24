





fx_version 'cerulean'

games {
    'gta5',
    'rdr3'
}

client_scripts {
  '@desirerp-lib/client/cl_rpc.lua',
  '@desirerp-lib/client/cl_ui.lua',
  '@desirerp-lib/client/cl_interface.lua',
  '@desirerp-lib/client/cl_polyhooks.lua',
	'client/cl_*.lua'
}

shared_scripts {
  '@desirerp-lib/shared/sh_util.lua',
	"shared/*.lua"
}

server_scripts {
  '@desirerp-lib/server/sv_rpc.lua',
  '@desirerp-lib/server/sv_sql.lua',
	'server/*.lua'
}