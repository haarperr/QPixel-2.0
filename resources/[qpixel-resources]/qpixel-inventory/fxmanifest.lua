








fx_version 'cerulean'
games {'gta5'}


--[[ dependencies {
    "PolyZone"
} ]]--

client_script "@qpixel-errorlog/client/cl_errorlog.lua"
client_script "@PolyZone/client.lua"

ui_page 'nui/ui.html'

files {
  "nui/ui.html",
  "nui/pricedown.ttf",
  "nui/default.png",
  "nui/background.png",
  "nui/weight-hanging-solid.png",
  "nui/hand-holding-solid.png",
  "nui/search-solid.png",
  "nui/invbg.png",
  "nui/styles.css",
  "nui/scripts.js",
  "nui/debounce.min.js",
  "nui/loading.gif",
  "nui/loading.svg",
  "nui/icons/*"
}

shared_script 'shared_list.js'
shared_script '@qpixel-lib/shared/sh_cacheable.js'

client_scripts {
  "@qpixel-lib/client/cl_interface.lua",
  "@qpixel-sync/client/lib.lua",
  "@qpixel-lib/client/cl_ui.lua",
  "@qpixel-lib/client/cl_interface.lua",
  "@qpixel-lib/client/cl_rpc.js",
  "@qpixel-lib/client/cl_rpc.lua",
  'client.js',
  'functions.lua',
  'cl_vehicleweights.js',
  'cl_craftingspots.js',
  'cl_attach.lua',
}

server_scripts {
  '@qpixel-lib/server/sv_asyncExports.js',
  "@qpixel-lib/server/sv_npx.js",
  "@qpixel-lib/server/sv_rpc.js",
  "sv_config.js",
  "sv_clean.js",
  'server_degradation.js',
  'server_shops.js',
  'server.js',
  "sv_functions.js",
  "sv_functions.lua",
  'sv_craftingspots.js',
  'server.lua',
}

exports{
  'getFreeSpace',
  'hasEnoughOfItem',
  'getQuantity',
  'GetCurrentWeapons',
  'GetItemInfo',
  'GetInfoForFirstItemOfName',
  'getFullItemList',
}

-- dependency 'qpixel-lib'
