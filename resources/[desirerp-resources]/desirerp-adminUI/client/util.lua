function getJsonDataFromAdminBans()
    local imDoneNow = RPC.execute("desirerp-adminUI:getRecentBans")
    return imDoneNow
  end
  
  exports('getJsonDataFromAdminBans',getJsonDataFromAdminBans)
  