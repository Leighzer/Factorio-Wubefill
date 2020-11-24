if not leighzermods then
  leighzermods = {}
end

if not leighzermods.leighzerwubefill then
  leighzermods.leighzerwubefill = {}
end


data:extend({
  {
    type = "item",
    name = "wubefill",    
    icon = "__base__/graphics/icons/water-wube.png",
    icon_size = 64,
    icon_scale= 0.5,
    subgroup = "terrain",
    order = "c[landfill]-a[wubefill]",
    stack_size = 200,
    place_as_tile =
    {
      result = "water-wube",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },
    {
    type = "recipe",
    name = "wubefill",
    energy_required = 1,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {type="fluid", name="water", amount=600},
      {type="item", name="electronic-circuit", amount=1}
    },
    result= "wubefill",
    result_count = 1,
  },
  {
    type = "technology",
    name = "wubefill",
    icon = "__base__/graphics/icons/water-wube.png",
    icon_size = 64,
    enabled = true,
    effects = {{type="unlock-recipe", recipe="wubefill"}},
    unit = {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}        
      },
      time = 30
    },
    prerequisites = {"automation-2", "landfill"},
    order = "a",
    localised_name = "Wubefill",
    localised_description = "Adds a way to place wube water on the map."
  }
  })