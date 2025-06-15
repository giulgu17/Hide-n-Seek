# Time ran out
# Move the checks to a new function?
execute if score Time: Info matches 0 run tellraw @a {"text":"Time has run out! The hiders won the round.","color": "green"}
execute if score Time: Info matches 0 run return run function hns:end

# Makes the game time tick down
execute unless score PreparationTime: Info matches 0 run scoreboard players remove PreparationTime: Info 1
execute if score PreparationTime: Info matches 0 run scoreboard players remove Time: Info 1

execute if score isGameRunning hiddenInfo matches 1 run schedule function hns:timer 1s