### Run by player

tellraw @a "Attempting pairing."

scoreboard players reset @s UseCarrotStick
clear @s minecraft:carrot_on_a_stick{CustomModelData:1}

execute as @s at @s positioned ^ ^ ^0.5 run function mnaf:cctv/common/pairing/ray
execute if entity @s[tag=pairing_successful] run tellraw @a "Pairing successful.\n"
execute unless entity @s[tag=pairing_successful] run tellraw @a "Pairing unsuccessful.\n"
tag @a[tag=pairing_successful] remove pairing_successful

tag @e[tag=label_pairing] remove label_pairing
tag @s remove cctv_pairing
scoreboard players enable @s PairingTrigger