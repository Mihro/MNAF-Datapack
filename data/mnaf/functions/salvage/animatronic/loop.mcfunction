scoreboard players remove @e[tag=salvage_active] SalvageTimer 1
execute as @e[tag=salvage_active,scores={SalvageTimer=..0}] run function mnaf:salvage/animatronic/check_increase

# Player looking in dropper
scoreboard players set @a[scores={InspectDropper=1..},x_rotation=-90..37] InspectDropper 0
scoreboard players set @a[scores={InspectDropper=1..},x_rotation=48..90 ] InspectDropper 0
effect give @a[tag=run_salvage,scores={InspectDropper=1..}] slowness 1 5 true
effect clear @a[scores={InspectDropper=0}] slowness

# Taze to reset
execute at @e[tag=salvage_button_taze] if block ~ ~ ~ #minecraft:buttons[powered=true] as @e[tag=salvage_animatronic] run function mnaf:salvage/animatronic/reset

# Death
execute if entity @e[tag=animatronic_kills_player] run function mnaf:salvage/animatronic/death/main
execute as @a[tag=salvage_death] at @s facing entity @e[tag=salvage_root] feet run tp @s ~ ~ ~ ~ ~
execute if entity @a[tag=salvage_death] as @e[tag=salvage_animatronic] at @s facing entity @p feet run tp @s ^ ^ ^1.3