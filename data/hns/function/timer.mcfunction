# Makes the game time tick down
execute unless score PreparationTime: Info matches 0 run scoreboard players remove PreparationTime: Info 1
execute if score PreparationTime: Info matches 0 run scoreboard players remove Time: Info 1

execute if score isGameRunning hiddenInfo matches 1 run schedule function hns:timer 1s