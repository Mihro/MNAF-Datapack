#say Night 1 > Part 2 > Action

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_2/action tick

# Test for something
execute if entity @s[x_rotation=-90..-60] run function mnaf:salvage/shed/chapters/night_1/part_2/next_part