





fx_version 'cerulean'
games { 'gta5' }

this_is_a_map "yes"


client_scripts {
  '@qpixel-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
}

shared_script {
  'sh_config.lua',
}

server_scripts {
  '@qpixel-lib/server/sv_rpc.lua',
  'server/sv_*.lua',
}

ui_page ('ui/index.html')

files {
  'ui/*'
}

