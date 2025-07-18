# Checks that everything is set up correctly
execute if score isGameRunning hiddenInfo matches 1 run return run tellraw @a[scores={hns.player=1}] {"text":"Error: a game is already running.","color":"red"}
execute if score isSpawnpointSet hiddenInfo matches 0 run return run tellraw @a[scores={hns.player=1}] {"text":"Error: spawnpoint is not set.","color":"red"}
execute if score isLobbySet hiddenInfo matches 0 run return run tellraw @a[scores={hns.player=1}] {"text":"Error: lobby spawn is not set.","color":"red"}

execute if score autoSeeker hiddenInfo matches 1 if score Lobby hiddenInfo matches ..1 run return run tellraw @a[scores={hns.player=1}] {"text":"Error: not enough players to start the game.","color":"red"}
execute if score autoSeeker hiddenInfo matches 0 if score Hiders: Info matches 0 run return run tellraw @a[scores={hns.player=1}] {"text":"Error: not enough hiders to start the game.","color":"red"}
execute if score autoSeeker hiddenInfo matches 0 if score Seekers: Info matches 0 run return run tellraw @a[scores={hns.player=1}] {"text":"Error: not enough seekers to start the game.","color":"red"}

# Starts the game
execute if score autoSeeker hiddenInfo matches 1 run team join Hiders @a[scores={hns.player=1},team=!hns_spectators]
execute if score autoSeeker hiddenInfo matches 1 run team join Seekers @r[team=Hiders]

teleport @a[team=Hiders] @e[tag=hns.spawn, limit=1]
clear @a

title @a[team=Hiders] title {"text":"You are a HIDER!","color":"green"}
title @a[team=Hiders] subtitle {"text":"Hide and survive","color":"white"}
title @a[team=Seekers] title {"text":"You are a SEEKER!","color":"red"}
title @a[team=Seekers] subtitle {"text":"Kill all hiders","color":"white"}

# TODO: make items unable to be dropped
execute as @a[scores={hns.player=1}] run function hns:loadout/give

scoreboard players set isGameRunning hiddenInfo 1
scoreboard players set isSeekerSpawned hiddenInfo 0
scoreboard players set @a hns.deaths 0

gamemode adventure @a[scores={hns.player=1},team=!hns_spectators]
gamemode spectator @a[team=hns_spectators]

# Starts the timer
schedule function hns:timer 1s