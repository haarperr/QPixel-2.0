





-- Manifest

fx_version 'cerulean'
games {'gta5'}

client_script "@desirerp-errorlog/client/cl_errorlog.lua"
client_script "@desirerp-lib/client/cl_ui.lua"
client_script "@desirerp-lib/client/cl_interface.lua"

client_script "@desirerp-lib/client/cl_polyhooks.lua"
--[[ dependencies {
  'desirerp-lib'
} ]]--

-- General
client_scripts {
  '@desirerp-lib/client/cl_rpc.lua',
  'client.lua',
  'client_trunk.lua',
  'evidence.lua',
  'client/beatmode.lua',
  'client/cl_*.lua'
}


server_scripts {
  "@desirerp-lib/server/sv_asyncExports.lua",
  '@desirerp-lib/server/sv_rpc.lua',
  '@desirerp-lib/server/sv_sql.lua',
  'server.lua',
  'server/beatmode.lua',
  'server/sv_vehicle.lua'
}

exports {
	'getIsInService',
	'getIsCop',
	'getIsCuffed',
} 
