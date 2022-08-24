
MenuData = {
  apartment_check = {
    {
      title = "Apartment",
      description = "Forclose Apartment",
      key = "judge",
      children = {
          { title = "Yes", action = "desirerp-apartments:handler", key = { forclose = true} },
          { title = "No", action = "desirerp-apartments:handler", key = { forclose = false } },
      }
    }
  }
}
