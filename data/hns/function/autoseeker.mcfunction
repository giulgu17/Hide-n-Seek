$scoreboard players set autoSeekerPicker hiddenInfo $(val)
execute if score autoSeekerPicker hiddenInfo matches 1 run tellraw @a {"text":"The seeker will be chosen randomly.","color":"green"}
execute if score autoSeekerPicker hiddenInfo matches 0 run tellraw @a {"text":"The seeker will be chosen manually.","color":"red"}