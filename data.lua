-- add new wood recipes to the furnaces and chemical plant

-- create wood -> coal recipe
local wood_to_coal_recipe = {
    type = "recipe",
    name = "wood-to-coal",
    category = "smelting",
    energy_required = 3.5,
    ingredients = {{"wood", 2}},
    result = "coal",
    result_count = 1,
    enabled = true
}

-- get the furnaces
local stone_furnace = data.raw["furnace"]["stone-furnace"]
local steel_furnace = data.raw["furnace"]["steel-furnace"]
local electric_furnace = data.raw["furnace"]["electric-furnace"]

-- extend furnace recipes
data:extend({stone_furnace, wood_to_coal_recipe})
data:extend({steel_furnace, wood_to_coal_recipe})
data:extend({electric_furnace, wood_to_coal_recipe})

-- create wood -> landfill recipe
local wood_to_landfill_recipe = {
    type = "recipe",
    name = "wood-to-landfill",
    category = "chemistry",
    energy_required = 60,
    ingredients = {{"wood", 1000}, {type="fluid", name="water", amount=200}},
    result = "landfill",
    result_count = 25,
    enabled = true
}

-- get the chemical plant
local chemical_plant = data.raw["assembling-machine"]["chemical-plant"]

-- extend chemical plant recipes
data:extend({chemical_plant, wood_to_landfill_recipe})
