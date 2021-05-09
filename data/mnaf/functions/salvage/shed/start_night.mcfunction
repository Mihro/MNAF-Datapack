#say Start Night

# Make the sitting player the only player to be runnning the salvage shed
## Reset the seat advancement for the old player
advancement revoke @a[tag=run_salvage_shed] only mnaf:salvage_shed/seat
## Make this player the unique tag owner
tag @a remove run_salvage_shed
tag @s add run_salvage_shed

# Start nights
execute if score @e[tag=salvage,tag=shed,tag=root,limit=1] ShedNight matches 7 run advancement grant @s only mnaf:salvage_shed/night/7/start