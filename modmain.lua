Assets = {
   Asset("IMAGE", "images/inventoryimages/machinerytabicon.tex"),
   Asset("ATLAS", "images/inventoryimages/machinerytabicon.xml"),
   Asset("IMAGE", "images/inventoryimages/testgen.tex"),
   Asset("ATLAS", "images/inventoryimages/testgen.xml"),
}

PrefabFiles = 
{
"t1tech_prototyper",
"t1_drill",
}
modimport "custom_tech_tree.lua"
local Tech = require("techtree")

table.insert(Tech.BONUS_TECH, "MACHINERY")

local winonaRework = GetModConfgData("WINONA_REWORK")
if winonaRework = 1 then
-- Winona rework; WIP, will get redone.
GLOBAL.TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WINONA = {"sewing_tape", "sewing_tape", "sewing_tape", "sewing_tape", "sewing_tape", "sewing_tape"}

AddPrefabPostInit("winona",function(inst)
  if inst ~= nil and inst.components.sanity ~= nil then
  inst.components.sanity.only_magic_dapperness = true 
  end
end
)

AddPrefabPostInit("winona",function(inst)
inst:AddComponent("builder")
  inst.components.builder.machinery_bonus = 1
end)

AddPrefabPostInit("winona",function(inst)
 inst:RemoveTag("handyperson") 
 end)
 
GLOBAL.STRINGS.UI.CRAFTING.MACHINERY = "TODO"
end
--TODO: T1 Engineering unlocked.
--machinery Tab shenanigans
AddNewTechTree("MACHINERY",3) 
local machinery = AddRecipeTab("Machinery", 4.5, "images/inventoryimages/machinerytabicon.xml", "machinerytabicon.tex")

local machineryTweaks = GetModConfigData("VANILLA_MACHINERY_TEMP")
if machineryTweaks = 1 then
--Machinery tweaks, temp until I make brand new machines

GLOBAL.TUNING.WINONA_SPOTLIGHT_RADIUS = 4 
GLOBAL.TUNING.WINONA_SPOTLIGHT_MAX_RANGE = 40



        GLOBAL.TUNING.WINONA_CATAPULT_DAMAGE = 34.5
        GLOBAL.TUNING.WINONA_CATAPULT_MAX_RANGE = 20
        GLOBAL.TUNING.WINONA_CATAPULT_ATTACK_PERIOD = 0.1
        GLOBAL.TUNING.WINONA_CATAPULT_AOE_RADIUS = 1.25
end
local wallBuff = GetModConfigData("WALL_BUFF")
if wallBuff = 1 then
AddPrefabPostInit("wall_hay",function(inst)
inst:AddTag("companion")
end
)
AddPrefabPostInit("wall_wood",function(inst)
inst:AddTag("companion")
end
)
AddPrefabPostInit("wall_stone",function(inst)
inst:AddTag("companion")
end
)
AddPrefabPostInit("wall_moonrock",function(inst)
inst:AddTag("companion")
end
)
AddPrefabPostInit("wall_ruins",function(inst)
inst:AddTag("companion")
end
)
AddPrefabPostInit("fence",function(inst)
inst:AddTag("companion")
end
)
AddPrefabPostInit("fence_gate",function(inst)
inst:AddTag("companion")
end
)
end		
		
--Recipes --This is messy and unorganized, and I don't even know if I want to keep these at all. Should probably make a file for these.
AddRecipe("t1tech_prototyper", {Ingredient("boards", 2), Ingredient("goldnugget", 2), Ingredient("cutstone", 2)},
 GLOBAL.RECIPETABS.SCIENCE, GLOBAL.TECH.SCIENCE_ONE, "cartographydesk_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")

AddRecipe("winona_battery_low", {Ingredient("boards", 2), Ingredient("nitre", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "winona_battery_low_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 
AddRecipe("winona_catapult", {Ingredient("cutstone", 2), Ingredient("twigs", 3), Ingredient("sewing_tape", 2)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "winona_catapult_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")

AddRecipe("winona_spotlight", {Ingredient("goldnugget", 3), Ingredient("lightbulb", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "winona_spotlight_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 
AddRecipe("sewing_tape", {Ingredient("silk", 2), Ingredient("papyrus", 1)}, machinery, GLOBAL.TECH.MACHINERY_ONE, nil, nil, nil, 4)

AddRecipe("t1_drill", {Ingredient("goldnugget", 3), Ingredient("lightbulb", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "t1_drill_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 

--misc
GLOBAL.STRINGS.RECIPE_DESC.SEWING_TAPE = "Keeps things together."

