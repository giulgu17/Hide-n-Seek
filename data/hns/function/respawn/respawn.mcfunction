execute as @a[scores={hns.deaths=1},limit=1] if entity @s run scoreboard players set @s hns.deaths 0
clear @s
effect clear @s

execute if score isGameRunning hiddenInfo matches 0 run return fail
execute if score Hiders: Info matches 0 run return fail

# Respawn as seeker
execute as @s[team=Seekers] run function hns:respawn/seeker
execute as @s[team=!Seekers] if score hiderDeath hiddenInfo matches 1 run function hns:respawn/seeker

# Respawn as spectator
execute if score hiderDeath hiddenInfo matches 0 run function hns:respawn/spectator
