# Run by: @e[tag=salvage_animatronic,tag=salvage_shed]

data merge entity @s {Pose:{Head:[0.0f,0.0f,19.0f],LeftArm:[255.0f,0.0f,19.0f],RightArm:[255.0f,360.0f,341.0f],LeftLeg:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],Body:[13.0f,0.0f,0.0f]}}
execute at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.8
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 2