execute at @e[tag=salvage_item_input] run setblock ~ ~ ~ air
execute at @e[tag=salvage_item_input] run setblock ~ ~ ~ dropper
tag @e[tag=salvage_animatronic,tag=salvage_shed] add animatronic_kills_player
tag @e[tag=salvage_animatronic,tag=salvage_shed] remove salvage_active