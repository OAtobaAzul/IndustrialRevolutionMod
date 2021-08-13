name = "Industrial Revolution"
version = "Pre-Release 0.1" 
description = [[
Industrial Revolution is a mod that adds Factorio-esque power management and automation, and reworks Winona to be based around that.
Version: Pre-Release 0.1
]]
author = "Atoba Azul, WormiestWood, SomeFuckinPeep and SageTacobutt"
forumthread = ""
api_version = 10
dst_compatible = true
all_clients_require_mod = true

icon_atlas = "preview.xml"
icon = "preview.tex"

server_filter_tags = {"tech","winona","automation"}
priority = 10
               
configuration_options = {
        {
        name = "VANILLA_MACHINERY_TEMP",
        label = "Vanilla machine buff",
        options =    {
                        {description = "Disabled", data = 0},
                        {description = "Enabled",   data = 1},
                    },
        default = 1,
        hover = "Choose wheter to buff Winona's default machines."
   
        },
        {

        name = "WALL_BUFF",
        label = "Wall buff",
        options =    {
                        {description = "Disabled", data = 0},
                        {description = "Enabled",   data = 1},
                     },
        default = 1,
        hover = "Choose wheter to buff Walls"
   
        },
        {
        name = "WINONA_REWORK", --todo: split it more.
        label = "Winona rework",
        options =    {
                        {description = "Disabled", data = 0},
                        {description = "Enabled",   data = 1},
                     },
        default = 1,
        hover = "Choose wheter to Enable the Winona rework"
   
        },
}
