tag @a remove chapter_night_1_q2

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_1.8 voice @s
tag @e[tag=salvage_animatronic] add salvage_active

schedule function mnaf:salvage/chapters/night_1/question_2/question/next 13s