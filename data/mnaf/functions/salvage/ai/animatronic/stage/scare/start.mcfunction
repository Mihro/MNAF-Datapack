# Run by: @e[tag=salvage_animatronic]

# Swap scare queued with scare running
tag @s remove scare_queued
tag @s add scare_running

# Remove pose
data remove entity @s Pose

# Tp in front of red guard
#execute at @p[tag=red_guard] anchored feet positioned ^ ^ ^4 rotated as @p[tag=red_guard] run tp @s ~ ~ ~ ~180 ~
execute at @p[tag=red_guard] rotated as @p[tag=red_guard] run tp @s ^ ^ ^4 ~180 ~

# Tag to initialize scare loop
tag @p[tag=red_guard] add scare_target
tag @s add scare_source