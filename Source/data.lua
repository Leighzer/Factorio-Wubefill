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
      result = "water-wube-ingame",
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

-- add our own water-wube tile (water-wube-ingame) that looks nicer when placed as large lakes
table.insert(water_tile_type_names, "water-wube-ingame") -- add water-wube-ingame to water tile type list so dirt to our water or concrete to our water etc look good
data:extend
{
  {
    type = "tile",
    name = "water-wube-ingame",
    icon = "__base__/graphics/icons/water-wube.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "x-b",
    collision_mask =
    {
      "water-tile",
      "item-layer",
      "resource-layer",
      "player-layer",
      "doodad-layer"
    },
    layer = 2,
    map_color={r=0, g=0, b=0},
    pollution_absorption_per_second = 0,
    variants =
    {
      main =
      {
        {
          picture = "__base__/graphics/terrain/water-wube/concrete-dummy.png",
          count = 1,
          size = 1
        },
        {
          picture = "__base__/graphics/terrain/water-wube/concrete-dummy.png",
          count = 1,
          size = 2,
          probability = 0.39
        },
        {
          picture = "__base__/graphics/terrain/water-wube/concrete-dummy.png",
          count = 1,
          size = 4,
          probability = 1
        }
      },
      empty_transitions = true,
      material_background =
      {
        picture = "__core__/graphics/wube-logo.png",
        count = 1,
        scale = 256 / 219    
      }
    }
  }
}