fx_version 'cerulean'

games { 'gta5' }
shared_script {
  "@qpixel-lib/server/sv_rpc.lua",
  "@qpixel-lib/server/sv_sql.lua",
  "@qpixel-lib/server/sv_asyncExports.lua"
}

client_scripts {
  "@qpixel-sync/client/lib.lua",
  '@qpixel-lib/client/cl_interface.lua',
  "@qpixel-lib/client/cl_polyhooks.lua",
  "@qpixel-locales/client/lib.lua",
  "@qpixel-lib/client/cl_rpc.lua",
  'client/cl_*.lua',
  "@PolyZone/client.lua",
}

server_scripts {
  "@qpixel-lib/server/sv_rpc.lua",
  'server/sv_*.lua',
  'server/sv_*.js',
  'build-server/sv_*.js',
}
  