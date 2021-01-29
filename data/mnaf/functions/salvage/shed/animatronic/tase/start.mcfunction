tag @s add tasing
playsound mnaf:salvage.taser player @a[distance=..10] ~ ~ ~

execute as @e[tag=shed,tag=animatronic] run function mnaf:salvage/shed/animatronic/stage/reset

schedule function mnaf:salvage/shed/animatronic/tase/finish 3s