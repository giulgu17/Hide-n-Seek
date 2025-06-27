# Executes every tick when the game IS running

# Spawns the seekers when the prep time is done
execute if score PreparationTime: Info matches 0 if score isSeekerSpawned hiddenInfo matches 0 run function hns:start2

# When someone dies, they respawn
execute as @e[type=minecraft:player,scores={deaths=1},limit=1] run function hns:respawn
execute as @e[type=minecraft:player,scores={deaths=1},limit=1] if entity @s run scoreboard players set @s deaths 0
# might wanna rewrite the line above to trigger only for one player at a time

function hns:check