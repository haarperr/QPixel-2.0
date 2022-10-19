fx_version "cerulean"
games { "gta5" }


client_scripts {
    "@qpixel-sync/client/lib.lua",
    '@qpixel-lib/client/cl_interface.lua',
    "@qpixel-lib/client/cl_polyhooks.lua",
    "@qpixel-locales/client/lib.lua",
    "@qpixel-lib/client/cl_rpc.lua",
    "client/*",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua", 
    "@qpixel-lib/server/sv_rpc.lua",
    "server/*",
}


shared_scripts {
    "shared/*",
} 
