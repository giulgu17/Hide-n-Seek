effect give @a minecraft:speed infinite 1
effect give @a minecraft:jump_boost infinite 1
effect clear @a[team=Hiders] minecraft:blindness

execute if score isGameRunning hiddenInfo matches 1 run function hns:tick2
execute if entity @e[type=armor_stand,tag=spawn] if score isSpawnpointSet hiddenInfo matches 0 run scoreboard players set isSpawnpointSet hiddenInfo 1
execute unless entity @e[type=armor_stand,tag=spawn] if score isSpawnpointSet hiddenInfo matches 1 run scoreboard players set isSpawnpointSet hiddenInfo 0