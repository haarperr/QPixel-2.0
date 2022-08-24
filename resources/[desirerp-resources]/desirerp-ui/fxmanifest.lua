fx_version 'cerulean'
games {'gta5'}

ui_page "html/index.html"

files({
	"html/*",
	"html/img/*",
	"html/css/*",
	"html/font/*",
	"html/js/*"
})

client_script "@desirerp-lib/client/cl_ui.lua"
client_script "@desirerp-lib/client/cl_interface.lua"


client_scripts {
	"client/*.lua",
	"@desirerp-lib/client/cl_polyhooks.lua",
	"@desirerp-lib/client/cl_ui.lua",
	'@desirerp-lib/client/cl_rpc.lua',
	'client/model/*.lua'
	
}
server_scripts {
	"server/*",
	"@desirerp-lib/server/sv_asyncExports.lua",
	'@desirerp-lib/server/sv_rpc.lua',
	'@desirerp-lib/server/sv_sql.lua',
}
