tag @e[tag=camera_model,sort=nearest,limit=1] add remove_camera
execute at @e[tag=camera_model,tag=remove_camera] run tag @e[tag=camera_view,distance=..0.2] add remove_camera

execute as @e[tag=camera_model] at @s unless entity @e[tag=camera_view,distance=..0.2] run tag @s add remove_camera

kill @e[tag=remove_camera]