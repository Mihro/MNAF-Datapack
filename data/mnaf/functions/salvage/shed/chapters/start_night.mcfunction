tag @s add run_salvage

execute if entity @e[tag=salvage_root,scores={SalvageNight=1}] run function mnaf:salvage/shed/chapters/night_1/start/main
execute if entity @e[tag=salvage_root,scores={SalvageNight=2}] run function mnaf:salvage/shed/chapters/night_2/start/main
execute if entity @e[tag=salvage_root,scores={SalvageNight=3}] run function mnaf:salvage/shed/chapters/night_3/start/main
#execute if entity @e[tag=salvage_root,scores={SalvageNight=4}] run function mnaf:salvage/shed/chapters/night_4/start/main
#execute if entity @e[tag=salvage_root,scores={SalvageNight=5}] run function mnaf:salvage/shed/chapters/night_5/start/main