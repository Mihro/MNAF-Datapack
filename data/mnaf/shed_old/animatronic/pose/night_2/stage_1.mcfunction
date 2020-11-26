execute as @e[tag=salvage_animatronic,tag=salvage_shed] run data merge entity @s {Pose:{Head:[24f,0f,0f],LeftLeg:[271f,337f,0f],RightLeg:[273f,8f,0f],LeftArm:[329f,0f,0f],RightArm:[314f,0f,0f]}}
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.2
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 1