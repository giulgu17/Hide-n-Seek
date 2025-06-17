# Checks that everything is set up correctly
execute if score isGameRunning hiddenInfo matches 1 run return run tellraw @a {"text":"Error: a game is already running.","color":"red"}
execute if score isSpawnpointSet hiddenInfo matches 0 run return run tellraw @a {"text":"Error: spawnpoint is not set.","color":"red"}
execute if score isLobbySet hiddenInfo matches 0 run return run tellraw @a {"text":"Error: lobby spawn is not set.","color":"red"}

execute if score autoSeeker hiddenInfo matches 1 if score Lobby hiddenInfo < #Two hiddenInfo run return run tellraw @a {"text":"Error: not enough players to start the game.","color":"red"}
execute if score autoSeeker hiddenInfo matches 0 if score Hiders: Info matches 0 run return run tellraw @a {"text":"Error: not enough hiders to start the game.","color":"red"}
execute if score autoSeeker hiddenInfo matches 0 if score Seekers: Info matches 0 run return run tellraw @a {"text":"Error: not enough seekers to start the game.","color":"red"}

# Starts the game
execute if score autoSeeker hiddenInfo matches 1 run team join Hiders @a[team=!Spectators]
execute if score autoSeeker hiddenInfo matches 1 run team join Seekers @r[team=Hiders]

teleport @a[team=Hiders] @e[tag=spawn, limit=1]
clear @a

title @a[team=Hiders] title {"text":"You are a HIDER!","color":"green"}
title @a[team=Hiders] subtitle {"text":"Hide and survive","color":"white"}
title @a[team=Seekers] title {"text":"You are a SEEKER!","color":"red"}
title @a[team=Seekers] subtitle {"text":"Kill all hiders","color":"white"}

#tellraw @a[team=Hiders] {"text":"You are a hider! Your objective is to hide from the Seeker and survive until time runs out. You have some preparation time to hide before the seeker spawns. Good luck!","color":"green"}
#tellraw @a[team=Seekers] {"text":"You are a seeker! Your objective is to find and kill the hiders. You will spawn when the preparation time runs out. If you die you will respawn.","color":"red"}

# TODO: kit system with execute as @a[team]
# TODO: make items unable to be dropped
give @a[team=Hiders] minecraft:stick[minecraft:enchantments={"minecraft:sharpness":2,"minecraft:knockback":4}] 1
give @a[team=Seekers] minecraft:diamond_sword[minecraft:enchantments={"minecraft:sharpness":15,"minecraft:sweeping_edge":10},minecraft:unbreakable={}] 1

scoreboard players set isGameRunning hiddenInfo 1
scoreboard players set isSeekerSpawned hiddenInfo 0

# Starts the timer
schedule function hns:timer 1s