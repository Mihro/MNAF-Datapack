#alias entity active @e[tag=salvage,tag=shed,tag=animatronic,tag=active]

# Decrease timer
scoreboard players remove @e[tag=salvage,tag=shed,tag=animatronic,tag=active] ShedTimer 1

# When 0 check for increase
execute as @e[tag=salvage,tag=shed,tag=animatronic,tag=active,scores={ShedTimer=0}] at @s run function mnaf:salvage/shed/animatronic/stage/check_increase