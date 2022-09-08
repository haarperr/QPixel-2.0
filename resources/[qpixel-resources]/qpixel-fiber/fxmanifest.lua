








fx_version "cerulean"

games { "gta5" }

description "Sanyo Fiber"

version "0.1.0"

ui_page 'nui/index.html'

files {
    'nui/**/*',
}

server_scripts {
    "@qpixel-lib/server/sv_npx.js",
    "@qpixel-lib/server/sv_rpc.js",
    "@qpixel-lib/server/sv_sql.js",
    "@qpixel-lib/shared/sh_cacheable.js",
    "@qpixel-lib/server/sv_asyncExports.js",
    "server/*.js",
}

client_scripts {
    "@qpixel-lib/client/cl_rpc.js",
    "client/*.js",
}
