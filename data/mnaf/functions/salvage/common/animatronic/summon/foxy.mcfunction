kill @e[tag=salvage,tag=animatronic,tag=foxy,distance=..3]
summon armor_stand ~ ~ ~ {Rotation:[180f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage","animatronic","foxy","unset"],CustomName:'"Foxy"'}
execute if entity @s[type=player] at @e[tag=salvage,tag=animatronic,tag=unset] rotated as @s run tp @e[tag=salvage,tag=animatronic,tag=unset] ~ ~ ~ ~180 0
execute as @e[tag=salvage,tag=animatronic,tag=unset] run function mnaf:salvage/common/animatronic/dress/foxy
tag @e[tag=salvage,tag=animatronic,tag=unset] remove unset