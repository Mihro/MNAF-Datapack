# Run by player

execute at @e[tag=salvage_seat,sort=nearest,limit=1] positioned ~ ~0.5 ~ facing entity @e[tag=salvage_animatronic] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=salvage_animatronic] at @s facing entity @p[tag=salvage_death] feet run tp @s ^ ^ ^0.3 ~ ~
execute at @s if entity @e[tag=salvage_animatronic,distance=..0.15] run function mnaf:salvage/shed/animatronic/death/end