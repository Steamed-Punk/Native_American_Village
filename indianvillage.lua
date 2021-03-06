-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

  -- SLEEPEE TEEPEE

  beds.register_bed("nativeamericanvillage:tepee", {
    description = "Sleepee Tepee",
    drawtype = "mesh",
    mesh = "indianvillage_teepee01.obj",
    tiles = {"indianvillage_teepee01.png"},
    wield_image = "item_teepee01.png",
    inventory_image = "item_teepee01.png",
    buildable_to = false,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
    on_place = minetest.rotate_node,
    selectionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},
    collisionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},
    recipe = {
            {'', 'default:stick ', ''},
            {'default:stick','nativeamericanvillage:buffalotanned', 'default:stick '},
            {'default:stick', 'nativeamericanvillage:buffalotanned', 'default:stick '},
            },
  })
