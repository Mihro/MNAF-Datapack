tag @e[tag=animatronic_kills_player] remove animatronic_kills_player

stopsound @s
execute as @s at @s run playsound mnaf:salvage.night_1.salvage_bonnie_scream hostile @s
execute as @e[tag=salvage_animatronic] run data modify entity @s ArmorItems[0] set value {}
execute as @e[tag=salvage_animatronic] run data modify entity @s ArmorItems[1] set value {}

tag @a[tag=run_salvage] add salvage_death
effect give @a[tag=salvage_death] blindness 2 1 true