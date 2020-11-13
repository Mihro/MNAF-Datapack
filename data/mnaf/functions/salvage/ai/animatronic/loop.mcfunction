# Run by: @e[tag=salvage_animatronic,tag=salvage_ai,tag=salvage_active]

# Make each animatronic loop their own timers if <0
function mnaf:salvage/ai/animatronic/loop_salvage_timer
scoreboard players remove @s SalvageTimer 1

# Check if animatronic is seen
execute if score @s SalvageTimer matches 0 run function mnaf:salvage/ai/animatronic/stage/check_is_seen

# Run scare loop if stage 5 animatronic exists
execute if entity @e[tag=salvage_ai,scores={SalvageStage=5}] run function mnaf:salvage/ai/animatronic/stage/scare/loop