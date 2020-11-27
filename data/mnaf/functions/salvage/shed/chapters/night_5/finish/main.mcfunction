#say Finish

#region Do stuff
tag @e[tag=salvage,tag=shed,tag=animatronic,tag=active] remove active
tag @e[tag=salvage,tag=shed,tag=animatronic] add hide
#endregion

schedule function mnaf:salvage/shed/chapters/night_5/finish/1 15t
schedule function mnaf:salvage/shed/chapters/night_5/finish/next 30t