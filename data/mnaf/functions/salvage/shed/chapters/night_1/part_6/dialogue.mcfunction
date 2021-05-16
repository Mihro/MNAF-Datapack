#say Night 1 > Part 6 > Dialogue

# Play sound
execute at @e[tag=shed,tag=marker,tag=root] run playsound mnaf:salvage.night.1.6 voice @a ~ ~ ~

# Schedule post-dialogue action
schedule function mnaf:salvage/shed/chapters/night_1/part_6/enable_action 10s