title @s[team=!Seekers] title {"text":"You are a SEEKER!","color":"red"}
title @s[team=!Seekers] subtitle {"text":"Kill all hiders","color":"white"}
team join Seekers @s[team=!Seekers]

execute run teleport @s @e[tag=hns.spawn, limit=1]
execute as @s run function hns:kits/give