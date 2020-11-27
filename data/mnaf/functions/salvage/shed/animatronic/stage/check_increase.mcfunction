# Run by: as @e[tag=salvage,tag=shed,tag=animatronic,tag=active,scores={SalvageTimer=0}] at @s
#say Stage > Check Increase

scoreboard players operation @s SalvageTimer = ShedStageDuration SalvageTimer

# Check if salvage animatronic is being viewed
tag @s add seen_check_target
tag @a[tag=run_salvage_shed] add seen_check_source
## Returns tag=is_in_view
function mnaf:common/viewing/check_is_seen

# is_in_view exclusions
## Player is looking in dropper
execute if score @p[tag=run_salvage_shed] InspectDropper matches 1.. run tag @s remove is_in_view
## Player x-rotation includes animatronic
execute as @a[tag=run_salvage_shed] unless entity @s[x_rotation=-42..42] run tag @e[tag=salvage,tag=shed,tag=animatronic,tag=is_in_view] remove is_in_view

# If not in view then increase stage
execute unless entity @s[tag=is_in_view] run function mnaf:salvage/shed/animatronic/stage/increase
tag @s[tag=is_in_view] remove is_in_view