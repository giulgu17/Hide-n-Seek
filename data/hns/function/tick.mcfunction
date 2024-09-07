effect give @a minecraft:speed infinite 1
effect give @a minecraft:jump_boost infinite 1
effect clear @a[team=!Seekers] minecraft:blindness

execute store result score Hiders: Info run team list Hiders
execute store result score Seekers: Info run team list Seekers

execute if score isGameRunning hiddenInfo matches 1 run function hns:tick2
execute if score isGameRunning hiddenInfo matches 0 run team join Lobby @a[team=]

execute if entity @e[type=armor_stand,tag=spawn] if score isSpawnpointSet hiddenInfo matches 0 run scoreboard players set isSpawnpointSet hiddenInfo 1
execute unless entity @e[type=armor_stand,tag=spawn] if score isSpawnpointSet hiddenInfo matches 1 run scoreboard players set isSpawnpointSet hiddenInfo 0
execute if entity @e[type=armor_stand,tag=lobby] if score isLobbySet hiddenInfo matches 0 run scoreboard players set isLobbySet hiddenInfo 1
execute unless entity @e[type=armor_stand,tag=lobby] if score isLobbySet hiddenInfo matches 1 run scoreboard players set isLobbySet hiddenInfo 0