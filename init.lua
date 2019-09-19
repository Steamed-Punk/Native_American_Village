-- Native American Village by Steamed_Punk (CC BY-NC 3.0)
local path = minetest.get_modpath("nativeamericanvillage")

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- Native American Village

dofile(path .. "/indianvillage.lua") -- Steamed_Punk
dofile(path .. "/decor.lua") -- Steamed_Punk
dofile(path .. "/bbcanoe.lua") -- Steamed_Punk
dofile(path .. "/campfire.lua") -- Steamed_Punk
dofile(path .. "/buffalo.lua") -- Steamed_Punk
print (S("[MOD] Native American Village loaded"))
