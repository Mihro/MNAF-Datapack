kill @e[tag=monitor]
tag @e[tag=cctv_paired] remove cctv_paired

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:"netherite_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["monitor","monitor_screen"]}

execute at @e[tag=monitor_screen,distance=..0.1] run function mnaf:cctv/monitor/summon_labels