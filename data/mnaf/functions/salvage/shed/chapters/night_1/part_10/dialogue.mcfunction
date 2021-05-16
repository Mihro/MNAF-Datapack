#say Night 1 > Part 10 > Dialogue

# Play sound
execute at @e[tag=shed,tag=marker,tag=root] run playsound mnaf:salvage.night.1.10 voice @a ~ ~ ~

# Schedule post-dialogue action
schedule function mnaf:salvage/shed/chapters/night_1/part_10/enable_action 9s