function getJsonDataFromAdminBans()
    local imDoneNow = RPC.execute("lol-adminUI:getRecentBans")
    return imDoneNow
  end
  
  exports('getJsonDataFromAdminBans',getJsonDataFromAdminBans)
  