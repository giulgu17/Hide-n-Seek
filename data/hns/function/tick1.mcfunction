# Executes every tick when the game is NOT running

team join Lobby @a[team=]

execute if score setTime hiddenInfo < #Zero hiddenInfo run scoreboard players set setTime hiddenInfo 1
execute if score setPrepTime hiddenInfo < #Zero hiddenInfo run scoreboard players set setPrepTime hiddenInfo 1
scoreboard players operation Time: Info = setTime hiddenInfo
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo