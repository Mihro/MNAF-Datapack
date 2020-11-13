# Run by: @e[tag=salvage_animatronic,tag=salvage_shed]

data merge entity @s {Pose:{Head:[0f,357f,15f],LeftLeg:[279f,342f,0f],RightLeg:[313f,28f,0f],LeftArm:[292f,346f,0f],RightArm:[293f,0f,30f]}}
execute at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.4
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 2