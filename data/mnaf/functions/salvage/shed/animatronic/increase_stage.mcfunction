scoreboard players operation @s SalvageTimer = StageDuration SalvageTimer
scoreboard players add @s SalvageStage 1
execute as @e[tag=salvage_animatronic,tag=salvage_shed] run function mnaf:salvage/shed/animatronic/display