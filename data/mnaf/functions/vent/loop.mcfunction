# If vent placed
execute as @a[scores={PlaceVent=1..}] run function mnaf:vent/place

execute as @e[tag=vent] at @s run function mnaf:vent/state/check

scoreboard players set @a[scores={VentSneak=1..}] VentSneak 0
