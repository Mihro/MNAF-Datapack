execute as @e[tag=salvage_animatronic] run data merge entity @s {Pose:{Head:[0f,0f,37f],LeftLeg:[270f,351f,0f],RightLeg:[266f,0f,0f],LeftArm:[297f,0f,0f],RightArm:[282f,0f,0f]}}
execute as @e[tag=salvage_animatronic] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.4
execute as @e[tag=salvage_animatronic] at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 2