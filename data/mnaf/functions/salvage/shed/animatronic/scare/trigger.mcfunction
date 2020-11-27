# Run by: animatronic
#say Trigger Scare
# Replace box to kick user out of GUI
execute at @e[tag=salvage,tag=shed,tag=marker,tag=item_input] run setblock ~ ~ ~ air
execute at @e[tag=salvage,tag=shed,tag=marker,tag=item_input] run setblock ~ ~ ~ dropper{CustomName:'"Salvage Box"'}

# Tag for scare
tag @s add scare
tag @s remove active
tag @e[tag=salvage,tag=shed,tag=marker,tag=root] add scare

# Player
function mnaf:salvage/shed/chapters/night_5/reset_schedules
stopsound @a[tag=run_salvage_shed]
execute as @a[tag=run_salvage_shed] at @s run playsound mnaf:salvage.night_5.springtrap_scream hostile @s
effect give @a[tag=run_salvage_shed] blindness 10 1 true