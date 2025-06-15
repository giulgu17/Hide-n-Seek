function 

# If death -> seeker
execute if score seekerOnDeath hiddenInfo matches 1 if score isGameRunning hiddenInfo matches 1 run title @s[team=!Seekers] title {"text":"You are a SEEKER!","color":"red"}
execute if score seekerOnDeath hiddenInfo matches 1 if score isGameRunning hiddenInfo matches 1 run title @s[team=!Seekers] subtitle {"text":"Kill all hiders","color":"white"}
execute if score seekerOnDeath hiddenInfo matches 1 run clear @s
execute if score seekerOnDeath hiddenInfo matches 1 run effect clear @s
execute if score seekerOnDeath hiddenInfo matches 1 run team join Seekers @s[team=!Seekers]
execute if score seekerOnDeath hiddenInfo matches 1 run teleport @s @e[tag=spawn, limit=1]
#TODO: give seeker their selected kit

# If death -> spectator
execute if score seekerOnDeath hiddenInfo matches 0 run gamemode spectator @s
execute if score seekerOnDeath hiddenInfo matches 0 run team join Spectators @s
execute if score seekerOnDeath hiddenInfo matches 0 run teleport @s @e[tag=spawn, limit=1]
execute if score seekerOnDeath hiddenInfo matches 0 run clear @s
execute if score seekerOnDeath hiddenInfo matches 0 run effect clear @s
