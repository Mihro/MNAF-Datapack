execute if entity @e[tag=salvage_seat,scores={SalvageNight=1}] run function mnaf:salvage/chapters/night_1/triggers




### Intro

## Audio file plays stating welcome to Salvage, gives them basic run down.
## Tells them to look at the floor.
#execute if entity @a[tag=chapter_intro_1] run function mnaf:salvage/chapters/intro/1/main
## [Player looking at floor] Tells them to look at the ceiling.
#execute if entity @a[tag=chapter_intro_2,x_rotation=80..90] run function mnaf:salvage/chapters/intro/2/main
## [Player looking at ceiling] Animatronic moves to aggressive phase. Tells press taze button.
#execute if entity @a[tag=chapter_intro_3,x_rotation=-90..-80] run function mnaf:salvage/chapters/intro/3/main
## [Player presses taze button] Other explanations. Tells press cue button.
#execute if entity @a[tag=chapter_intro_4] at @e[tag=salvage_button_taze] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/intro/4/main


#### Night 1
### Intro
#execute if entity @a[tag=chapter_night_1_intro_1] run function mnaf:salvage/chapters/night_1/intro/1/main
#execute if entity @a[tag=chapter_night_1_intro_2,x_rotation=80..90] run function mnaf:salvage/chapters/night_1/intro/2/main
#execute if entity @a[tag=chapter_night_1_intro_3,x_rotation=-90..-80] run function mnaf:salvage/chapters/night_1/intro/3/main
#execute if entity @a[tag=chapter_night_1_intro_4] at @e[tag=salvage_button_taze] run particle minecraft:composter ~ ~0.3 ~ 0.1 0.1 0.1 0 1
#execute if entity @a[tag=chapter_night_1_intro_4] at @e[tag=salvage_button_taze] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/intro/4/main
#execute if entity @a[tag=chapter_night_1_intro_5] at @e[tag=salvage_button_cue] run particle minecraft:composter ~ ~0.3 ~ 0.1 0.1 0.1 0 1
#execute if entity @a[tag=chapter_night_1_intro_5] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/intro/5/main
#execute if entity @a[tag=chapter_night_1_intro_6] run function mnaf:salvage/chapters/night_1/intro/6/main
### Question 1
## Player clicked cue button
#execute if entity @a[tag=chapter_night_1_q1] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/question_1/question/main
## Player clicked yes/no button
#execute if entity @a[tag=chapter_night_1_q1_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/question_1/answer/incorrect
#execute if entity @a[tag=chapter_night_1_q1_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/question_1/answer/correct
#
### Question 2
## Player clicked cue button
#execute if entity @a[tag=chapter_night_1_q2] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/question_2/question/main
## Player answers
#execute if entity @a[tag=chapter_night_1_q2_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/question_2/answer/incorrect
#execute if entity @a[tag=chapter_night_1_q2_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/night_1/question_2/answer/correct
#
### Diagnosis
#execute if entity @a[tag=chapter_night_1_diagnosis] run function mnaf:salvage/chapters/night_1/diagnosis/question/main
#execute if entity @a[tag=chapter_night_1_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:white_wool"}]} run function mnaf:salvage/chapters/night_1/diagnosis/answer/correct
#execute if entity @a[tag=chapter_night_1_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:white_wool"}]} run function mnaf:salvage/chapters/night_1/diagnosis/answer/incorrect
#
#
#### Night 2
### Question 1
## Player clicked cue button
#execute if entity @a[tag=chapter_freddy_q1] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/freddy/question_1/main
## Player answers
#execute if entity @a[tag=chapter_freddy_q1_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/freddy/question_1/correct
#execute if entity @a[tag=chapter_freddy_q1_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/freddy/question_1/incorrect
#
### Diagnosis
#execute if entity @a[tag=chapter_freddy_diagnosis] run function mnaf:salvage/chapters/freddy/diagnosis/main
#execute if entity @a[tag=chapter_freddy_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:orange_wool"}]} run function mnaf:salvage/chapters/freddy/diagnosis/correct
#execute if entity @a[tag=chapter_freddy_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:orange_wool"}]} run function mnaf:salvage/chapters/freddy/diagnosis/incorrect
#
### Question 2
## Player clicked cue button
#execute if entity @a[tag=chapter_freddy_q2] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/freddy/question_2/main
## Player answers
#execute if entity @a[tag=chapter_freddy_q2_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/freddy/question_2/incorrect
#execute if entity @a[tag=chapter_freddy_q2_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/freddy/question_2/correct
#
#
#### Night 3
### Question 1
## Player clicked cue button
#execute if entity @a[tag=chapter_foxy_q1] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_1/main
## Player answers
#execute if entity @a[tag=chapter_foxy_q1_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_1/correct
#execute if entity @a[tag=chapter_foxy_q1_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_1/incorrect
#
### Question 2
## Player clicked cue button
#execute if entity @a[tag=chapter_foxy_q2] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_2/main
## Player answers
#execute if entity @a[tag=chapter_foxy_q2_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_2/correct
#execute if entity @a[tag=chapter_foxy_q2_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_2/incorrect
#
### Question 3
## Player clicked cue button
#execute if entity @a[tag=chapter_foxy_q3] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_3/main
## Player answers
#execute if entity @a[tag=chapter_foxy_q3_check] at @e[tag=salvage_button_taze] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_3/correct
#execute if entity @a[tag=chapter_foxy_q3_check] at @e[tag=salvage_button_yes ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_3/incorrect
#execute if entity @a[tag=chapter_foxy_q3_check] at @e[tag=salvage_button_no  ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/foxy/question_3/incorrect
#
### Diagnosis
#execute if entity @a[tag=chapter_foxy_diagnosis] run function mnaf:salvage/chapters/foxy/diagnosis/main
#execute if entity @a[tag=chapter_foxy_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:magenta_wool"}]} run function mnaf:salvage/chapters/foxy/diagnosis/correct
#execute if entity @a[tag=chapter_foxy_diagnosis_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:magenta_wool"}]} run function mnaf:salvage/chapters/foxy/diagnosis/incorrect
#
#
## Night 4
## Diagnosis 1
#execute if entity @a[tag=chapter_chica_diagnosis_1] run function mnaf:salvage/chapters/chica/diagnosis_1/main
#execute if entity @a[tag=chapter_chica_diagnosis_1_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:light_blue_wool"}]} run function mnaf:salvage/chapters/chica/diagnosis_1/correct
#execute if entity @a[tag=chapter_chica_diagnosis_1_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:light_blue_wool"}]} run function mnaf:salvage/chapters/chica/diagnosis_1/incorrect
#
### Question 1
## Player clicked cue button
#execute if entity @a[tag=chapter_chica_q1] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/chica/question_1/main
## Player answers
#execute if entity @a[tag=chapter_chica_q1_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/chica/question_1/correct
#execute if entity @a[tag=chapter_chica_q1_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/chica/question_1/incorrect
#
## Diagnosis 2
#execute if entity @a[tag=chapter_chica_diagnosis_2] run function mnaf:salvage/chapters/chica/diagnosis_2/main
#execute if entity @a[tag=chapter_chica_diagnosis_2_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} if data block ~ ~ ~ {    Items:[{id:"minecraft:yellow_wool"}]} run function mnaf:salvage/chapters/chica/diagnosis_2/correct
#execute if entity @a[tag=chapter_chica_diagnosis_2_check] at @e[tag=salvage_item_input] unless data block ~ ~ ~ {Items:[]} unless data block ~ ~ ~ {Items:[{id:"minecraft:yellow_wool"}]} run function mnaf:salvage/chapters/chica/diagnosis_2/incorrect
#
### Question 2
## Player clicked cue button
#execute if entity @a[tag=chapter_chica_q2] at @e[tag=salvage_button_cue] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/chica/question_2/main
## Player answers
#execute if entity @a[tag=chapter_chica_q2_check] at @e[tag=salvage_button_yes] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/chica/question_2/incorrect
#execute if entity @a[tag=chapter_chica_q2_check] at @e[tag=salvage_button_no ] if block ~ ~ ~ #minecraft:buttons[powered=true] run function mnaf:salvage/chapters/chica/question_2/correct
#
#
# End
#execute if entity @a[tag=chapter_end] run function mnaf:salvage/events/end/main