tag @a remove chapter_night_3_q1

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_3.2 voice @s
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_active
tag @e[tag=salvage_animatronic,tag=salvage_shed] add can_tase

schedule function mnaf:salvage/shed/chapters/night_3/question_1/question/1 11s

schedule function mnaf:salvage/shed/chapters/night_3/question_1/question/next 22s