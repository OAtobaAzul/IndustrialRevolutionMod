Assets = 
{
   Asset("IMAGE", "images/inventoryimages/machinerytabicon.tex"),
   Asset("ATLAS", "images/inventoryimages/machinerytabicon.xml"),
   Asset("IMAGE", "images/inventoryimages/testgen.tex"),
   Asset("ATLAS", "images/inventoryimages/testgen.xml"),
   Asset("IMAGE", "images/inventoryimages/t1tech_prototyper.tex"),
   Asset("ATLAS", "images/inventoryimages/t1tech_prototyper.xml"),   
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


--Credit to Skully!
local function CustomSanityFn(inst, dt)
    local dapperhat = inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HEAD)
    local dapperbody = inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.BODY)
    local dapperhand = inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HAND)
    local dapperness = 0

    if dapperhat and dapperhat.components.equippable.dapperness and dapperhat.components.equippable.dapperness > 0 then
        dapperness = (dapperhat.components.equippable.dapperness * -1)
    end
    if dapperbody and dapperbody.components.equippable.dapperness and dapperbody.components.equippable.dapperness > 0 then
        dapperness =  dapperness - dapperbody.components.equippable.dapperness 
    end
    if dapperhand and dapperhand.components.equippable.dapperhand and dapperhand.components.equippable.dapperness > 0 then
        dapperness =  dapperness - dapperhand.components.equippable.dapperness 
    end
    return dapperness
end



    AddPrefabPostInit("winona",function(inst)
      if inst ~= nil and inst.components.sanity ~= nil then
        inst.components.sanity.only_magic_dapperness = true 
        inst:RemoveTag("handyperson") 
        
      if not GLOBAL.TheWorld.ismastersim then
        return inst
      end

      inst.components.sanity.custom_rate_fn = CustomSanityFn
      end
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
GLOBAL.STRINGS.RECIPE_DESC.T1TECH_PROTOTYPER = "Learn the universe of electricity!"
GLOBAL.STRINGS.NAMES.T1TECH_PROTOTYPER = "Engineering Table"
