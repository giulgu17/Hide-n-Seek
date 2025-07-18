execute if score isGameRunning hiddenInfo matches 1 as @s[team=Hiders] run me is now a spectator.
execute if score isGameRunning hiddenInfo matches 1 as @s[team=Seekers] run me is now a spectator.
execute if score isGameRunning hiddenInfo matches 1 run gamemode spectator @s
team join hns_spectators @s
teleport @s @e[tag=hns.spawn, limit=1]