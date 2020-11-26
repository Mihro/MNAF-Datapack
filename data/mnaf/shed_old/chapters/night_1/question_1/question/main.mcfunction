tag @a remove chapter_night_1_q1

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_1.7 voice @s
tag @e[tag=salvage_animatronic] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_1/question_1/question/next 13s