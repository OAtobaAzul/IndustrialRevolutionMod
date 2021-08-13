--Temp, I'll come up with something later.
local machinery = AddRecipeTab("Machinery", 4.5, "images/inventoryimages/machinerytabicon.xml", "machinerytabicon.tex")

AddRecipe("t1tech_prototyper", {Ingredient("boards", 2), Ingredient("goldnugget", 2), Ingredient("cutstone", 2)},
 GLOBAL.RECIPETABS.SCIENCE, GLOBAL.TECH.SCIENCE_ONE, "cartographydesk_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")

AddRecipe("winona_battery_low", {Ingredient("boards", 2), Ingredient("nitre", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "winona_battery_low_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 
AddRecipe("winona_catapult", {Ingredient("cutstone", 2), Ingredient("twigs", 3), Ingredient("sewing_tape", 2)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "winona_catapult_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")

AddRecipe("winona_spotlight", {Ingredient("goldnugget", 3), Ingredient("lightbulb", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "winona_spotlight_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 
AddRecipe("sewing_tape", {Ingredient("silk", 2), Ingredient("papyrus", 1)}, machinery, GLOBAL.TECH.MACHINERY_ONE, nil, nil, nil, 4)

--[[AddRecipe("t1_drill", {Ingredient("goldnugget", 3), Ingredient("lightbulb", 2), Ingredient("sewing_tape", 1)},
 machinery, GLOBAL.TECH.MACHINERY_ONE, "t1_drill_placer", TUNING.WINONA_ENGINEERING_SPACING, nil, nil, nil, "images/inventoryimages/testgen.xml", "images/inventoryimages/testgen.tex")
 Need to fix it and make the recipe be right.
 ]]