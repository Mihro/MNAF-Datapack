# Run by: as @e[tag=salvage,tag=marker,tag=root] if player sitting

execute if entity @a[tag=run_salvage_shed,advancements={mnaf:salvage_shed/night/7/1=true}] at @e[tag=shed,tag=button,tag=tase] if block ~ ~ ~ #buttons[powered=true] as @e[tag=shed,tag=root,tag=!tasing] run function mnaf:salvage/shed/animatronic/tase/start
