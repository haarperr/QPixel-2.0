function getIdentity(source)
	local user = exports['qpixel-base']:getModule("Player"):GetUser(source)
	local char = user:getCurrentCharacter()
	local callsign = "PLACE HOLDER"
	
	local result = MySQL.query.await([[
		SELECT * FROM jobs_whitelist WHERE cid = ? 
    ]],
    { char.id })

	if result ~= nil and result[1] ~= nil then
		callsign = result[1].callsign
	end

	local table = {
		firstname = char.first_name,
		lastname = char.last_name,	
		callsign = callsign
	}
	return table
end

