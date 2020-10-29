execute at @s facing entity @e[tag=salvage_animatronic] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=salvage_animatronic] at @s facing entity @p feet run tp @s ^ ^ ^0.3 ~ ~
execute at @s if entity @e[tag=salvage_animatronic,distance=..0.15] run function mnaf:salvage/animatronic/death/end