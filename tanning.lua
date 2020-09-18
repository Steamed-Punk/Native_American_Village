-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- TANNING

-- RACK
minetest.register_node('nativeamericanvillage:tanner', {
    description = ("Tanning Rack"),
    drawtype = 'mesh',
    mesh = 'indianvillage_tanner.obj',
    tiles = {name='nativeamericanvillage_tanrack.png'},
    walkable = false,
    buildable_to = false,
    sunlight_propagates = true,
    groups = {dig_immediate=3, flammable=0},
    paramtype = 'light',
    collisiondetection = true,
    selection_box = {
        type = 'fixed',
        fixed = { -1, 1.5, -0.1, 0.9, -0.1, 0.1 },
    },
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string('infotext', ("Tanning Rack"));
    end,

    on_use = function(itemstack, user, pointed_thing)
  		-- Takes one item from the stack
  		itemstack:take_item()
  		return itemstack
    end,

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)

        if itemstack:get_name() == "nativeamericanvillage:hide" then
            minetest.set_node(pos, {name = 'nativeamericanvillage:tanner01'})

            if not minetest.setting_getbool("creative_mode") then
								itemstack:take_item()
								return itemstack
                end
             else

        if itemstack:get_name() == "nativeamericanvillage:buffalohalftanned" then
            minetest.set_node(pos, {name = 'nativeamericanvillage:tanner02'})

						if not minetest.setting_getbool("creative_mode") then
								itemstack:take_item()
								return itemstack
                end
            end
        end
		end,
})




minetest.register_node('nativeamericanvillage:tanner01', {
    description = ("Tanning Rack"),
    drawtype = 'mesh',
    mesh = 'indianvillage_tanner_01.obj',
    tiles = {name='nativeamericanvillage_tanrack_01.png'},
    walkable = false,
    buildable_to = false,
    sunlight_propagates = true,
    groups = {dig_immediate=3, flammable=0, not_in_creative_inventory = 1},
    paramtype = 'light',
    collisiondetection = true,
    selection_box = {
        type = 'fixed',
        fixed = { -1, 1.5, -0.1, 0.9, -0.1, 0.1 },
    },

    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string('infotext', ("Tanning Rack"));
    end,
    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
        if itemstack:get_name() == "nativeamericanvillage:scraper" then
            minetest.set_node(pos, {name = 'nativeamericanvillage:tanner02'})
        end
		end,
})

minetest.register_node('nativeamericanvillage:tanner02', {
    description = ("Tanning Rack"),
    drawtype = 'mesh',
    mesh = 'indianvillage_tanner_02.obj',
    tiles = {name='nativeamericanvillage_tanrack_02.png'},
    walkable = false,
    buildable_to = false,
    sunlight_propagates = true,
    groups = {dig_immediate=3, flammable=0, not_in_creative_inventory = 1},
    paramtype = 'light',
    collisiondetection = true,
    selection_box = {
        type = 'fixed',
        fixed = { -1, 1.5, -0.1, 0.9, -0.1, 0.1 },
    },

    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string('infotext', ("Tanning Rack"));
    end,
    on_rightclick = function(pos, node, player, itemstack, pointed_thing)

        if itemstack:get_name() == "nativeamericanvillage:scraper" then
            minetest.set_node(pos, {name = 'nativeamericanvillage:tanner03'})

             else

        if itemstack:get_name() == "nativeamericanvillage:knife" then
            minetest.set_node(pos, {name = 'nativeamericanvillage:tanner'})

            if not minetest.setting_getbool("creative_mode") then
                        local inv = player:get_inventory()
                        local left = inv:add_item("main", "nativeamericanvillage:buffalohalftanned")
                return itemstack
                end
            end
        end
    end,
    })


minetest.register_node('nativeamericanvillage:tanner03', {
    description = ("Tanning Rack"),
    drawtype = 'mesh',
    mesh = 'indianvillage_tanner_03.obj',
    tiles = {name='nativeamericanvillage_tanrack_03.png'},
    walkable = false,
    buildable_to = false,
    sunlight_propagates = true,
    groups = {dig_immediate=3, flammable=0, not_in_creative_inventory = 1},
    paramtype = 'light',
    collisiondetection = true,
    selection_box = {
        type = 'fixed',
        fixed = { -1, 1.5, -0.1, 0.9, -0.1, 0.1   },
    },

    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string('infotext', ("Tanning Rack"));
    end,

    after_destruct = function(pos, oldnode)
    if not minetest.setting_getbool("creative_mode") then
      local inv = player:get_inventory()
      local left = inv:add_item("main", "nativeamericanvillage:tanner")
    return itemstack
    end
    end,

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
    if itemstack:get_name() == "nativeamericanvillage:knife" then
        minetest.set_node(pos, {name = 'nativeamericanvillage:tanner'})

        if not minetest.setting_getbool("creative_mode") then

                    local inv = player:get_inventory()
                    local left = inv:add_item("main", "nativeamericanvillage:buffalotanned")
            return itemstack
           end
        end
		end,

})

-- Tanner_CRAFT

minetest.register_craft({
		output = "nativeamericanvillage:tanner",
		recipe = {
    {'default:aspen_tree', 'default:aspen_tree', 'default:aspen_tree'},
    {'default:aspen_tree','nativeamericanvillage:hide', 'default:aspen_tree'},
    {'default:aspen_tree', 'default:aspen_tree', 'default:aspen_tree'},
		}
})

-- Tanned HIDE
minetest.register_craftitem(":nativeamericanvillage:buffalohalftanned", {
	description = ("Tanned Buffalo Hide"),
	inventory_image = "wildbuffalohalftanned.png",
	stack_max = 3,
})

minetest.register_craftitem(":nativeamericanvillage:buffalotanned", {
	description = ("Buffalo Skin"),
	inventory_image = "wildbuffalotanned.png",
	stack_max = 3,
})
