fx_version "cerulean"
description "AdminUI"
author "loleris"
version '0.0.1'
game "gta5"

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@qpixel-lib/server/sv_sqlother.lua',
    '@qpixel-lib/server/sv_rpc.lua',
    '@qpixel-lib/server/sv_rpc.js',
    '@qpixel-lib/server/sv_sql.lua',
    '@qpixel-lib/server/sv_sql.js',
    'dist/server/*.js',
    'server/sv_*.lua'
}

client_scripts {
    '@qpixel-lib/client/cl_rpc.js',
    '@qpixel-lib/client/cl_rpc.lua',
    '@qpixel-lib/client/cl_poly.js',
    'dist/client/*.js',
    'client/cl_*.lua',
}