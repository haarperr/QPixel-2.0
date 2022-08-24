





fx_version 'bodacious'
game 'gta5'

client_script "@desirerp-errorlog/client/cl_errorlog.lua"

client_script "client.lua"
server_script "@desirerp-lib/server/sv_rpc.lua"
server_script "@desirerp-lib/server/sv_sql.lua"
server_script "server.lua"


exports {
	'getTax'
} 
