execute as @e[tag=salvage_animatronic] run data merge entity @s {Pose:{Head:[0.0f,0.0f,25.0f],LeftArm:[-60.0f,-10.0f,0.0f],RightArm:[-60.0f,10.0f,0.0f],LeftLeg:[10.0f,0.0f,-10.0f],RightLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]}}
execute as @e[tag=salvage_animatronic] at @e[tag=salvage_root] rotated as @s run tp @s ^ ^ ^0.4
say Stage 2