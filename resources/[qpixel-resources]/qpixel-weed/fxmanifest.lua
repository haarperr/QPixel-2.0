fx_version "cerulean"
games { "gta5" }

shared_script {
    "@qpixel-lib/shared/sh_util.lua",
    "shared/*",
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    "@qpixel-lib/server/sv_sql.lua",
    "@qpixel-lib/server/sv_asyncExports.lua",
    "@oxmysql/lib/MySQL.lua",
    "server/*",
}

client_scripts {
    "@qpixel-sync/client/lib.lua",
    "@qpixel-lib/client/cl_interface.lua",
    "@qpixel-lib/client/cl_polyhooks.lua",
    "@qpixel-locales/client/lib.lua",
    "@qpixel-lib/client/cl_rpc.lua",
    "client/*",
}