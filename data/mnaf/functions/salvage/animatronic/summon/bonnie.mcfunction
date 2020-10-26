summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage","salvage_animatronic","unset_salvage"]}
execute as @e[tag=unset_salvage] run function mnaf:salvage/animatronic/dress/bonnie
execute as @e[tag=unset_salvage] run function mnaf:salvage/animatronic/pose/stage_0
tag @e[tag=unset_salvage] remove unset_salvage