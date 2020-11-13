# Run by: @e[tag=salvage_animatronic]

# Add one to score
scoreboard players add @s[scores={SalvageStage=..4}] SalvageStage 1

# Find targets for moving to next stage (every stage marker with the same stage score)
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets