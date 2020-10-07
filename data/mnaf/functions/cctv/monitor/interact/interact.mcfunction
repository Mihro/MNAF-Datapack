scoreboard players set @s VillagerInteract 0

tellraw @s "Interacted with monitor."

execute anchored eyes positioned ^ ^ ^0.5 run function mnaf:cctv/monitor/interact/interact_ray