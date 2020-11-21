# Run by: @e[tag=salvage_animatronic]

# Swap scare queued with scare running
tag @s remove scare_queued
tag @s add scare_running

# Remove pose
#data remove entity @s Pose

# Play scare sound
execute if entity @s[tag=salvage_bonnie] at @s run playsound mnaf:salvage.ai.bonnie.scream hostile @a[tag=player] ~ ~ ~
execute if entity @s[tag=salvage_freddy] at @s run playsound mnaf:salvage.ai.freddy.scream hostile @a[tag=player] ~ ~ ~
execute if entity @s[tag=salvage_foxy] at @s run playsound mnaf:salvage.ai.foxy.scream hostile @a[tag=player] ~ ~ ~

# Tp in front of red guard
execute at @p[tag=red_guard] anchored feet positioned ^ ^ ^4 facing entity @p[tag=red_guard] feet run tp @s ~ ~ ~ ~ ~
#execute at @p[tag=red_guard] anchored feet positioned ^ ^ ^4 rotated as @p[tag=red_guard] run tp @s ~ ~ ~ ~180 ~
#execute at @p[tag=red_guard] rotated as @p[tag=red_guard] run tp @s ^ ^ ^4 ~180 ~

# Tag to initialize scare loop
tag @p[tag=red_guard] add scare_target
tag @s add scare_source