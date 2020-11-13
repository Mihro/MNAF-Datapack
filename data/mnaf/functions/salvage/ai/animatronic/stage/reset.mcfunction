# Run by: @e[tag=salvage_animatronic]

# Reset to first stage
scoreboard players set @s SalvageStage 1
scoreboard players set @s SalvageTimer 0
function mnaf:salvage/ai/animatronic/loop_salvage_timer

# Find targets to move to
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets