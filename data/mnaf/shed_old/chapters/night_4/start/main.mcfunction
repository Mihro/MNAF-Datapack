# Run by: as @e[tag=salvage_root] at @s

# Debug
#say night 4 > start > main

# Tp down
execute at @s run tp @s ~ ~-3 ~

# Prep animatronic
execute at @s run function mnaf:salvage/common/animatronic/summon/chica
execute at @s run tag @e[tag=salvage_animatronic,distance=..1] add salvage_shed
execute at @s run data modify entity @e[tag=salvage_animatronic,distance=..1,limit=1] Rotation[0] set value 180

# Tp up
execute at @s run tp @s ~ ~3 ~

# Tag animatronic to reveal
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_reveal

# Set duration for this night
scoreboard players set ShedStageDuration SalvageTimer 100

schedule function mnaf:salvage/shed/chapters/night_4/start/next 30t