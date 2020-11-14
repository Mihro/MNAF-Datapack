# Run by: @e[tag=salvage_animatronic,tag=salvage_shed]

data merge entity @s {Pose:{Body:[12f,0f,0f],Head:[28f,21f,0f],LeftLeg:[300f,342f,0f],RightLeg:[313f,20f,0f],LeftArm:[292f,0f,0f]}}
execute at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.4
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 1