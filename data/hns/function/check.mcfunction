# Checks end game conditions
execute if score Hiders: Info matches 0 run tellraw @a {"text":"The seekers won the round!","color":"red"}
execute if score Hiders: Info matches 0 run function hns:end

execute if score Time: Info matches 0 run tellraw @a {"text":"Time has run out! The hiders won the round.","color": "green"}
execute if score Time: Info matches 0 run return run function hns:end