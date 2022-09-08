fx_version "cerulean"
description "AdminUI"
author "loleris"
version '0.0.1'
game "gta5"

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@lol-lib/server/sv_sqlother.lua',
    '@lol-lib/server/sv_rpc.lua',
    '@lol-lib/server/sv_rpc.js',
    '@lol-lib/server/sv_sql.lua',
    '@lol-lib/server/sv_sql.js',
    'dist/server/*.js',
    'server/sv_*.lua'
}

client_scripts {
    '@lol-lib/client/cl_rpc.js',
    '@lol-lib/client/cl_rpc.lua',
    '@lol-lib/client/cl_poly.js',
    'dist/client/*.js',
    'client/cl_*.lua',
}