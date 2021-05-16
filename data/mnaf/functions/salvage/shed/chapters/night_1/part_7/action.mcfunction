#say Night 1 > Part 7 > Action

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_7/action tick

# Test for something
## If No pressed
execute at @e[tag=shed,tag=marker,tag=no ] if block ~ ~ ~ #buttons[powered=true] run advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_7/action current
execute at @e[tag=shed,tag=marker,tag=no ] if block ~ ~ ~ #buttons[powered=true] run advancement grant @s only mnaf:salvage_shed/chapters/night_1/part_7/answer_correct
## If Yes pressed
execute at @e[tag=shed,tag=marker,tag=yes] if block ~ ~ ~ #buttons[powered=true] run advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_7/action current
execute at @e[tag=shed,tag=marker,tag=yes] if block ~ ~ ~ #buttons[powered=true] run advancement grant @s only mnaf:salvage_shed/chapters/night_1/part_7/answer_incorrect