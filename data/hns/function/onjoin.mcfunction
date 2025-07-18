team join hns_lobby @s
clear @s
effect clear @s
scoreboard players reset @s hns.deaths
teleport @s[scores={hns.player=1}] @e[tag=hns.lobby,limit=1]
execute if score isGameRunning hiddenInfo matches 1 run function hns:teams/spectate
execute if score isGameRunning hiddenInfo matches 1 run tellraw @s {text:"A game is already ongoing, so you've been put in spectator mode.",color:"gold"}