# Runs every tick when the game is NOT running

execute if score autoSeeker hiddenInfo matches 0 run team join Hiders @a[team=!Seekers,team=!Spectators]
execute if score autoSeeker hiddenInfo matches 1 run team join Lobby @a[team=!Spectators]

scoreboard players reset @a deaths

execute if score setPrepTime hiddenInfo matches ..0 run scoreboard players set setPrepTime hiddenInfo 0
execute if score setTime hiddenInfo matches ..0 run scoreboard players set setTime hiddenInfo 10
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo
scoreboard players operation Time: Info = setTime hiddenInfo