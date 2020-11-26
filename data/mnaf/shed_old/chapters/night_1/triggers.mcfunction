## Start
execute as @e[tag=salvage_reveal] at @s unless entity @e[tag=salvage_root,distance=..0.1] run tp @s ~ ~0.1 ~

## Intro
execute if entity @a[tag=chapter_night_1_intro_1] run function mnaf:salvage/shed/chapters/night_1/intro/1/main
execute if entity @a[tag=chapter_night_1_intro_2,x_rotation=80..90] run function mnaf:salvage/shed/chapters/night_1/intro/2/main
execute if entity @a[tag=chapter_night_1_intro_3,x_rotation=-90..-80] run function mnaf:salvage/shed/chapters/night_1/intro/3/main
execute if entity @a[tag=chapter_night_1_intro_4] at @e[tag=salvage_button_taze] run particle minecraft:composter ~ ~0.3 ~ 0.1 0.1 0.1 0 1
execute if entity @a[tag=chapter_night_1_intro_4] at @e[tag=salvage_button_taze] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/intro/4/main
execute if entity @a[tag=chapter_night_1_intro_5] at @e[tag=salvage_button_cue] run particle minecraft:composter ~ ~0.3 ~ 0.1 0.1 0.1 0 1
execute if entity @a[tag=chapter_night_1_intro_5] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/intro/5/main
execute if entity @a[tag=chapter_night_1_intro_6] run function mnaf:salvage/shed/chapters/night_1/intro/6/main
## Question 1
# Player clicked cue button
execute if entity @a[tag=chapter_night_1_q1] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/question_1/question/main
# Player clicked yes/no button
execute if entity @a[tag=chapter_night_1_q1_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/question_1/answer/incorrect/main
execute if entity @a[tag=chapter_night_1_q1_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/question_1/answer/correct

## Question 2
# Player clicked cue button
execute if entity @a[tag=chapter_night_1_q2] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/question_2/question/main
# Player answers
execute if entity @a[tag=chapter_night_1_q2_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/question_2/answer/incorrect/main
execute if entity @a[tag=chapter_night_1_q2_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/question_2/answer/correct

## Diagnosis
execute if entity @a[tag=chapter_night_1_diagnosis] run function mnaf:salvage/shed/chapters/night_1/diagnosis/question/main
execute if entity @a[tag=chapter_night_1_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:white_wool"}]} run function mnaf:salvage/shed/chapters/night_1/diagnosis/answer/correct
execute if entity @a[tag=chapter_night_1_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:white_wool"}]} run function mnaf:salvage/shed/chapters/night_1/diagnosis/answer/incorrect

## End
execute if entity @a[tag=chapter_night_1_end] run function mnaf:salvage/shed/chapters/night_1/end/main
execute as @e[tag=salvage_retract] at @s if entity @e[tag=salvage_root,distance=..3] run tp @s ~ ~-0.1 ~