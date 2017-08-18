local autoplace = {
    type = "autoplace-control",
    name = "lead-ore",
    richness = true,
    order = "b-f"
}

local noiseLayer = {
    type = "noise-layer",
    name = "lead-ore"
}

local leadOre =   {
	autoplace =
    {
      control = "lead-ore",
	  coverage = 0.02,
	  peaks =
      {
        {
          noise_layer = "lead-ore",
          noise_octaves_difference = -1.5,
          noise_persistence = 0.3,
        },
      },
      richness_base = 500,
      richness_multiplier = 1500,
      richness_multiplier_distance_bonus = 30,
      sharpness = 1,
      starting_area_amount = 600,
      starting_area_size = 12
    },
	collision_box = {
		{	
			-0.1, 
			-0.1
		},
		{
			0.1, 
			0.1
		}
	},
	flags = {"placeable-neutral"},
    icon = "__suppersradiationmod__/graphics/icons/lead-ore.png",
	map_color = {r=0.11372549, g=0.11372549, b=0.243137255},
	minable =
    {
      hardness = 0.9,
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "lead-ore"
    },
    name = "lead-ore",
    order="a-b-f",
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	stage_counts = {5000, 3000, 1500, 800, 400, 100, 50, 10},
	stages =
    {
      sheet =
      {
        filename = "__suppersradiationmod__/graphics/entity/ores/lead-ore.png",
		frame_count = 8,
		height = 64,
        width = 64,
		 hr_version = {
          filename = "__suppersradiationmod__/graphics/entity/ores/hr-lead-ore.png",		  
          frame_count = 8,
          height = 128,
          width = 128,
          priority = "extra-high",
          scale = 0.5,
          variation_count = 8
        },
        priority = "extra-high",
        variation_count = 8
      }
    },
    type = "resource"
  }
  
local leadItem = {
    type = "item",
    name = "lead-ore",
    icon = "__suppersradiationmod__/graphics/icons/lead-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-resource",
    order = "a[lead-ore]",
    stack_size = 200
  }

data:extend(
{
  autoplace,
  noiseLayer,
  leadOre,
  leadItem,
})