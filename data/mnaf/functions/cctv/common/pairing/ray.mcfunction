execute as @e[tag=camera,tag=cctv_paired,distance=..1] run function mnaf:cctv/common/pairing/camera_already_paired
execute as @e[tag=camera,tag=!cctv_paired,distance=..1] run function mnaf:cctv/common/pairing/pair_camera
summon area_effect_cloud ~ ~ ~ {Duration:5,Rotation:[0.0f,-90.0f]}

execute unless entity @s[tag=!pairing_successful,distance=5..] unless entity @e[tag=camera,distance=..1] positioned ^ ^ ^0.2 run function mnaf:cctv/common/pairing/ray