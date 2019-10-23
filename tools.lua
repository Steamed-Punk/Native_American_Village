-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 Steamed_Punk steamedpunk.mt at gmail.com


-- TOMAHAWK

minetest.register_tool("nativeamericanvillage:tomahawk", {
	description = "Tomahawk",
	inventory_image = "indianvillage_tomahawk.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- TOMAHAWK_CRAFT

minetest.register_craft({
		output = "nativeamericanvillage:tomahawk",
		recipe = {
				{'default:steel_ingot', 'default:steel_ingot', ''},
				{'default:steel_ingot','default:stick', 'mobs:chicken_feather'},
				{'', 'default:stick', ''},
		}
})

-- TOMAHAWK_CRAFT_ITEM

minetest.register_craftitem(":nativeamericanvillage:tomahawk", {
	description = ("Tomahawk"),
	inventory_image = "indianvillage_tomahawk.png",
	stack_max = 16,
})


-- TOMAHAWK_THROWING

local tomahawk_sneak = false

throwing.register_bow("nativeamericanvillage:tomahawk", {
  itemcraft = "nativeamericanvillage:tomahawk",
  description = "Tomahawk",
  texture = "indianvillage_tomahawk.png",
  wield_image = "indianvillage_tomahawk.png",
  cooldown = 1,
  delay = 0.4,
  allow_shot = function(player, itemstack, index)
    tomahawk_sneak = player:get_player_control().sneak
    local ok = itemstack:get_name() ~= ""
    if tomahawk_sneak == true then
      return ok
    else
      return ok, ok and ItemStack(nil)
    end
  end,
	throw_itself = true,
	sound = "sling_throw",
  spawn_arrow_entity = function(pos, arrow, player)
    local obj = minetest.add_entity(pos, "nativeamericanvillage:tomahawk", tostring(tomahawk_sneak))
    obj:set_properties{
      textures = {arrow},
    }
    return obj
  end
})

minetest.register_entity("nativeamericanvillage:tomahawk", throwing.make_arrow_def{
  visual = "wielditem",
  visual_size = {x=0.2, y=0.2},
  collisionbox = {-0.2,-0.2,-0.2, 0.2,0.2,0.2},
  target = throwing.target_node,
  on_hit_sound = "",
  on_throw_sound = "",
  on_activate = function(self, staticdata)
          self.sneak = staticdata == "true"
  end,
  on_hit = function(self, pos, last_pos, node, object, hitter, data)
    if self.sneak then
      data.itemstack:set_count(1)
    end
    minetest.spawn_item(
      {
        x = math.floor(last_pos.x+0.5),
        y = math.floor(last_pos.y+0.5),
        z = math.floor(last_pos.z+0.5)
      },
      data.itemstack
    )
  end,
  on_throw = function(self, pos, thrower, itemstack, index, data)
      data.itemstack = itemstack
  end,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},

})

-- KNIFE

minetest.register_tool("nativeamericanvillage:stone_knife", {
	description = "Stone Knife",
	inventory_image = "nativeamericanvillage_knife.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- KNIFE_CRAFT

minetest.register_craft({
		output = "nativeamericanvillage:stone_knife",
		recipe = {
				{'', '', ''},
				{'','default:stone', ''},
				{'', '', 'default:stick'},
		}
})

-- KNIFE_CRAFT_ITEM

minetest.register_craftitem(":nativeamericanvillage:stone_knife", {
	description = ("Stone Knife"),
	inventory_image = "nativeamericanvillage_knife.png",
	stack_max = 16,
})
-- SCRAPER

minetest.register_tool("nativeamericanvillage:scraper", {
	description = "Scraper",
	inventory_image = "nativeamericanvillage_scraper.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
})

-- SCRAPER_CRAFT

minetest.register_craft({
		output = "nativeamericanvillage:scraper",
		recipe = {
				{'', '', ''},
				{'','nativeamericanvillage:horn', ''},
				{'', 'nativeamericanvillage:bone', ''},
		}
})

-- SCRAPER_CRAFT_ITEM

minetest.register_craftitem(":nativeamericanvillage:scraper", {
	description = ("Scraper"),
	inventory_image = "nativeamericanvillage_scraper.png",
	stack_max = 16,
})
