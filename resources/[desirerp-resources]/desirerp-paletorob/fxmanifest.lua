





fx_version 'bodacious'
games { 'rdr3', 'gta5' }

client_script "@desirerp-lib/client/cl_interface.lua"

client_scripts {
    '@desirerp-lib/client/cl_rpc.lua',
    "config.lua", 
    "client/cl_main.lua",
    "client/cl_*.lua"
}

server_scripts {
    '@desirerp-lib/server/sv_rpc.lua',
    "config.lua", 
    "server/sv_*.lua"
}