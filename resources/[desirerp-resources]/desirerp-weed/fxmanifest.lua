








fx_version "cerulean"
games { "gta5" }

dependencies {
  "desirerp-lib",
  "PolyZone"
}

client_scripts {
  "@desirerp-sync/client/lib.lua",
  "@desirerp-lib/client/cl_interface.lua",
  "@desirerp-lib/client/cl_polyhooks.lua",
  "@desirerp-locales/client/lib.lua",
  "@desirerp-lib/client/cl_rpc.lua",
  "client/cl_*.lua",
  "@PolyZone/client.lua",
}

shared_script {
  "@desirerp-lib/shared/sh_util.lua",
  "shared/sh_*.*",
}

server_scripts {
  "@desirerp-lib/server/sv_rpc.lua",
  "@desirerp-lib/server/sv_sql.lua",
  "@desirerp-lib/server/sv_asyncExports.lua",
  "server/sv_*.lua",
  "server/sv_*.js",
}

ui_page "./ui/index.html"

files{
    "./ui/index.html",
    "./ui/main.css",
    "./ui/main.js",
}