fx_version 'bodacious'
games { 'rdr3', 'gta5' }

client_scripts {
    '@desirerp-lib/client/cl_interface.lua',
    'client/*.lua',
    '@desirerp-lib/client/cl_main.lua',
}


server_scripts {
    'server/*.lua',
    '@desirerp-lib/server/sv_main.lua',
}

exports {
    'GetVehicleTable',
    'SetVehicleMods',
}