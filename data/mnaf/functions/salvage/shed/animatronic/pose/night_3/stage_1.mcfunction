execute as @e[tag=salvage_animatronic,tag=salvage_shed] run data merge entity @s {Pose:{Body:[12f,0f,0f],Head:[28f,21f,0f],LeftLeg:[300f,342f,0f],RightLeg:[313f,20f,0f],LeftArm:[292f,0f,0f]}}
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.2
execute as @e[tag=salvage_animatronic,tag=salvage_shed] at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 1