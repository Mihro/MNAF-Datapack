# Run by: @e[tag=scare_source]

tag @s remove scare_source
tag @e[tag=scare_target,distance=..5] remove scare_target

execute at @p[tag=red_guard] anchored feet positioned ^ ^-0.2 ^1 facing entity @p[tag=red_guard] feet run tp @s ~ ~ ~ ~ ~

tag @s add scare_reset
schedule function mnaf:salvage/ai/animatronic/stage/scare/reset 2s