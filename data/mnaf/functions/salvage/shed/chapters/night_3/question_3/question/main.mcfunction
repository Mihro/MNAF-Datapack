tag @a remove chapter_night_3_q3

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_3.4 voice @s
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_active

# 2s - blindness
schedule function mnaf:salvage/shed/chapters/night_3/question_3/question/1 40t
# 3s - movement
schedule function mnaf:salvage/shed/chapters/night_3/question_3/question/2 45t
# 4s - clear blindness
schedule function mnaf:salvage/shed/chapters/night_3/question_3/question/3 50t
# 5s - blindness for 2s
schedule function mnaf:salvage/shed/chapters/night_3/question_3/question/4 60t

schedule function mnaf:salvage/shed/chapters/night_3/question_3/question/next 16s