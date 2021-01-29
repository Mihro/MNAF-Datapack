# Run by: as @e[tag=shed,tag=root,tag=scare] at @s

execute as @e[tag=shed,tag=animatronic] at @e[tag=salvage,tag=shed,tag=seat] positioned ~ 5 ~ facing entity @s feet run tp @a[tag=run_salvage_shed] ~ ~ ~ ~ ~
execute as @e[tag=shed,tag=animatronic,tag=scare] at @s facing entity @p[tag=run_salvage_shed] feet run tp @s ^ ^ ^0.3 ~ ~
execute as @e[tag=shed,tag=animatronic,tag=scare] at @s if entity @a[tag=run_salvage_shed,distance=..1] run function mnaf:salvage/shed/animatronic/scare/finish