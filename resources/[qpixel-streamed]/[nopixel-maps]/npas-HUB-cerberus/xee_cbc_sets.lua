local interiors = {

    {
        ipl = 'cerberus_milo_',
        coords = { x = -129.64990000, y = -591.39400000, z = 28.72885000 },
        entitySets = {
            { name = 'set_cerberus_meeting_01', enable = true },
            { name = 'set_cerberus_meeting_02', enable = false },
        }
    },
}    
CreateThread(function()
    for _, interior in ipairs(interiors) do
        if not interior.ipl or not interior.coords or not interior.entitySets then
            print('Error while loading interior.')
            return
        end
        RequestIpl(interior.ipl)
        local interiorID = GetInteriorAtCoords(interior.coords.x, interior.coords.y, interior.coords.z)
        if IsValidInterior(interiorID) then
            for __, entitySet in ipairs(interior.entitySets) do
                if entitySet.enable then
                    EnableInteriorProp(interiorID, entitySet.name)
                    if entitySet.color then
                        SetInteriorPropColor(interiorID, entitySet.name, entitySet.color)
                    end
                else
                    DisableInteriorProp(interiorID, entitySet.name)
                end
            end
            RefreshInterior(interiorID)
        end
    end
    print("Interior data loaded.")
end)