#say Night 1 > Part 4 > Dialogue

# Play sound
execute at @e[tag=shed,tag=marker,tag=root] run playsound mnaf:salvage.night.1.4 voice @a ~ ~ ~

# Schedule post-dialogue action
schedule function mnaf:salvage/shed/chapters/night_1/part_4/enable_action 27s