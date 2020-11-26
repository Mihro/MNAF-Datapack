tag @a remove chapter_night_2_q2

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_2.4 voice @s
tag @e[tag=salvage_animatronic] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_2/question_2/question/next 12s