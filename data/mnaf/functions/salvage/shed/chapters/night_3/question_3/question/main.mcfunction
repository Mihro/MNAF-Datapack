tag @a remove chapter_night_3_q3

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_3.4 voice @s
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_3/question_3/question/next 12s