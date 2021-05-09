say Night 1 > Part 3 > Action

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_3/action tick

# Test for something
execute at @e[tag=shed,tag=marker,tag=tase] if block ~ ~ ~ #buttons[powered=true] run function mnaf:salvage/shed/chapters/night_1/part_3/next_part