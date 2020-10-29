summon armor_stand ~ ~ ~ {Marker:0b,NoGravity:1b,Invisible:0b,NoBasePlate:1b,Tags:["cctv","camera","unset_camera"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1,Unbreakable:1,tag:{CustomModelData:1001}}]}
execute as @e[tag=unset_camera] at @s if entity @e[tag=camera,tag=!unset_camera,distance=..0.1] run kill @s
execute as @e[tag=unset_camera] at @s run function mnaf:cctv/camera/setup

kill @s