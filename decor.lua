-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 Steamed_Punk steamedpunk.mt at gmail.com

-- NODES

-- TOTEM

minetest.register_node("nativeamericanvillage:totem", {
  description = "Totem",
  drawtype = "mesh",
  mesh = "indianvillage_totem.obj",
  tiles = {"indianvillage_totem.png"},
  inventory_image = "indianvillage_totem.png",
  wield_image = "indianvillage_totem.png",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
  on_place = minetest.rotate_node,

})

  -- TOTEM_CRAFT

  minetest.register_craft({
      output = "nativeamericanvillage:totem",
      recipe = {
          {'group:tree', 'group:tree', 'group:tree'},
          {'group:dye','group:tree', 'group:dye'},
          {'', 'group:tree', ''},
      }
  })

  -- SKULL
  minetest.register_node("nativeamericanvillage:buffaloskull", {
    description = "Skull",
    drawtype = "mesh",
    mesh = "indianvillage_buffaloskull.obj",
    tiles = {"indianvillage__decor_buffaloskull.png"},
    inventory_image = "item_buffaloskull.png",
    wield_image = "item_buffaloskull.png",
    buildable_to = false,
    paramtype = "light",
    paramtype2 = "facedir",
    groups = {choppy=2, flammable=3},
    on_place = minetest.rotate_node,

  })
