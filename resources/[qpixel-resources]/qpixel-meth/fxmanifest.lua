fx_version 'cerulean'

games { 'gta5' }

client_script "@divine-sync/client/lib.lua"
client_script "@divine-remotecalls/client/cl_ui.lua"

client_scripts {
  '@divine-remotecalls/client/cl_main.lua',
  '@divine-remotecalls/client/cl_animTask.lua',
  'client/cl_*.lua',
  "@PolyZone/client.lua",
}

server_scripts {
  '@divine-remotecalls/server/sv_main.lua',
  '@divine-remotecalls/server/sv_sql.lua',
  '@divine-remotecalls/server/sv_sql.js',
  'server/sv_*.lua',
  'server/sv_*.js',
  'build-server/sv_*.js',
}
