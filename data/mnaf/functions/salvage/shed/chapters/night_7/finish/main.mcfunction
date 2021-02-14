#say Finish

#region Do stuff
tag @e[tag=salvage,tag=shed,tag=animatronic] remove active
stopsound @a
#tag @e[tag=salvage,tag=shed,tag=animatronic] add hide
#endregion

schedule function mnaf:salvage/shed/chapters/night_7/finish/1 15t
schedule function mnaf:salvage/shed/chapters/night_7/finish/next 30t