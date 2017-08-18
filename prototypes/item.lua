local radiationArmor = {
    type = "armor",
    name = "radiation-armor",
    icon = "__supper__/graphics/icons/radiation-armor.png",
    flags = {"goes-to-main-inventory"},
    resistances =
    {
		{
			type = "physical",
			decrease = 6,
			percent = 30
		},
		{
			type = "explosion",
			decrease = 20,
			percent = 30
		},
		{
			type = "acid",
			decrease = 3,
			percent = 30
		},
		{
			type = "fire",
			decrease = 0,
			percent = 30
		},
		{
			type = "radiation",
			decrease = 0,
			percent = 100
		}
    },
    durability = 5000,
    subgroup = "armor",
    order = "f[radiation-armor]",
    stack_size = 1
}

local recipe = table.deepcopy(data.raw.recipe["heavy-armor"])
recipe.name = "radiation-armor"
recipe.enabled=true
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "radiation-armor"

local leadReactor = {
      flags = {
        "goes-to-quickbar"
      },
      icon = "__supper__/graphics/icons/lead-nuclear-reactor.png",
      name = "lead-reactor",
      order = "f[nuclear-energy]-b[reactor]",
      place_result = "s-lead-protected-reactor",
      stack_size = 50,
      subgroup = "energy",
      type = "item"
}

local leadReactorRecipe = table.deepcopy(data.raw.recipe["nuclear-reactor"])
leadReactorRecipe.name = "lead-reactor"
leadReactorRecipe.enabled = true
leadReactorRecipe.ingredients = {
        {
          "concrete",
          500
        },
        {
          "steel-plate",
          500
        },
        {
          "advanced-circuit",
          500
        },
        {
          "copper-plate",
          500
        },
		{
		  "lead-plate",
		  250
		}
}
leadReactorRecipe.result = "lead-reactor"

local leadPlate = {
      flags = {
        "goes-to-main-inventory"
      },
      icon = "__supper__/graphics/icons/lead-plate.png",
      name = "lead-plate",
      order = "l[lead-plate]",
      stack_size = 100,
      subgroup = "raw-material",
      type = "item"
}

local leadPlateRecipe = {
      category = "smelting",
      energy_required = 3.5,
      ingredients = {
        {
          "lead-ore",
          1
        }
      },
      name = "lead-plate",
      result = "lead-plate",
      type = "recipe"
}

local leadCentrifuge = {
	flags = {
      "goes-to-quickbar"
    },
    icon = "__supper__/graphics/icons/lead-centrifuge.png",
    name = "lead-centrifuge",
    order = "l[lead-centrifuge]",
    place_result = "s-lead-protected-centrifuge",
    stack_size = 50,
    subgroup = "production-machine",
    type = "item"
}

local leadCentrifugeRecipe = table.deepcopy(data.raw.recipe["centrifuge"])
leadCentrifugeRecipe.name = "lead-centrifuge"
leadCentrifugeRecipe.enabled = true
leadCentrifugeRecipe.ingredients = {
        {
          "concrete",
          100
        },
        {
          "steel-plate",
          50
        },
        {
          "advanced-circuit",
          100
        },
        {
          "iron-gear-wheel",
          100
        },
		{
		  "lead-plate",
		  50
		}
      }
leadCentrifugeRecipe.result = "lead-centrifuge"

data:extend({radiationArmor,recipe, leadReactor, leadReactorRecipe, leadPlate, leadPlateRecipe, leadCentrifuge, leadCentrifugeRecipe})