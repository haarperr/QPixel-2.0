fx_version 'cerulean'
games { 'gta5' }

author 'Xee smile'
description 'NoPixel Casino'
version '1.0.0'

this_is_a_map 'yes'

lua54 'yes'

client_script {
    'client_init.lua',
    'xee_casino_sets.lua',
  }

files{
    "peds.meta",
    'np_casino_timecycle.xml',
}

data_file "PED_METADATA_FILE" "peds.meta"
data_file 'TIMECYCLEMOD_FILE' 'np_casino_timecycle.xml'

escrow_ignore {
  'xee_casino_sets.lua'
}
dependency '/assetpacks'