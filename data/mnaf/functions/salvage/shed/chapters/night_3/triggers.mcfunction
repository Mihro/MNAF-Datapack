## Start
execute as @e[tag=salvage_reveal] at @s unless entity @e[tag=salvage_root,distance=..0.1] run tp @s ~ ~0.1 ~

## Intro
execute if entity @a[tag=chapter_night_3_intro_1] run function mnaf:salvage/shed/chapters/night_3/intro/1/main

## Question 1
# Player clicked cue button
execute if entity @a[tag=chapter_night_3_q1] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_1/question/main
# Player clicked yes/no button
execute if entity @a[tag=chapter_night_3_q1_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_1/answer/correct
execute if entity @a[tag=chapter_night_3_q1_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_1/answer/incorrect/main

## Question 2
# Player clicked cue button
execute if entity @a[tag=chapter_night_3_q2] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_2/question/main
# Player answers
execute if entity @a[tag=chapter_night_3_q2_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_2/answer/incorrect/main
execute if entity @a[tag=chapter_night_3_q2_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_2/answer/correct

## Question 3
# Player clicked cue button
execute if entity @a[tag=chapter_night_3_q3] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_3/question/main
# Player answers
execute if entity @a[tag=chapter_night_3_q3_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_3/answer/incorrect/main
execute if entity @a[tag=chapter_night_3_q3_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/question_3/answer/correct

## Diagnosis
execute if entity @a[tag=chapter_night_3_diagnosis] run function mnaf:salvage/shed/chapters/night_3/diagnosis/question/main
execute if entity @a[tag=chapter_night_3_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:orange_wool"}]} run function mnaf:salvage/shed/chapters/night_3/diagnosis/answer/correct
execute if entity @a[tag=chapter_night_3_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:orange_wool"}]} run function mnaf:salvage/shed/chapters/night_3/diagnosis/answer/incorrect

## End
execute if entity @a[tag=chapter_night_3_end] run function mnaf:salvage/shed/chapters/night_3/end/main
execute as @e[tag=salvage_retract] at @s if entity @e[tag=salvage_root,distance=..3] run tp @s ~ ~-0.1 ~

# Taze button
execute if entity @e[tag=salvage_animatronic,tag=salvage_shed,tag=can_tase] at @e[tag=salvage_button_taze] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_3/tase