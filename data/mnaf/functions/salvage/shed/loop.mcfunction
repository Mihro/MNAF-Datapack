# Run by: as @e[tag=salvage,tag=marker,tag=root] when player inside shed

#advancement revoke @s only mnaf:salvage_shed/root shed

# Debug
#say shed loop

# Revealing and hiding animatronics
## Reveal
execute if score @e[tag=salvage,tag=shed,tag=root,limit=1] SalvageNight matches 1..6 as @e[tag=salvage,tag=shed,tag=animatronic,tag=reveal] at @s run tp @s ~ ~0.2 ~
execute if score @e[tag=salvage,tag=shed,tag=root,limit=1] SalvageNight matches 7 as @e[   tag=salvage,tag=shed,tag=animatronic,tag=reveal] at @s run tp @s ~ ~0.05 ~
## Hide
execute if score @e[tag=salvage,tag=shed,tag=root,limit=1] SalvageNight matches 1..6 as @e[tag=salvage,tag=shed,tag=animatronic,tag=hide] at @s run tp @s ~ ~-0.2 ~
execute if score @e[tag=salvage,tag=shed,tag=root,limit=1] SalvageNight matches 7 as @e[   tag=salvage,tag=shed,tag=animatronic,tag=hide] at @s run tp @s ~ ~-0.05 ~

# Toggle run_salvage_shed tag when sitting/standing
tag @p[tag=run_salvage_shed,tag= pause_salvage_shed,predicate= mnaf:salvage_shed/sitting_on_seat] remove pause_salvage_shed
tag @p[tag=run_salvage_shed,tag=!pause_salvage_shed,predicate=!mnaf:salvage_shed/sitting_on_seat] add pause_salvage_shed

# Run nightly triggers
execute if entity @a[tag=run_salvage_shed,tag=!pause_salvage_shed] if score @s SalvageNight matches 7 run function mnaf:salvage/shed/chapters/night_7/triggers

# Player looking in dropper
effect give @a[tag=run_salvage_shed,scores={InspectDropper=1..}] slowness 1 5 true
## Reset if looking away
execute as @a[tag=run_salvage_shed] at @s unless entity @s[x_rotation=31..46,y_rotation=-18.5..18.5] run scoreboard players reset @s InspectDropper
execute as @a[tag=run_salvage_shed] unless score @s InspectDropper matches 1.. run effect clear @s slowness

# Run animatronic
## Stages
execute if entity @a[tag=run_salvage_shed,tag=!pause_salvage_shed] run function mnaf:salvage/shed/animatronic/stage/loop
## Scare
execute as @e[tag=shed,tag=root,tag=scare] at @s run function mnaf:salvage/shed/animatronic/scare/loop