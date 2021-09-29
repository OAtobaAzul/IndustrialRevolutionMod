--Temp, I'll come up with something later.
local machinery = AddRecipeTab("Machinery", 4.5, "images/inventoryimages/machinerytabicon.xml", "machinerytabicon.tex")

AddRecipe("t1tech_prototyper", 
  {
    Ingredient("boards",2),
    Ingredient("papyrus", 1),
    Ingredient("cutstone",2)
  }, 
  GLOBAL.RECIPETABS.SCIENCE, 
  GLOBAL.TECH.SCIENCE_ONE, 
  "cartographydesk_placer", 
  nil, 
  nil, 
  nil, 
  nil, 
  "images/inventoryimages/t1tech_prototyper.xml",
  "t1tech_prototyper.tex" 
)

--temp, unsure if I'll make new prefabs

AddRecipe("winona_battery_low", 
  {
    Ingredient("boards",2),
    Ingredient("sewing_tape", 1),
    Ingredient("nitre",2)
  }, 
  machinery, 
  GLOBAL.TECH.MACHINERY_TWO, 
  "winona_battery_low_placer", 
  nil, 
  nil, 
  nil, 
  nil, 
  nil,
  nil
)

AddRecipe("winona_catapult",
  {
    Ingredient("cutstone", 2), 
    Ingredient("twigs", 3),  
    Ingredient("sewing_tape", 2)
  },
  machinery, 
  GLOBAL.TECH.MACHINERY_TWO, 
  "winona_catapult_placer", 
  TUNING.WINONA_ENGINEERING_SPACING, 
  nil, 
  nil, 
  nil, 
  nil, 
  nil
)

AddRecipe("winona_spotlight",
  {
    Ingredient("goldnugget", 3), 
    Ingredient("lightbulb", 2),   
    Ingredient("sewing_tape", 1)
  },
  machinery, 
  GLOBAL.TECH.MACHINERY_TWO, 
  "winona_spotlight_placer", 
  TUNING.WINONA_ENGINEERING_SPACING, 
  nil, 
  nil, 
  nil,
  nil, 
  nil
)
 
AddRecipe("sewing_tape", 
  {
    Ingredient("silk", 2), 
    Ingredient("papyrus", 1)
  },
  machinery, 
  GLOBAL.TECH.MACHINERY_THREE, 
  nil, 
  nil, 
  nil, 
  4
)

--[[AddRecipe("t1_drill", {Ingredient("goldnugget", 3), Ingredient("lightbulb", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "t1_drill_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 Need to fix it and make the recipe be right.
 ]]
