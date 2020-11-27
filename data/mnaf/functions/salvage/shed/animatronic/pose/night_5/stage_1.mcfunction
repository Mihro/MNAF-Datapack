data merge entity @s {Pose:{Head:[0.0f,0.0f,15.0f],LeftArm:[-10.0f,0.0f,-10.0f],RightArm:[-10.0f,0.0f,10.0f],LeftLeg:[10.0f,0.0f,-10.0f],RightLeg:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f]}}
execute at @e[tag=salvage,tag=shed,tag=marker,tag=root] rotated as @s run tp @s ^ ^ ^0.2

# Debug
say Stage 1