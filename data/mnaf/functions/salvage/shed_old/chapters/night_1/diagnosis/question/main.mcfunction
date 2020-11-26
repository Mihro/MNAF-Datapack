tag @a remove chapter_night_1_diagnosis

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_1.9 voice @s
tag @e[tag=salvage_animatronic] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_1/diagnosis/question/next 9s