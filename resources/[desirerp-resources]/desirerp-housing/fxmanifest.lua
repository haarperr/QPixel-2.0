fx_version "cerulean"
games { "gta5" }

client_script "@desirerp-lib/client/cl_interface.lua"

shared_scripts {
	"@desirerp-lib/shared/sh_util.lua",
	"shared/*",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"@desirerp-lib/server/sv_rpc.lua",
    "server/*",
}

client_scripts {
	'@desirerp-lib/client/cl_ui.lua',
	"@desirerp-lib/client/cl_rpc.lua",
	"client/*",
}