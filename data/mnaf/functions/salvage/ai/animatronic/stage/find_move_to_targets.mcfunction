# Run by: @e[tag=salvage_animatronic]

tag @s add changing_stage
scoreboard players operation target SalvageAIMarker = @s SalvageStage

execute if entity @s[tag=salvage_bonnie] as @e[tag=salvage_bonnie_marker] if score @s SalvageAIMarker = target SalvageAIMarker at @s as @e[tag=salvage_ai,tag=salvage_bonnie] run function mnaf:salvage/ai/animatronic/bonnie/move_to_marker
execute if entity @s[tag=salvage_freddy] as @e[tag=salvage_freddy_marker] if score @s SalvageAIMarker = target SalvageAIMarker at @s as @e[tag=salvage_ai,tag=salvage_freddy] run function mnaf:salvage/ai/animatronic/freddy/move_to_marker

scoreboard players reset target SalvageAIMarker
tag @s remove changing_stage