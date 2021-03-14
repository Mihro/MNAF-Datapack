tag @a remove chapter_night_1_intro_3

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night.1.3 voice @s
execute as @e[tag=salvage_animatronic] run function mnaf:salvage/shed/animatronic/pose/stage_1

schedule function mnaf:salvage/shed/chapters/night_1/intro/3/next 10s