local interiors = {

    {
        ipl = 'xs_arena_interior_np_int',
        coords = { x = 5500.00000000, y = 6100.00000000, z = 550.00000000 },
        entitySets = {
            { name = 'set_npa', enable = true },
            { name = 'set_gokart', enable = false },
            { name = 'set_gokart_two', enable = false },
            { name = 'set_arena_dirt', enable = true },
            { name = 'set_arena_concrete', enable = false },
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