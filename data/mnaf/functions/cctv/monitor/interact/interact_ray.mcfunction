execute at @e[tag=monitor_label,distance=..0.1] run function mnaf:cctv/monitor/interact/label/label
summon area_effect_cloud ~ ~ ~ {Duration:5,Rotation:[0.0f,-90.0f]}

execute unless entity @s[distance=5..] unless entity @e[tag=monitor_label,distance=..0.1] positioned ^ ^ ^0.2 run function mnaf:cctv/monitor/interact/interact_ray
