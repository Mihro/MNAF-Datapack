tag @s add run_salvage

#execute at @e[tag=salvage_seat] run setblock ~1 ~2 ~ glass
#execute at @e[tag=salvage_seat] run setblock ~-1 ~2 ~ glass
#execute at @e[tag=salvage_seat] run setblock ~ ~2 ~1 glass
#execute at @e[tag=salvage_seat] run setblock ~ ~2 ~-1 glass
#execute at @e[tag=salvage_seat] run setblock ~ ~3 ~ glass

execute if entity @e[tag=salvage_seat,scores={SalvageNight=1}] run function mnaf:salvage/chapters/night_1/start/main
#execute if entity @e[tag=salvage_seat,scores={SalvageNight=2}] run function mnaf:salvage/chapters/start/night/2
#execute if entity @e[tag=salvage_seat,scores={SalvageNight=3}] run function mnaf:salvage/chapters/start/night/3
#execute if entity @e[tag=salvage_seat,scores={SalvageNight=4}] run function mnaf:salvage/chapters/start/night/4
#execute if entity @e[tag=salvage_seat,scores={SalvageNight=5}] run function mnaf:salvage/chapters/start/night/5