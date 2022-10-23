fx_version "cerulean"
games { "gta5" }

shared_script {
    "@qpixel-lib/shared/sh_util.lua",
    "shared/*",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "@qpixel-lib/server/sv_rpc.lua",
    "server/*",
}

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "@qpixel-lib/client/cl_interface.lua",
    "@qpixel-sync/client/lib.lua",
    "@qpixel-lib/client/cl_polyhooks.lua",
    "@qpixel-locales/client/lib.lua",
    "client/*",
}