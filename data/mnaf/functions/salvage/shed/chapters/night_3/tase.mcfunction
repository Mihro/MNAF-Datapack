tag @e[tag=can_tase] remove can_tase

scoreboard players operation @e[tag=salvage_animatronic,tag=salvage_shed] SalvageTimer = StageDuration SalvageTimer
scoreboard players set @e[tag=salvage_animatronic,tag=salvage_shed] SalvageStage 0
execute as @e[tag=salvage_animatronic,tag=salvage_shed] run function mnaf:salvage/shed/animatronic/display

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.taser player @s