#say Night 1 > Part 9 > Dialogue

# Play sound
execute at @e[tag=shed,tag=marker,tag=root] run playsound mnaf:salvage.night.1.9 voice @a ~ ~ ~

# Schedule post-dialogue action
schedule function mnaf:salvage/shed/chapters/night_1/part_9/enable_action 9s