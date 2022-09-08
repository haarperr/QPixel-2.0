fx_version "cerulean"
games {"gta5"}

author 'loleris'
description "qpixel-carbombs"

version "1.0.0"

client_scripts {
    "@qpixel-lib/client/cl_rpc.lua",
    "client/*.lua"
}

server_scripts {
    "@qpixel-lib/server/sv_rpc.lua",
    "server/*.lua"
}