# Executes every tick when the game IS running

# Spawns the seeker(s) when the prep phase is done
execute if score PreparationTime: Info matches 0 if score isSeekerSpawned hiddenInfo matches 0 run function hns:start2

# When someone dies, they respawn
execute as @a[scores={deaths=1},limit=1] run function hns:respawn

# Checks end game conditions
execute if score Hiders: Info matches 0 run tellraw @a {"text":"The seekers have won the round!","color":"red"}
execute if score Hiders: Info matches 0 run function hns:end
execute if score Time: Info matches 0 run tellraw @a {"text":"Time ran out! The hiders have won the round.","color": "green"}
execute if score Time: Info matches 0 run return run function hns:end
execute if score Seekers: Info matches 0 run tellraw @a {"text":"There are no seekers left, the hiders have won the round!","color":"green"}
execute if score Seekers: Info matches 0 run function hns:end