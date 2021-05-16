#say Night 1 > Part 9 > Action

# Revoke adv tick criteria to loop
advancement revoke @s only mnaf:salvage_shed/chapters/night_1/part_9/action tick

# Test for something
execute at @e[tag=shed,tag=marker,tag=item_input] if data block ~ ~ ~ {Items:[{id:"minecraft:white_concrete"}]} run function mnaf:salvage/shed/chapters/night_1/part_9/next_part