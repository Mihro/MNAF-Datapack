# If vent placed
execute as @a[scores={PlaceVent=1..}] run function mnaf:vent/place

execute at @a as @e[tag=vent,tag=!vent_locked,distance=..5] at @s positioned ^ ^ ^0.45 run function mnaf:vent/state/check

scoreboard players set @a[scores={VentSneak=1..}] VentSneak 0
