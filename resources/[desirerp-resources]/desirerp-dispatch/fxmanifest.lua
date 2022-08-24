fx_version 'cerulean'
game 'gta5'

version '1.4'

client_scripts {
    '@desirerp-lib/client/cl_rpc.lua',
    'config.lua',
    'client/*.lua',
}

shared_scripts {
    "@desirerp-lib/shared/sh_util.lua",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "@desirerp-lib/server/sv_rpc.lua",
    "@desirerp-lib/server/sv_sql.lua",
    'server_config.lua',
    'server/*.lua',
}

ui_page 'html/index.html'

files {
    'html/*',
    'html/titles/*',
    'html/titles/3/*',
    'html/titles/4/*',
    'html/titles/5/*',
    'html/titles/6/*',
    'html/titles/7/*'
}

exports {
    'dispatchadd',
    'policedead',
    'callsign_command'
}