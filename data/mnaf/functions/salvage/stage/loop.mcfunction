scoreboard players remove @e[tag=salvage_active] SalvageTimer 1
execute as @e[tag=salvage_active,scores={SalvageTimer=0}] run function mnaf:salvage/stage/check_increase