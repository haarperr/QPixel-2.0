





games {"gta5"}

fx_version "cerulean"

description "Weapons"

dependencies  {
  "damage-events"
}

client_scripts {
  "@qpixel-errorlog/client/cl_errorlog.lua",
  "@qpixel-lib/client/cl_rpc.lua",
 -- "client.lua",
  "modes.lua",
  "melee.lua",
  "pickups.lua"
}

shared_script {
  "@qpixel-lib/shared/sh_util.lua"
}
server_scripts {
  "@qpixel-lib/server/sv_rpc.lua",
  "@qpixel-lib/server/sv_sql.lua",
  "server.lua"
}

server_export "getWeaponMetaData"
server_export "updateWeaponMetaData"

exports {
  "toName",
  "findModel"
}
