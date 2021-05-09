say Night 1 > Part 1 > Action

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_1/action tick

# Test for something
execute if entity @s[x_rotation=60..90] run function mnaf:salvage/shed/chapters/night_1/part_1/next_part