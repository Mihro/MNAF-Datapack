execute as @e[tag=salvage_animatronic] run data merge entity @s {Pose:{Head:[10.0f,0.0f,25.0f],LeftArm:[-80.0f,-10.0f,0.0f],RightArm:[-80.0f,10.0f,0.0f],LeftLeg:[20.0f,0.0f,-15.0f],RightLeg:[20.0f,0.0f,15.0f],Body:[40.0f,0.0f,0.0f]}}
execute as @e[tag=salvage_animatronic] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.8
execute as @e[tag=salvage_animatronic] at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 3

function mnaf:salvage/animatronic/pose/death