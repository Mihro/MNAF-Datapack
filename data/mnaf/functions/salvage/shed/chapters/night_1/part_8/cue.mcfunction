#say Night 1 > Part 8 > Cue

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_8/cue tick

# Test for something
execute at @e[tag=shed,tag=marker,tag=cue] if block ~ ~ ~ #buttons[powered=true] run advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_8/cue current
execute at @e[tag=shed,tag=marker,tag=cue] if block ~ ~ ~ #buttons[powered=true] run advancement grant @s only mnaf:salvage_shed/chapters/night_1/part_8/dialogue