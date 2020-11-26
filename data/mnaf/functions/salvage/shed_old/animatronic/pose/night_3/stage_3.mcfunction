# Run by: @e[tag=salvage_animatronic,tag=salvage_shed]

data merge entity @s {Pose:{Body:[13f,0f,0f],Head:[0f,0f,360f],LeftLeg:[279f,351f,0f],RightLeg:[313f,28f,0f],LeftArm:[263f,346f,0f],RightArm:[260f,0f,30f]}}
execute at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.8
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

# Debug
#say Stage 3

function mnaf:salvage/shed/animatronic/pose/death