tag @s add tasing
playsound mnaf:salvage.taser player @a[distance=..10] ~ ~ ~
execute at @e[tag=salvage,tag=shed,tag=marker,tag=button,tag=tase] run setblock ~ ~ ~ minecraft:warped_button[face=floor,facing=north]

execute as @e[tag=shed,tag=animatronic] run function mnaf:salvage/shed/animatronic/stage/reset

schedule function mnaf:salvage/shed/animatronic/tase/finish 3s