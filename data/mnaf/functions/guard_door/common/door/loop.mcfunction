execute as @e[tag=guard_door,tag=door,tag=raise] at @s run function mnaf:guard_door/common/door/raise
execute as @e[tag=guard_door,tag=door,tag=lower] at @s run function mnaf:guard_door/common/door/lower

execute as @e[tag=guard_door,tag=door,tag=closed] run function mnaf:guard_door/common/door/closed