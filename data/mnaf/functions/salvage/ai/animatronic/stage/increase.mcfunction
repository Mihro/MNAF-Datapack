# Run by: as @e[tag=salvage,tag=ai,tag=animatronic,tag=active] at @s not in view

# Add one to score
scoreboard players add @s[scores={SalvageStage=..4}] SalvageStage 1

# Find targets for moving to next stage (every stage marker with the same stage score)
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets

execute as @a[tag=red_guard] at @s run playsound mnaf:salvage.ai.vent block @s ~ ~ ~ 100.0