
local S = mobs.intllib


-- Original Cow Code by Krupnovpavel
-- Wild Buffalo Code, models and textures by Steamed_Punk

-- find and replace what mob is looking for (grass, wheat etc.)


mobs:register_mob("nativeamericanvillage:buffalo", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	reach = 3,
	damage = 6,
	hp_min = 10,
	hp_max = 45,
	armor = 150,
	collisionbox = {0.4,1.5,0.4, -0.4, 0 , -0.4},
	visual = "mesh",
	mesh = "wildbuffalo.b3d",
	textures = {
		{"wildbuffalo.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "indianvillage_mobs_buffalo",
	},
	walk_velocity = 1.5,
	run_velocity = 3.5,
	jump = true,
	jump_height = 6,
	knock_back = 0.2,
	pushable = false,
	view_range =35,
	attack_chance = 33,
	drops = {
		{name = "nativeamericanvillage:wildbuffalomeat", chance = 1, min = 1, max = 2},
		{name = "nativeamericanvillage:hide", chance = 1, min = 0, max = 2},
		{name = "nativeamericanvillage:fat", chance = 1, min = 0, max = 1},
		{name = "nativeamericanvillage:horn", chance = 1, min = 0, max = 1},
	},

	immune_to = {
	{"bows:bow_wood", 30},
	{"bows:bow_steel", 40},
	{"all"}
	},


	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 2,
	group_attack = true,
	animation = {
		speed_normal = 15,
		speed_run = 20,
		stand_start = 1,
		stand_end = 95,
		walk_start = 99,
		walk_end = 138,
		run_start = 99,
		run_end = 138,
		punch_start = 70,
		punch_end = 100,
	},
	replace_rate = 10,
	replace_what = {
		{"group:grass", "air", 0},
		{"default:dirt_with_grass", "default:dirt", -1}

},
})



mobs:spawn({
	name = "nativeamericanvillage:buffalo",
	nodes = {"default:dirt_with_grass", "default:dirt_with_dry_grass", "default:dirt_with_snow", "ethereal:green_dirt"},
	neighbors = {"default:dirt_with_grass", "default:dirt_with_dry_grass","default:dirt_with_snow", "ethereal:green_dirt"},
	min_light = 7,
	interval = 30,
	chance = 8000, --15000,
	active_object_count = 30,
	active_object_count_wider = 0,
	min_height = 0,
	max_height = 3,
	day_toggle = true,
})


mobs:register_egg("nativeamericanvillage:buffalo", S("Wild Buffalo"), "default_dirt.png", 1)


-- Buffalo Meat

minetest.register_craftitem(":nativeamericanvillage:wildbuffalomeat", {
	description = S("Wild Buffalo Meat"),
	inventory_image = "wildbuffalomeat.png",
	stack_max = 3,
	on_use = minetest.item_eat(4),
	groups = {food_meat = 1, flammable = 3},
})
minetest.register_craftitem(":nativeamericanvillage:wildbuffalomeat_cooked", {
	description = S("Buffalo Ribs"),
	inventory_image = "wildbuffalomeat_cooked.png",
	on_use = minetest.item_eat(8),
	groups = {food_meat = 1, flammable = 2},
})
minetest.register_craft({
	type = "cooking",
	output = "nativeamericanvillage:wildbuffalomeat_cooked",
	recipe = "nativeamericanvillage:wildbuffalomeat",
	cooktime = 5,
})

-- HIDE
minetest.register_craftitem(":nativeamericanvillage:hide", {
	description = S("Buffalo Hide"),
	inventory_image = "wildbuffalohide.png",
	stack_max = 3,
})

-- FAT
minetest.register_craftitem(":nativeamericanvillage:fat", {
	description = S("Buffalo Hide"),
	inventory_image = "wildbuffalofat.png",
	stack_max = 3,
})

-- HORN
minetest.register_craftitem(":nativeamericanvillage:horn", {
	description = S("Buffalo Horn"),
	inventory_image = "wildbuffalohorn.png",
	stack_max = 3,

})
