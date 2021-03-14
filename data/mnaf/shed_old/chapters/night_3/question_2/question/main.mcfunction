tag @a remove chapter_night_3_q2

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night.3.3 voice @s
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_3/question_2/question/1 8s

schedule function mnaf:salvage/shed/chapters/night_3/question_2/question/next 22s