$scoreboard players set seekerOnDeath hiddenInfo $(val)
execute if score seekerOnDeath hiddenInfo matches 1 run tellraw @a {"text":"Hiders will now become seekers upon death.","color":"red"}
execute if score seekerOnDeath hiddenInfo matches 0 run tellraw @a {"text":"Hiders will now become spectators upon death.","color":"gray"}