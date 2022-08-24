








fx_version "cerulean"

games { "gta5" }

description "Sanyo Fiber"

version "0.1.0"

ui_page 'nui/index.html'

files {
    'nui/**/*',
}

server_scripts {
    "@desirerp-lib/server/sv_npx.js",
    "@desirerp-lib/server/sv_rpc.js",
    "@desirerp-lib/server/sv_sql.js",
    "@desirerp-lib/shared/sh_cacheable.js",
    "@desirerp-lib/server/sv_asyncExports.js",
    "server/*.js",
}

client_scripts {
    "@desirerp-lib/client/cl_rpc.js",
    "client/*.js",
}
