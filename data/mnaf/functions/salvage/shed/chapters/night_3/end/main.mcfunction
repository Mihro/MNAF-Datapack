tag @a remove chapter_night_3_end

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_3.6 voice @s
tag @e[tag=salvage_animatronic,tag=salvage_shed] remove salvage_active
tag @e[tag=salvage_animatronic,tag=salvage_shed] add salvage_retract

schedule function mnaf:salvage/shed/chapters/night_3/end/1 6s
schedule function mnaf:salvage/shed/chapters/night_3/end/2 8s