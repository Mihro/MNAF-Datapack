# Run by: @e[tag=salvage_animatronic]

# Reset to first stage
scoreboard players set @s SalvageStage 1
scoreboard players operation @s SalvageTimer = AIStageDuration SalvageTimer

# Find targets to move to
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets