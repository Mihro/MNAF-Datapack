kill @e[tag=salvage_animatronic,tag=salvage_foxy,distance=..3]
summon armor_stand ~ ~ ~ {Rotation:[180f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage_animatronic","salvage_foxy","unset_salvage"],CustomName:'"Salvage Foxy"'}
execute if entity @s[type=player] at @e[tag=unset_salvage] rotated as @s run tp @e[tag=unset_salvage] ~ ~ ~ ~180 0
execute as @e[tag=unset_salvage] run function mnaf:salvage/common/animatronic/dress/foxy
tag @e[tag=unset_salvage] remove unset_salvage