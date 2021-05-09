say Reset Shed

# Kill animatronics
kill @e[tag=salvage,tag=shed,tag=animatronic]

# Reset operator tags
tag @a[tag=shed_operator] remove shed_operator
tag @a[tag=shed_pause] remove shed_pause

# Reset players' sit on shed seat advancement
advancement revoke @a[predicate=!mnaf:salvage_shed/inside] only mnaf:salvage_shed/sit_on_seat