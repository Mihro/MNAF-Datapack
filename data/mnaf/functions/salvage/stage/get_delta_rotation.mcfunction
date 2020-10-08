# scoreboard players set #1800 SalDeltaViewRot 1800
# scoreboard players set #3600 SalDeltaViewRot 3600
# scoreboard players set #-1 SalDeltaViewRot -1

# Get angle from player to Salvage
execute at @a run summon area_effect_cloud ~ ~ ~ {Duration:1200,Tags:["temp_point_to_salvage"]}
execute at @e[tag=temp_point_to_salvage] run tp @e[tag=temp_point_to_salvage] ~ ~ ~ facing entity @s feet
execute as @e[tag=temp_point_to_salvage] store result score @s SalDeltaViewRot run data get entity @s Rotation[0] 10

# Get player's view angle
execute as @a store result score @s SalDeltaViewRot run data get entity @s Rotation[0] 10

# Get value for shortest rotation of player view direction to Salvage
execute as @a at @s run scoreboard players operation @s SalDeltaViewRot -= @e[tag=temp_point_to_salvage,sort=nearest,limit=1] SalDeltaViewRot
scoreboard players operation @a SalDeltaViewRot += #1800 SalDeltaViewRot
scoreboard players operation @a SalDeltaViewRot %= #3600 SalDeltaViewRot
scoreboard players operation @a SalDeltaViewRot -= #1800 SalDeltaViewRot

# Kill temp
kill @e[tag=temp_point_to_salvage]

# Debug output
execute as @a if entity @s[scores={SalDeltaViewRot=-750..750}] run tellraw @s "Looking at Salvage"
execute as @a unless entity @s[scores={SalDeltaViewRot=-750..750}] run tellraw @s "NOT looking at Salvage"