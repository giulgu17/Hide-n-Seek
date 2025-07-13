scoreboard players set isGameRunning hiddenInfo 0
scoreboard players operation Time: Info = setTime hiddenInfo
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo
schedule clear hns:timer

gamemode adventure @a
teleport @a @e[tag=lobby,limit=1]
team join hns_lobby @a
clear @a
effect clear @a