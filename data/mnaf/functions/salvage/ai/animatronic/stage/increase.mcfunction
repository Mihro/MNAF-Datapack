# Run by: as @e[tag=salvage,tag=ai,tag=animatronic,tag=active] at @s not in view

# Add one to score
scoreboard players add @s[scores={SalvageStage=..4}] SalvageStage 1

# Play vent sound when at stage 4
execute if score @s SalvageStage matches 4 at @s run playsound mnaf:salvage.ai.vent block @a[tag=red_guard] ~ ~ ~ 100.0

# Find targets for moving to next stage (every stage marker with the same stage score)
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets
