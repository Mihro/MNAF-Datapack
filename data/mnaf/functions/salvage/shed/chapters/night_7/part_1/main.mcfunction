#say Part 1 > Main

#region Do stuff
tag @e[tag=salvage,tag=shed,tag=animatronic] add active
playsound mnaf:salvage.night_7.1 voice @s
execute as @e[tag=salvage,tag=shed,tag=animatronic] run function mnaf:salvage/shed/animatronic/stage/reset

#endregion

#schedule function mnaf:salvage/shed/chapters/night_7/part_1/next 4s
schedule function mnaf:salvage/shed/chapters/night_7/part_1/next 232s