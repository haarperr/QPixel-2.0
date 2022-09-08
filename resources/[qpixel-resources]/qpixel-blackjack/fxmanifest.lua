








fx_version 'adamant'

game "gta5"

client_script "@qpixel-lib/client/cl_ui.lua"
client_script "@qpixel-lib/client/cl_interface.lua"
client_script "@qpixel-lib/client/cl_rpc.lua"

client_scripts {
  '@qpixel-lib/client/cl_rpc.lua',
  'client/cl_*.lua',
}

server_script "@qpixel-lib/server/sv_rpc.lua"
server_script "@qpixel-lib/server/sv_sql.lua"
server_scripts {
  'server/sv_*.lua',
  'server/sv_*.js',
}
