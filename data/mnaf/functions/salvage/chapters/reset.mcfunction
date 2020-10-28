kill @e[tag=salvage_animatronic]

tag @a remove run_salvage
tag @a remove pause_salvage

execute at @e[tag=salvage_seat] run setblock ~1 ~2 ~ air
execute at @e[tag=salvage_seat] run setblock ~-1 ~2 ~ air
execute at @e[tag=salvage_seat] run setblock ~ ~2 ~1 air
execute at @e[tag=salvage_seat] run setblock ~ ~2 ~-1 air
execute at @e[tag=salvage_seat] run setblock ~ ~3 ~ air
