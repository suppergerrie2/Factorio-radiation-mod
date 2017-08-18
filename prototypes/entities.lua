local leadReactor = table.deepcopy(data.raw["reactor"]["nuclear-reactor"])

leadReactor.name="s-lead-protected-reactor"
leadReactor.minable = {
        mining_time = 1.5,
        result = "lead-reactor"
}

local leadCentrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
leadCentrifuge.name = "s-lead-protected-centrifuge"
leadCentrifuge.minable = {
        hardness = 0.2,
        mining_time = 0.5,
        result = "lead-centrifuge"
}      
--error(leadCentrifuge.animation.layers[1].hr_version.filename)
   

--leadReactor = {
      --[[burner = {
        burnt_inventory_size = 1,
        effectivity = 1,
        fuel_category = "nuclear",
        fuel_inventory_size = 1
      },
      collision_box = {
        {
          -2.2000000000000002,
          -2.2000000000000002
        },
        {
          2.2000000000000002,
          2.2000000000000002
        }
      },
      connection_patches = {
        east = {
          filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-east.png",
          height = 160,
          shift = {
            2.265625,
            0
          },
          width = 15
        },
        north = {
          filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-north.png",
          height = 15,
          shift = {
            0,
            -2.265625
          },
          width = 160
        },
        south = {
          filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-south.png",
          height = 15,
          shift = {
            0,
            2.265625
          },
          width = 160
        },
        west = {
          filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-west.png",
          height = 160,
          shift = {
            -2.265625,
            0
          },
          width = 15
        }
      },
      connection_patches_connected = {
        sheet = {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
          height = 32,
          hr_version = {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
            height = 64,
            scale = 0.5,
            variation_count = 12,
            width = 64
          },
          variation_count = 12,
          width = 32
        }
      },
      connection_patches_disconnected = {
        sheet = {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
          height = 32,
          hr_version = {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
            height = 64,
            scale = 0.5,
            variation_count = 12,
            width = 64,
            y = 64
          },
          variation_count = 12,
          width = 32,
          y = 32
        }
      },
      consumption = "40MW",
      corpse = "big-remnants",
      flags = {
        "placeable-neutral",
        "player-creation"
      },
      heat_buffer = {
        connections = {
          {
            direction = 0,
            position = {
              -2,
              -2
            }
          },
          {
            direction = 0,
            position = {
              0,
              -2
            }
          },
          {
            direction = 0,
            position = {
              2,
              -2
            }
          },
          {
            direction = 2,
            position = {
              2,
              -2
            }
          },
          {
            direction = 2,
            position = {
              2,
              0
            }
          },
          {
            direction = 2,
            position = {
              2,
              2
            }
          },
          {
            direction = 4,
            position = {
              2,
              2
            }
          },
          {
            direction = 4,
            position = {
              0,
              2
            }
          },
          {
            direction = 4,
            position = {
              -2,
              2
            }
          },
          {
            direction = 6,
            position = {
              -2,
              2
            }
          },
          {
            direction = 6,
            position = {
              -2,
              0
            }
          },
          {
            direction = 6,
            position = {
              -2,
              -2
            }
          }
        },
        max_temperature = 1000,
        max_transfer = "10GW",
        specific_heat = "10MJ"
      },
      icon = "__base__/graphics/icons/nuclear-reactor.png",
      light = {
        color = {
          b = 0,
          g = 1,
          r = 0
        },
        intensity = 0.6,
        shift = {
          0,
          0
        },
        size = 9.9000000000000004
      },
      lower_layer_picture = {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
        height = 160,
        hr_version = {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png",
          height = 320,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.1875
          },
          width = 320
        },
        shift = {
          -0.03125,
          -0.1875
        },
        width = 160
      },
      max_health = 500,--]]
    --  minable = {
     --   mining_time = 1.5,
     --   result = "lead-reactor"
     -- },
     -- name = "lead-reactor",
      --[[picture = {
        layers = {
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
            height = 160,
            hr_version = {
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
              height = 320,
              scale = 0.5,
              shift = {
                -0.03125,
                -0.1875
              },
              width = 320
            },
            shift = {
              -0.03125,
              -0.1875
            },
            width = 160
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
            height = 162,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
              height = 323,
              scale = 0.5,
              shift = {
                1.625,
                0
              },
              width = 525
            },
            shift = {
              1.625,
              0
            },
            width = 263
          }
        }
      },
      selection_box = {
        {
          -2.5,
          -2.5
        },
        {
          2.5,
          2.5
        }
      },
      type = "reactor",
      vehicle_impact_sound = {
        filename = "__base__/sound/car-metal-impact.ogg",
        volume = 0.65
      },
      working_light_picture = {
        blend_mode = "additive",
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
        height = 160,
        hr_version = {
          blend_mode = "additive",
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
          height = 320,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.1875
          },
          width = 320
        },
        shift = {
          -0.03125,
          -0.1875
        },
        width = 160
      }]]--
    --}
data:extend({leadReactor, leadCentrifuge})