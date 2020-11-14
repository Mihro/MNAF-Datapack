scoreboard players operation @e[tag=salvage_animatronic,tag=salvage_shed] SalvageTimer = ShedStageDuration SalvageTimer
scoreboard players set @e[tag=salvage_animatronic,tag=salvage_shed] SalvageStage 2
execute as @e[tag=salvage_animatronic,tag=salvage_shed] run function mnaf:salvage/shed/animatronic/display