kill @e[tag=salvage_viewing_temp]
execute at @a run summon area_effect_cloud ~ ~ ~ {Duration:1200,Tags:["salvage","salvage_viewing_temp"]}
execute as @e[tag=salvage_viewing_temp] run tp @s ~ ~ ~ facing entity @e[tag=salvage,limit=1] feet
execute as @e[tag=salvage_viewing_temp] store result score @s SalDeltaViewRot run data get entity @s Rotation[0] 10
#execute as @e[tag=salvage_viewing_temp] run scoreboard players operation @s SalDeltaViewRot %= #3600 SalDeltaViewRot
