# Shed
kill @e[tag=salvage,tag=shed,tag=animatronic]
execute if score @e[tag=salvage,tag=shed,tag=root,limit=1] SalvageNight matches 5 run function mnaf:salvage/shed/chapters/night_7/reset_schedules

# Players
stopsound @a[tag=run_salvage_shed]
advancement revoke @a from mnaf:salvage_shed/inside


tag @a[tag=run_salvage_shed] remove run_salvage_shed
tag @a[tag=pause_salvage_shed] remove pause_salvage_shed