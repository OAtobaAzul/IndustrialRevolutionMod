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
      inst:RemoveTag("handyperson") 

    end
end
)


--machinery Tab shenanigans
AddNewTechTree("MACHINERY",3) 
GLOBAL.STRINGS.UI.CRAFTING.MACHINERY = "TODO"





--misc
GLOBAL.STRINGS.RECIPE_DESC.SEWING_TAPE = "Keeps things together."

