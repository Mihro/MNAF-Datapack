#say Part 1 > Main

#region Do stuff
tag @e[tag=salvage,tag=shed,tag=animatronic] add active
playsound mnaf:salvage.night.5.1 voice @s
#endregion

schedule function mnaf:salvage/shed/chapters/night_5/part_1/next 32s