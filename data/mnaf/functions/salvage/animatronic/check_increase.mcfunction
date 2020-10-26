scoreboard players operation @s SalvageTimer = StageDuration SalvageTimer

# Gets value for shortest rotation of player view direction to Salvage
# Returns tag looking_at_salvage
function mnaf:salvage/animatronic/get_delta_rotation

# Looking in dropper
# If player not looking at salvage, reset InspectDropper
scoreboard players reset @a[tag=!looking_at_salvage] InspectDropper
scoreboard players reset @a[tag=looking_at_salvage,x_rotation=-90..35] InspectDropper
tag @a[scores={InspectDropper=1..}] remove looking_at_salvage

execute if entity @a[tag=!looking_at_salvage] run function mnaf:salvage/animatronic/increase_stage
tag @a[tag=looking_at_salvage] remove looking_at_salvage