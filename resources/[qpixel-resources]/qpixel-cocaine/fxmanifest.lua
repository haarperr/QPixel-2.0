fx_version 'cerulean'
games { 'rdr3', 'gta5' }

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "@qpixel-lib/client/cl_interface.lua",
    'client/*.lua'
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    'server/*.lua'
}
 