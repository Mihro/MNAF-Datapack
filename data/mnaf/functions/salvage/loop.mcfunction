# Run ai if ai exists
execute if entity @e[tag=salvage,tag=ai,tag=animatronic] run function mnaf:salvage/ai/loop

# Run shed if player in shed
execute if entity @a[predicate=mnaf:salvage_shed/inside] as @e[tag=salvage,tag=marker,tag=root] run function mnaf:salvage/shed/loop
# If shed operator is not in shed then reset shed
execute if entity @e[tag=shed_operator,predicate=!mnaf:salvage_shed/inside] run function mnaf:salvage/shed/reset