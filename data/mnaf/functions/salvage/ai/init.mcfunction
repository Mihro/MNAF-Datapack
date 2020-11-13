# Run by: Player, Server

# Reset animatronics
kill @e[tag=salvage_ai]

# Summon animatronics at starting positions
execute as @e[tag=salvage_ai_marker,scores={SalvageAIMarker=1}] at @s run function mnaf:salvage/ai/init/animatronic_spawns

# Set animatronic stage to 0
scoreboard players set @e[tag=salvage_ai] SalvageStage 1
scoreboard players set @e[tag=salvage_ai] SalvageTimer 0