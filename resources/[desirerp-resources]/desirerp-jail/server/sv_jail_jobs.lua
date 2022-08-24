-- Jail Jobs Reduce Time --

RegisterServerEvent('desirerp-jail:removeTime')
AddEventHandler("desirerp-jail:removeTime", function(pAmt)
    local src = source
    local user = exports["desirerp-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    exports.oxmysql:execute("SELECT * FROM `characters` WHERE id = @cid", {['cid'] = char.id}, function(data)
        local recent = tonumber(data[1].jail_time)
        exports.oxmysql:execute("UPDATE `characters` SET `jail_time` = @time WHERE `id` = @cid", {['time'] = recent - tonumber(pAmt), ['cid'] = char.id})
    end)
end)