execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.incorrect voice @s
execute as @a[tag=run_salvage] at @s run effect give @s blindness 5 1 true
execute as @a[tag=run_salvage] at @s run effect give @s slowness 5 1 true

execute as @e[tag=salvage_animatronic,tag=salvage_shed] run function mnaf:salvage/shed/animatronic/increase_stage