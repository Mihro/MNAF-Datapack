tag @a remove chapter_night_2_q1

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night.2.2 voice @s
tag @e[tag=salvage_animatronic] add salvage_active
tag @e[tag=salvage_animatronic] add can_tase

schedule function mnaf:salvage/shed/chapters/night_2/question_1/question/1 11s

schedule function mnaf:salvage/shed/chapters/night_2/question_1/question/next 22s