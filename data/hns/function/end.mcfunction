scoreboard players set isGameRunning hiddenInfo 0
scoreboard players operation Time: Info = setTime hiddenInfo
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo
schedule clear hns:timer

gamemode adventure @a[scores={hns.player=1}]
teleport @a[scores={hns.player=1}] @e[tag=hns.lobby,limit=1]
team join hns_lobby @a[scores={hns.player=1}]
clear @a[scores={hns.player=1}]
effect clear @a[scores={hns.player=1}]