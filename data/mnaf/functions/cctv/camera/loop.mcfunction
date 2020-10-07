# Rotate cameras if cameras exist
execute if entity @e[tag=camera_view] run function mnaf:cctv/camera/rotate_cycle
execute as @e[tag=camera_view] at @s run tp @e[tag=camera_model,distance=..0.2] ^ ^ ^-0.2 ~ ~

# If camera placed
execute as @a[scores={PlaceCamera=1..}] run function mnaf:cctv/camera/place
