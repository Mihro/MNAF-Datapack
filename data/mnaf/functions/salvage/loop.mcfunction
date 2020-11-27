execute if entity @e[tag=salvage_ai] run function mnaf:salvage/ai/loop

execute as @a[tag=run_salvage_shed,predicate=!mnaf:salvage_shed/inside] run function mnaf:salvage/shed/reset
execute as @e[tag=salvage,tag=marker,tag=root] if entity @a[advancements={mnaf:salvage_shed/inside=true}] run function mnaf:salvage/shed/loop