# Loop checking of queued scare
execute if entity @e[tag=scare_queued] unless entity @a[tag=red_guard,tag=cctv_viewing] run function mnaf:salvage/ai/animatronic/stage/scare/start

# Tp animatronic towards player
execute as @e[tag=scare_source] at @s anchored feet facing entity @e[tag=scare_target,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.5 ~ ~
# Run finish func when animatronic reaches player
execute as @e[tag=scare_source] at @s if entity @e[tag=scare_target,distance=..1] run function mnaf:salvage/ai/animatronic/stage/scare/finish