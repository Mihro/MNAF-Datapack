execute as @e[tag=salvage_root] at @s run tp @s ~ ~-3 ~
function mnaf:salvage/animatronic/summon/bonnie
execute as @e[tag=salvage_root] at @s run tp @s ~ ~3 ~
tag @e[tag=salvage_animatronic] add salvage_reveal

schedule function mnaf:salvage/chapters/night_1/start/next 30t