# Run by: object that wants to check if it's seen

# FOV check - return tag=is_in_fov
#tag @e[tag=is_in_fov] remove is_in_fov
#execute as @e[tag=seen_check_target] at @e[tag=seen_check_source] anchored feet facing entity @s feet positioned ^ ^ ^1 rotated as @e[tag=seen_check_source,sort=nearest,limit=1] positioned ^ ^ ^-1 if entity @e[tag=seen_check_source,distance=..0.9] run tag @s add is_in_fov
#execute as @s[tag=is_in_fov] run say Is in fov
#execute as @s[tag=!is_in_fov] run say Is NOT in fov

# LOS check - return tag=is_in_los
#tag @e[tag=is_in_los] remove is_in_los
#execute as @e[tag=seen_check_target] at @e[tag=seen_check_source] anchored eyes facing entity @s eyes positioned ^ ^ ^ run function mnaf:common/viewing/los_ray
#execute as @s[tag=is_in_los] run say Is in los
#execute as @s[tag=!is_in_los] run say Is NOT in los

# Tag if seen
tag @e[tag=is_in_view] remove is_in_view
#tag @s[tag=is_in_fov,tag=is_in_los] add is_in_view

execute as @e[tag=seen_check_target] at @e[tag=seen_check_source] anchored feet facing entity @s feet positioned ^ ^ ^1 rotated as @e[tag=seen_check_source,sort=nearest,limit=1] positioned ^ ^ ^-1 at @e[tag=seen_check_source,distance=..0.9,sort=nearest,limit=1] anchored eyes facing entity @s eyes positioned ^ ^ ^ run function mnaf:common/viewing/marching_view_ray

# Debug
#execute as @s[tag=is_in_view] run say Is in view
#execute as @s[tag=!is_in_view] run say Is NOT in view

# Reset tags
tag @e[tag=seen_check_source] remove seen_check_source
tag @e[tag=seen_check_target] remove seen_check_target
#tag @e[tag=is_in_fov] remove is_in_fov
#tag @e[tag=is_in_los] remove is_in_los
