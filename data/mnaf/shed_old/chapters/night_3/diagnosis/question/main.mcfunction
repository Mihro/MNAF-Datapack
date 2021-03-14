tag @a remove chapter_night_3_diagnosis

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night.3.5 voice @s
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_active

schedule function mnaf:salvage/shed/chapters/night_3/diagnosis/question/next 11s