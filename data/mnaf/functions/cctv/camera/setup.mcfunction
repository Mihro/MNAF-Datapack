# Clear 'Place Camera' name from creeper
data modify entity @s CustomName set value ''

# Align to block and kill if camera already there
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if entity @e[tag=camera_view,tag=!unset_camera,distance=..0.1] run kill @s

# Tp camera up to ceiling. (max 7 blocks above)
execute at @s unless block ~ ~7 ~ air run tp @s ~ ~5.11 ~
execute at @s unless block ~ ~6 ~ air run tp @s ~ ~4.11 ~
execute at @s unless block ~ ~5 ~ air run tp @s ~ ~3.11 ~
execute at @s unless block ~ ~4 ~ air run tp @s ~ ~2.11 ~
execute at @s unless block ~ ~3 ~ air run tp @s ~ ~1.11 ~
execute at @s unless block ~ ~2 ~ air run tp @s ~ ~0.11 ~

# Tag camera to mark adjacent blocks at head height
execute at @s unless block ~1 ~1 ~ air run tag @s add camera_wall_east
execute at @s unless block ~-1 ~1 ~ air run tag @s add camera_wall_west
execute at @s unless block ~ ~1 ~1 air run tag @s add camera_wall_south
execute at @s unless block ~ ~1 ~-1 air run tag @s add camera_wall_north

# Rotate camera to starting orientation
execute at @s[tag=camera_wall_north] run tp @s ~ ~ ~ 270 ~
execute at @s[tag=camera_wall_east ] run tp @s ~ ~ ~ 0 ~
execute at @s[tag=camera_wall_south] run tp @s ~ ~ ~ 90 ~
execute at @s[tag=camera_wall_west ] run tp @s ~ ~ ~ 180 ~
execute at @s[tag=camera_wall_north,tag=camera_wall_west] run tp @s ~ ~ ~ 270 ~
# If between opposite walls, rotate to follow player's view direction
execute at @s[tag=camera_wall_north,tag=camera_wall_south] if entity @p[scores={PlaceCamera=1..},y_rotation=0..180] run tp @s ~ ~ ~ 90 ~
execute at @s[tag=camera_wall_north,tag=camera_wall_south] if entity @p[scores={PlaceCamera=1..},y_rotation=-180..0] run tp @s ~ ~ ~ 270 ~
execute at @s[tag=camera_wall_east,tag=camera_wall_west] if entity @p[scores={PlaceCamera=1..},y_rotation=-90..90] run tp @s ~ ~ ~ 0 ~
execute at @s[tag=camera_wall_east,tag=camera_wall_west] if entity @p[scores={PlaceCamera=1..},y_rotation=90..-90] run tp @s ~ ~ ~ 180 ~

# Tag camera with the rotation mode it needs to use, based on walls
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_360
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_180
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_180
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_180
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_180
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_90
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_90
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_90
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_90
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_0
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_down

# Rotate down camera to face downwards
execute at @s run tp @s[tag=camera_rotate_down] ~ ~ ~ 0 90

# Tag camera with rotation direction, based on rotation mode
tag @s[tag=camera_rotate_360] add camera_rotate_clockwise
tag @s[tag=camera_rotate_180] add camera_rotate_clockwise
tag @s[tag=camera_rotate_90] add camera_rotate_clockwise

# Initialize camera rotation value
scoreboard players set @s CameraRotation 0

# Auto-assign/increment CameraID
scoreboard players operation @s CameraID = NextID CameraID
scoreboard players add NextID CameraID 1

# Summon armor_stand with camera model
execute unless entity @e[tag=camera_model,distance=..0.1] at @s run summon armor_stand ^ ^ ^-0.2 {Marker:1,Invisible:1,NoBasePlate:1,Tags:["camera","camera_model"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1,Unbreakable:1,tag:{CustomModelData:2}}]}

# Camera setup done
tag @e[tag=unset_camera] remove unset_camera