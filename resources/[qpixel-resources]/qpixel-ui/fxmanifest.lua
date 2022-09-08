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

client_script "@qpixel-lib/client/cl_ui.lua"
client_script "@qpixel-lib/client/cl_interface.lua"


client_scripts {
	"client/*.lua",
	"@qpixel-lib/client/cl_polyhooks.lua",
	"@qpixel-lib/client/cl_ui.lua",
	'@qpixel-lib/client/cl_rpc.lua',
	'client/model/*.lua'
	
}
server_scripts {
	"server/*",
	"@qpixel-lib/server/sv_asyncExports.lua",
	'@qpixel-lib/server/sv_rpc.lua',
	'@qpixel-lib/server/sv_sql.lua',
}
