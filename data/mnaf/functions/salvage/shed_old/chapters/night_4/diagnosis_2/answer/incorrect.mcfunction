tag @a remove chapter_night_4_diagnosis_2_check

execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.incorrect voice @s
execute as @a[tag=run_salvage] at @s run effect give @s blindness 3 1 true
execute as @a[tag=run_salvage] at @s run effect give @s slowness 3 1 true
execute as @e[tag=salvage_animatronic] run function mnaf:salvage/shed/animatronic/increase_stage
execute at @e[tag=salvage_animatronic] run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~

schedule function mnaf:salvage/shed/chapters/night_4/diagnosis_2/answer/next 8t