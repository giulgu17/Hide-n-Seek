execute as @a[scores={deaths=1},limit=1] if entity @s run scoreboard players set @s deaths 0
clear @s
effect clear @s

# If death -> seeker
execute if score hiderDeath hiddenInfo matches 1 if score Hiders: Info matches 1.. if score isGameRunning hiddenInfo matches 1 run title @s[team=!Seekers] title {"text":"You are a SEEKER!","color":"red"}
execute if score hiderDeath hiddenInfo matches 1 if score Hiders: Info matches 1.. if score isGameRunning hiddenInfo matches 1 run title @s[team=!Seekers] subtitle {"text":"Kill all hiders","color":"white"}
execute if score hiderDeath hiddenInfo matches 1 run team join Seekers @s[team=!Seekers]
execute if score hiderDeath hiddenInfo matches 1 run teleport @s @e[tag=spawn, limit=1]
#TODO: give seeker their selected kit

# If death -> spectator
execute if score hiderDeath hiddenInfo matches 0 run gamemode spectator @s[team=Hiders]
execute if score hiderDeath hiddenInfo matches 0 run teleport @s @e[team=Hiders, tag=spawn, limit=1]
execute if score hiderDeath hiddenInfo matches 0 run team join Spectators @s[team=Hiders]