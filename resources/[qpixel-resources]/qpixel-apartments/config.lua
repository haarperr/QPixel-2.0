
MenuData = {
  apartment_check = {
    {
      title = "Apartment",
      description = "Forclose Apartment",
      key = "judge",
      children = {
          { title = "Yes", action = "qpixel-apartments:handler", key = { forclose = true} },
          { title = "No", action = "qpixel-apartments:handler", key = { forclose = false } },
      }
    }
  }
}
