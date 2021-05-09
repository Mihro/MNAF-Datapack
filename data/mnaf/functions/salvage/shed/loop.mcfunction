# Run by: root

# If operator not sitting on seat then pause shed
execute if entity @p[tag=shed_operator,predicate=!mnaf:salvage_shed/sitting_on_seat] run tag @s add shed_pause
# If operator sitting on seat then unpause shed
execute if entity @p[tag=shed_operator,predicate=mnaf:salvage_shed/sitting_on_seat] run tag @s remove shed_pause
