tag @a remove chapter_night_2_end

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_2.5 voice @s
tag @e[tag=salvage_animatronic] remove salvage_active
tag @e[tag=salvage_animatronic] add salvage_retract

schedule function mnaf:salvage/chapters/night_2/end/next 7s