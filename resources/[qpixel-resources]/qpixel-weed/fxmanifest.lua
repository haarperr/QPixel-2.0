








fx_version "cerulean"
games { "gta5" }

dependencies {
  "qpixel-lib",
  "PolyZone"
}

client_scripts {
  "@qpixel-sync/client/lib.lua",
  "@qpixel-lib/client/cl_interface.lua",
  "@qpixel-lib/client/cl_polyhooks.lua",
  "@qpixel-locales/client/lib.lua",
  "@qpixel-lib/client/cl_rpc.lua",
  "client/cl_*.lua",
  "@PolyZone/client.lua",
}

shared_script {
  "@qpixel-lib/shared/sh_util.lua",
  "shared/sh_*.*",
}

server_scripts {
  "@qpixel-lib/server/sv_rpc.lua",
  "@qpixel-lib/server/sv_sql.lua",
  "@qpixel-lib/server/sv_asyncExports.lua",
  "server/sv_*.lua",
  "server/sv_*.js",
}

ui_page "./ui/index.html"

files{
    "./ui/index.html",
    "./ui/main.css",
    "./ui/main.js",
}