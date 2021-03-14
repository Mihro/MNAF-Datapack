tag @a remove chapter_night_4_diagnosis_1

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night.4.2 voice @s
tag @e[tag=salvage_animatronic] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_4/diagnosis_1/question/next 9s