-- RegisterUICallback("qpixel-ui:casino:updateEvent", function(data, cb)
--   data.type = "edit-event"
--   local success, result = RPC.execute("qpixel-casino:sportsbook:updateData", data)
--   cb({ data = result, meta = { ok = success, message = result }})
-- end)

-- RegisterUICallback("qpixel-ui:casino:sportsBookPlaceBet", function(data, cb)
--   data.type = "place-bet"
--   local success, result = RPC.execute("qpixel-casino:sportsbook:updateData", data)
--   cb({ data = result, meta = { ok = success, message = result }})
-- end)

-- RegisterUICallback("qpixel-ui:casinoGetSportsBookData", function(data, cb)
--   local success, result = RPC.execute("qpixel-casino:sportsbook:getData")
--   cb({ data = result, meta = { ok = success, message = result }})
-- end)

-- RegisterUICallback("qpixel-ui:casino:finishEvent", function(data, cb)
--   local success, result = RPC.execute("qpixel-casino:sportsbook:finishEvent", data)
--   cb({ data = result, meta = { ok = success, message = result }})
-- end)
