# Run by: as @e[tag=salvage,tag=shed,tag=animatronic,tag=active,scores={SalvageTimer=0},tag=!is_in_view] at @s
#say Stage > Increase

scoreboard players operation @s SalvageTimer = ShedStageDuration SalvageTimer
scoreboard players add @s SalvageStage 1
function mnaf:salvage/shed/animatronic/stage/display