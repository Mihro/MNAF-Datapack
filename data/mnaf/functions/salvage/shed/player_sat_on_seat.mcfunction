say Sat on seat

# If player is not operating shed then reset shed
execute if entity @s[tag=!shed_operator] run function mnaf:salvage/shed/reset
execute if entity @s[tag=!shed_operator] run tag @s add shed_operator