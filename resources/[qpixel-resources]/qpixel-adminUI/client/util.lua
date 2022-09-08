function getJsonDataFromAdminBans()
    local imDoneNow = RPC.execute("qpixel-adminUI:getRecentBans")
    return imDoneNow
  end
  
  exports('getJsonDataFromAdminBans',getJsonDataFromAdminBans)
  