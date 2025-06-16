$scoreboard players set autoSeeker hiddenInfo $(val)
execute if score autoSeeker hiddenInfo matches 1 run tellraw @a {"text":"The seeker will be chosen randomly.","color":"green"}
execute if score autoSeeker hiddenInfo matches 0 run tellraw @a {"text":"The seeker will be chosen manually.","color":"red"}