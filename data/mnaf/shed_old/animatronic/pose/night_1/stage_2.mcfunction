execute as @e[tag=salvage_animatronic,tag=salvage_shed] run data merge entity @s {Pose:{Head:[0.0f,0.0f,25.0f],LeftArm:[-60.0f,-10.0f,0.0f],RightArm:[-60.0f,10.0f,0.0f],LeftLeg:[10.0f,0.0f,-10.0f],RightLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]}}
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.4
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 2