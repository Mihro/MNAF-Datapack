# Empty item input box
execute at @e[tag=shed,tag=marker,tag=item_input] run setblock ~ ~ ~ air replace
execute at @e[tag=shed,tag=marker,tag=item_input] run setblock ~ ~ ~ dropper replace

# Play correct sound
playsound mnaf:salvage.correct voice @a

# Revoke prev adv
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_9/action current

# Grant next adv
advancement grant @s only mnaf:salvage_shed/chapters/night_1/part_10/dialogue
