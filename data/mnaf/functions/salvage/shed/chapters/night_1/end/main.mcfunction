tag @a remove chapter_night_1_end

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_1.10 voice @s
tag @e[tag=salvage_animatronic] remove salvage_active
tag @e[tag=salvage_animatronic] add salvage_retract

schedule function mnaf:salvage/chapters/night_1/end/next 9s