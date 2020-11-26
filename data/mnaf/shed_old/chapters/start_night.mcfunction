# Run by: sitting player

tag @s add run_salvage

#execute if entity @e[tag=salvage_root,scores={SalvageNight=1}] run function mnaf:salvage/shed/chapters/night_1/start/main
#execute if entity @e[tag=salvage_root,scores={SalvageNight=2}] run function mnaf:salvage/shed/chapters/night_2/start/main
#execute as @e[tag=salvage_root] if score @s SalvageNight matches 3 at @s run function mnaf:salvage/shed/chapters/night_3/start/main
execute as @e[tag=salvage_root] if score @s SalvageNight matches 4 at @s run function mnaf:salvage/shed/chapters/night_4/start/main
#execute if entity @e[tag=salvage_root,scores={SalvageNight=5}] run function mnaf:salvage/shed/chapters/night_5/start/main