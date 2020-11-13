execute if entity @e[tag=salvage_ai] run function mnaf:salvage/ai/loop

execute at @e[tag=salvage_root] if entity @p[distance=..10] run function mnaf:salvage/shed/loop