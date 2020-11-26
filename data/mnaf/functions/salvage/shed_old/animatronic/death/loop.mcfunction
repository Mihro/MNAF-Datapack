# Run by player

execute at @e[tag=salvage_seat,sort=nearest,limit=1] positioned ~ ~0.5 ~ facing entity @e[tag=salvage_animatronic,tag=salvage_shed] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @s facing entity @p[tag=salvage_death] feet run tp @s ^ ^ ^0.3 ~ ~
execute at @s if entity @e[tag=salvage_animatronic,tag=salvage_shed,distance=..0.15] run function mnaf:salvage/shed/animatronic/death/end