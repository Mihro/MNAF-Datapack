kill @e[tag=salvage_animatronic]

execute as @a[tag=run_salvage] run function mnaf:salvage/shed/setup/reset_salvage_tags

execute at @e[tag=salvage_seat] run setblock ~1 ~2 ~ air
execute at @e[tag=salvage_seat] run setblock ~-1 ~2 ~ air
execute at @e[tag=salvage_seat] run setblock ~ ~2 ~1 air
execute at @e[tag=salvage_seat] run setblock ~ ~2 ~-1 air
execute at @e[tag=salvage_seat] run setblock ~ ~3 ~ air
