fx_version 'bodacious'
games { 'rdr3', 'gta5' }

client_scripts {
    '@qpixel-lib/client/cl_interface.lua',
    'client/*.lua',
    '@qpixel-lib/client/cl_main.lua',
}


server_scripts {
    'server/*.lua',
    '@qpixel-lib/server/sv_main.lua',
}

exports {
    'GetVehicleTable',
    'SetVehicleMods',
}