# Run by: @e[tag=salvage_animatronic,tag=salvage_shed]

data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f],LeftArm:[-10.0f,0.0f,-10.0f],RightArm:[-10.0f,0.0f,10.0f],LeftLeg:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]}}
execute at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 0