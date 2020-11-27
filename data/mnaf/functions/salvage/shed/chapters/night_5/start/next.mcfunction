#say Start > Next

execute as @e[tag=salvage,tag=shed,tag=animatronic,tag=reveal] at @e[tag=salvage,tag=shed,tag=root] run tp @s ~ ~ ~ 180 0
tag @e[tag=salvage,tag=shed,tag=animatronic,tag=reveal] remove reveal

advancement revoke @a[tag=run_salvage_shed] only mnaf:salvage_shed/night/5/start current
advancement grant @a[tag=run_salvage_shed,tag=!salvage_skip] only mnaf:salvage_shed/night/5/1