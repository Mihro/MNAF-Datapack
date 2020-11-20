# Run by: @e[tag=salvage_animatronic,tag=salvage_shed]

data merge entity @s {Pose:{Head:[46.0f,0.0f,0.0f],LeftArm:[242.0f,321.0f,0.0f],RightArm:[242.0f,72.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],Body:[26.0f,0.0f,0.0f]}}
execute at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.8
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 3

function mnaf:salvage/shed/animatronic/pose/death