# Run by: @e[tag=salvage_animatronic,tag=salvage_freddy]

# Move to marker
tp @s ~ ~ ~ ~ ~

# Copy marker's pose
data modify entity @s Pose set from entity @e[tag=salvage_foxy_marker,sort=nearest,limit=1] Pose

# Do marker-specific operations
execute if score @s SalvageStage matches 1 run function mnaf:salvage/ai/animatronic/foxy/move_to_marker/stage_1
execute if score @s SalvageStage matches 2 run function mnaf:salvage/ai/animatronic/foxy/move_to_marker/stage_2
execute if score @s SalvageStage matches 3 run function mnaf:salvage/ai/animatronic/foxy/move_to_marker/stage_3
execute if score @s SalvageStage matches 4 run function mnaf:salvage/ai/animatronic/foxy/move_to_marker/stage_4
execute if score @s SalvageStage matches 5 run function mnaf:salvage/ai/animatronic/foxy/move_to_marker/stage_5