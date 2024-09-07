execute if score PreparationTime: Info matches 0 if score isSeekerSpawned hiddenInfo matches 0 run function hns:start2

execute as @e[type=minecraft:player,scores={deaths=1}] run function hns:respawn
execute if entity @e[type=minecraft:player,scores={deaths=1}] run scoreboard players set @a deaths 0

execute if score Hiders: Info matches 0 run tellraw @a {"text":"The seekers won the round!","color":"red"}
execute if score Hiders: Info matches 0 run function hns:end