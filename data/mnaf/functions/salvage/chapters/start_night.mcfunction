tag @s add run_salvage

#execute at @e[tag=salvage_seat] run setblock ~1 ~2 ~ barrier
#execute at @e[tag=salvage_seat] run setblock ~-1 ~2 ~ barrier
#execute at @e[tag=salvage_seat] run setblock ~ ~2 ~1 barrier
#execute at @e[tag=salvage_seat] run setblock ~ ~2 ~-1 barrier
#execute at @e[tag=salvage_seat] run setblock ~ ~3 ~ barrier

execute if entity @e[tag=salvage_root,scores={SalvageNight=1}] run function mnaf:salvage/chapters/night_1/start/main
execute if entity @e[tag=salvage_root,scores={SalvageNight=2}] run function mnaf:salvage/chapters/night_2/start/main