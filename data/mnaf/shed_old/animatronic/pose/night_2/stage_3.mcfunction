execute as @e[tag=salvage_animatronic,tag=salvage_shed] run data merge entity @s {Pose:{Head:[17f,0f,343f],LeftLeg:[0f,360f,351f],RightLeg:[0f,0f,10f],LeftArm:[297f,0f,0f],RightArm:[282f,0f,0f]}}
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.8
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 3

function mnaf:salvage/shed/animatronic/pose/death