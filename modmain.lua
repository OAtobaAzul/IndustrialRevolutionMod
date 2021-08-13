Assets = 
{
   Asset("IMAGE", "images/inventoryimages/machinerytabicon.tex"),
   Asset("ATLAS", "images/inventoryimages/machinerytabicon.xml"),
   Asset("IMAGE", "images/inventoryimages/testgen.tex"),
   Asset("ATLAS", "images/inventoryimages/testgen.xml"),
}



PrefabFiles = 
{
  "t1tech_prototyper",
  --"t1_drill", Broken, i'll fix it later
}

modimport "scripts/recipes.lua"
modimport "custom_tech_tree.lua"
local Tech = require("techtree")




-- Winona rework; WIP, will get redone.
local winonaRework = GetModConfigData("WINONA_REWORK")
  if winonaRework == 1 then
    GLOBAL.TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WINONA = {"sewing_tape", "sewing_tape", "sewing_tape", "sewing_tape", "sewing_tape", "sewing_tape"}

    AddPrefabPostInit("winona",function(inst)
      if inst ~= nil and inst.components.sanity ~= nil then
      inst.components.sanity.only_magic_dapperness = true 
    end
end
)

  AddPrefabPostInit("winona",function(inst)
    inst:RemoveTag("handyperson") 
  end)
end




--machinery Tab shenanigans
AddNewTechTree("MACHINERY",3) 
GLOBAL.STRINGS.UI.CRAFTING.MACHINERY = "TODO"




--Machinery tweaks, temp until I make brand new machines
local machineryTweaks = GetModConfigData("VANILLA_MACHINERY_TEMP")

if machineryTweaks == 1 then

  GLOBAL.TUNING.WINONA_SPOTLIGHT_RADIUS = 4 
  GLOBAL.TUNING.WINONA_SPOTLIGHT_MAX_RANGE = 40
  GLOBAL.TUNING.WINONA_CATAPULT_DAMAGE = 34.5
  GLOBAL.TUNING.WINONA_CATAPULT_MAX_RANGE = 20
  GLOBAL.TUNING.WINONA_CATAPULT_ATTACK_PERIOD = 0.1
  GLOBAL.TUNING.WINONA_CATAPULT_AOE_RADIUS = 1.25
end


local wallBuff = GetModConfigData("WALL_BUFF")

if wallBuff == 1 then

    AddPrefabPostInit("wall_hay",function(inst)
    inst:AddTag("companion")
  end)
    AddPrefabPostInit("wall_wood",function(inst)
    inst:AddTag("companion")
  end)
    AddPrefabPostInit("wall_stone",function(inst)
    inst:AddTag("companion")
  end)
    AddPrefabPostInit("wall_moonrock",function(inst)
    inst:AddTag("companion")
  end)
    AddPrefabPostInit("wall_ruins",function(inst)
    inst:AddTag("companion")
  end)
    AddPrefabPostInit("fence",function(inst)
    inst:AddTag("companion")
  end)
    AddPrefabPostInit("fence_gate",function(inst)
    inst:AddTag("companion")
  end)

end		
		

--misc
GLOBAL.STRINGS.RECIPE_DESC.SEWING_TAPE = "Keeps things together."

