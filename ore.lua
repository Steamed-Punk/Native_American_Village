-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 Steamed_Punk steamedpunk.mt at gmail.com


--TURQUOISE
--ORE
minetest.register_node("nativeamericanvillage:turquoise", {
	description = "Turquoise Ore",
	tiles = {"nativeamericanvillage_mineral_turquoise.png"},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = 'nativeamericanvillage:turquoise_lump',
	sounds = default.node_sound_stone_defaults(),
})

--BLOCK
minetest.register_craftitem(":nativeamericanvillage:turquoise_block", {
	description = ("Turquoise Block"),
	inventory_image = "nativeamericanvillage_turquoise_block.png",
	stack_max = 99,
})

minetest.register_craft({
		output = "nativeamericanvillage:turquoise_block",
		recipe = {
				{'nativeamericanvillage:turquoise_lump', 'nativeamericanvillage:turquoise_lump', 'nativeamericanvillage:turquoise_lump'},
				{'nativeamericanvillage:turquoise_lump', 'nativeamericanvillage:turquoise_lump', 'nativeamericanvillage:turquoise_lump'},
				{'nativeamericanvillage:turquoise_lump', 'nativeamericanvillage:turquoise_lump', 'nativeamericanvillage:turquoise_lump'},
		}
})

--LUMP
minetest.register_craftitem(":nativeamericanvillage:turquoise_lump", {
	description = ("Turquoise Lump"),
	inventory_image = "nativeamericanvillage_turquoise_lump.png",
	stack_max = 99,
})



minetest.register_ore({
	ore_type       = "scatter",
	ore            = "nativeamericanvillage:turquoise",
	wherein        = "default:stone",
	clust_scarcity = 2 * 2 * 2,
	clust_num_ores = 2,
	clust_size     = 2,
	y_max          = 30,
	y_min          = -100,
})
