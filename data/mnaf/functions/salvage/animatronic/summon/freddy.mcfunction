kill @e[tag=salvage_animatronic]
execute at @e[tag=salvage_root] run summon armor_stand ~ ~ ~ {Rotation:[180f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage","salvage_animatronic","unset_salvage"]}
execute as @e[tag=unset_salvage] at @e[tag=salvage_root] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=unset_salvage] run function mnaf:salvage/animatronic/dress/freddy
execute as @e[tag=unset_salvage] run function mnaf:salvage/animatronic/pose/night_2/stage_0
tag @e[tag=unset_salvage] remove unset_salvage