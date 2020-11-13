kill @e[tag=salvage_animatronic,tag=salvage_bonnie,distance=..3]
summon armor_stand ~ ~ ~ {Rotation:[0f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage_animatronic","salvage_ai","salvage_bonnie","unset_salvage"],CustomName:'"Salvage Bonnie"'}
execute at @e[tag=unset_salvage] rotated as @s run tp @e[tag=unset_salvage] ~ ~ ~ ~ 0
execute as @e[tag=unset_salvage] run function mnaf:salvage/common/animatronic/dress/bonnie
tag @e[tag=unset_salvage] remove unset_salvage