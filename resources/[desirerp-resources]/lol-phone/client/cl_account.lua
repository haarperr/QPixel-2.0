

RegisterNUICallback('accountInformation', function()
    TriggerServerEvent("account:information:sv", exports['isPed']:isPed('cid'))
  end)

RegisterNetEvent("account:information:cl")
AddEventHandler("account:information:cl", function(licences, paycheck, phone)
  local responseObject = {
    cid = exports["isPed"]:isPed("cid"),
    paycheck = paycheck,
    cash = exports['isPed']:isPed('mycash'),
    bank = exports['isPed']:isPed('mybank'),
    myNumber = phone,
    job = exports["isPed"]:isPed("myjob"),
    secondaryJob = exports["isPed"]:isPed("secondaryjob"),
    licenses = licences, 
    pagerStatus = exports["isPed"]:isPed("pagerstatus"),
    chips = RPC.execute("desirerp-phone:getChips")
  }
  SendNUIMessage({openSection = "accountInformation", response = responseObject})
end)

RegisterCommand("openPhoneNopixel", function()
  exports["desirerp-ui"]:openApplication("phone")
end)
  

RegisterCommand("givemylicenses", function()
  TriggerServerEvent("desirerp-phone:checkForNonDocumentedLicenses", exports['isPed']:isPed("cid"))
end)