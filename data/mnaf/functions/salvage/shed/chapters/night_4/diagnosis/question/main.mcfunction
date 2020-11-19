tag @a remove chapter_night_4_diagnosis

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_4.3 voice @s
tag @e[tag=salvage_animatronic] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_4/diagnosis/question/next 10s