tag @e[tag=can_tase] remove can_tase

scoreboard players operation @e[tag=salvage_animatronic] SalvageTimer = StageDuration SalvageTimer
scoreboard players set @e[tag=salvage_animatronic] SalvageStage 0
execute as @e[tag=salvage_animatronic] run function mnaf:salvage/animatronic/display

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.taser player @s