summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1,tag:{CustomModelData:3}}],Tags:["salvage","unset_salvage"]}
execute as @e[tag=unset_salvage,distance=..1,sort=nearest,limit=1] at @s align xz run tp @s ~0.5 ~ ~0.5
execute as @e[tag=unset_salvage,distance=..1,sort=nearest,limit=1] at @s if entity @e[tag=salvage,tag=!unset_salvage,distance=..0.1] run kill @s
scoreboard players operation @e[tag=unset_salvage] SalvageTimer = ShedStageDuration SalvageTimer
tag @e[tag=unset_salvage] remove unset_salvage