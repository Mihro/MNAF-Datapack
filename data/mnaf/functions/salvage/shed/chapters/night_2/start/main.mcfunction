execute as @e[tag=salvage_root] at @s run tp @s ~ ~-3 ~
function mnaf:salvage/animatronic/summon/freddy
execute at @e[tag=salvage_root] run tp @e[tag=salvage_animatronic] ~ ~ ~ ~ 0
execute as @e[tag=salvage_root] at @s run tp @s ~ ~3 ~
tag @e[tag=salvage_animatronic] add salvage_reveal

scoreboard players set StageDuration SalvageTimer 100

schedule function mnaf:salvage/chapters/night_2/start/next 30t