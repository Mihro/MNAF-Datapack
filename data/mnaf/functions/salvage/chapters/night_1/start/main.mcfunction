function mnaf:salvage/animatronic/summon/bonnie
execute as @e[tag=salvage_animatronic] at @e[tag=salvage_root] positioned ~ ~-3 ~ run tp @s ~ ~ ~
tag @e[tag=salvage_animatronic] add salvage_reveal

schedule function mnaf:salvage/chapters/night_1/start/next 30t