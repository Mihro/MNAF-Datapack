#say Night 1 > Part 4 > Action

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_4/action tick

# Test for something
execute at @e[tag=shed,tag=marker,tag=cue] if block ~ ~ ~ #buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/part_4/next_part