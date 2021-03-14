tag @a remove chapter_night_4_end

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night.4.6 voice @s
tag @e[tag=salvage_animatronic] remove salvage_active
tag @e[tag=salvage_animatronic] add salvage_retract

schedule function mnaf:salvage/shed/chapters/night_4/end/next 6s