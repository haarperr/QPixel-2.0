





-- Manifest

fx_version 'cerulean'
games {'gta5'}

client_script "@qpixel-errorlog/client/cl_errorlog.lua"
client_script "@qpixel-lib/client/cl_ui.lua"
client_script "@qpixel-lib/client/cl_interface.lua"

client_script "@qpixel-lib/client/cl_polyhooks.lua"
--[[ dependencies {
  'qpixel-lib'
} ]]--

-- General
client_scripts {
  '@qpixel-lib/client/cl_rpc.lua',
  'client.lua',
  'client_trunk.lua',
  'evidence.lua',
  'client/beatmode.lua',
  'client/cl_*.lua'
}


server_scripts {
  "@qpixel-lib/server/sv_asyncExports.lua",
  '@qpixel-lib/server/sv_rpc.lua',
  '@qpixel-lib/server/sv_sql.lua',
  'server.lua',
  'server/beatmode.lua',
  'server/sv_vehicle.lua'
}

exports {
	'getIsInService',
	'getIsCop',
	'getIsCuffed',
} 
