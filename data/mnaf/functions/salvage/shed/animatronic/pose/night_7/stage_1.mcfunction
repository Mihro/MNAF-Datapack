data merge entity @s {Pose:{RightArm: [-5.0f, 0.0f, 5.0f], LeftLeg: [-5.0f, 16.0f, -5.0f], Head: [63.0f, 0.0f, 0.0f], LeftArm: [-5.0f, 0.0f, -5.0f], RightLeg: [-5.0f, -10.0f, 5.0f], Body: [10.0f, 0.0f, 0.0f]}}
execute at @e[tag=salvage,tag=shed,tag=marker,tag=root] rotated as @s run tp @s ^ ^ ^0.2

# Debug
#say Stage 1