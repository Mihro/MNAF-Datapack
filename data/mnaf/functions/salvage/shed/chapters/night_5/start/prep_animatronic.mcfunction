# Tp down
execute at @s run tp @s ~ ~-3 ~

# Prep animatronic
execute at @s run function mnaf:salvage/common/animatronic/summon/springtrap
execute at @s run tag @e[tag=salvage,tag=animatronic,distance=..1] add shed
scoreboard players operation @e[tag=salvage,tag=shed,tag=animatronic] SalvageTimer = ShedStageDuration SalvageTimer

# Tp up
execute at @s run tp @s ~ ~3 ~

# Tag animatronic to reveal
tag @e[tag=salvage,tag=shed,tag=animatronic] add reveal