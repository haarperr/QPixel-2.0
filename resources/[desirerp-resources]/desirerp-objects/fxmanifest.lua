fx_version "cerulean"

version '0.0.1'

game "gta5"

server_script '@desirerp-lib/server/sv_rpc.js'
server_script '@desirerp-lib/server/sv_sql.js'
server_script 'server/*.js'

client_script '@dpx/client/lib.js'
client_script '@desirerp-lib/client/cl_rpc.js'
client_script '@desirerp-lib/client/cl_poly.js'
client_script 'client/*.js'