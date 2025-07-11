# On join:
execute as @a[scores={leave=1..}] run function hns:onjoin
scoreboard players set @a[scores={leave=1..}] leave 0

# Gives effects to everyone
effect give @a minecraft:speed infinite 1
effect give @a minecraft:jump_boost infinite 1
effect clear @a[team=!Seekers] minecraft:blindness

# Checks if the spawnpoints are set up
execute if entity @e[type=armor_stand,tag=spawn] if score isSpawnpointSet hiddenInfo matches 0 run scoreboard players set isSpawnpointSet hiddenInfo 1
execute unless entity @e[type=armor_stand,tag=spawn] if score isSpawnpointSet hiddenInfo matches 1 run scoreboard players set isSpawnpointSet hiddenInfo 0
execute if entity @e[type=armor_stand,tag=lobby] if score isLobbySet hiddenInfo matches 0 run scoreboard players set isLobbySet hiddenInfo 1
execute unless entity @e[type=armor_stand,tag=lobby] if score isLobbySet hiddenInfo matches 1 run scoreboard players set isLobbySet hiddenInfo 0

# Counts the amount of people present in each team
execute store result score Hiders: Info if entity @a[team=Hiders]
execute store result score Seekers: Info if entity @a[team=Seekers]
execute store result score Lobby hiddenInfo if entity @a[team=Lobby]


execute if score isGameRunning hiddenInfo matches 0 run function hns:tick1
execute if score isGameRunning hiddenInfo matches 1 run function hns:tick2