kill @e[tag=guard_door,tag=red]

# Model/door
summon armor_stand -37.5 7.0 -288.0 {Marker:1b,NoGravity:1b,Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"netherite_hoe",Count:1b,tag:{CustomModelData:147}}],Tags:["guard_door","red","door"]}
# Button interact
summon villager -34 5 -288.7 {NoAI:1b,Health:1f,NoGravity:1b,Silent:1b,Rotation:[0f,0f],Tags:["guard_door","red","interact_box"]}
# Button marker
summon area_effect_cloud -33.5 6.6 -288.7 {Duration:6000,Rotation:[0f,-90f],Tags:["guard_door","red","button_marker"]}

function mnaf:guard_door/common/reset_power