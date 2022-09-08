local GeneralEntries, SubMenu = MenuEntries['general'], {}

local Buying = {
    {
        id = 'qpixel-fuel:pdmmenushit',
        title = "Set Commission",
        icon = "#drivinginstructor-drivingtest",
        event = "qpixel-fuel:pdmmenushit"
    },
    {
        id = 'qpixel-pdm:testdrivepdm',
        title = "Enable Test Drive",
        icon = "#drivinginstructor",
        event = "qpixel-pdm:testdrivepdm"
    },
    {
        id = 'qpixel-pdm:enableBuypdm',
        title = "Enable Purchase",
        icon = "#animation-money",
        event = "qpixel-pdm:enableBuypdm"
    },
}

Citizen.CreateThread(function()
    for index, data in ipairs(Buying) do
        SubMenu[index] = data.id
        MenuItems[data.id] = {data = data}
    end

    GeneralEntries[#GeneralEntries+1] = {
        data = {
            id = "Buying",
            icon = "#car",
            title = "PDM" 
        },
        subMenus = SubMenu,
        isEnabled = function(pEntity, pContext)
            return (isPDM)
        end,
    }
end)