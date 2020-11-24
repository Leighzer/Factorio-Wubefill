for _,force in pairs(game.forces) do
    if force.recipes["wubefill"] then
        force.recipes["wubefill"].enabled = force.technologies["wubefill"].researched
    end
end