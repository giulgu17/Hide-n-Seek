# Saves the chosen settings
$scoreboard players set setPrepTime hiddenInfo $(prep_time)
$scoreboard players set setTime hiddenInfo $(game_time)
$scoreboard players set autoSeeker hiddenInfo $(auto_seeker)
$scoreboard players set hiderDeath hiddenInfo $(hider_death)

$data modify storage hns:main hns_settings.prep_time set value $(prep_time)
$data modify storage hns:main hns_settings.game_time set value $(game_time)

tellraw @a {"text":"Settings have been updated!","color":"green"}
$tellraw @a {"text":"Preparation time: $(prep_time)","color":"yellow"}
$tellraw @a {"text":"Game time: $(game_time)"}
execute if score autoSeeker hiddenInfo matches 1 run tellraw @a {"text":"A seeker will be chosen randomly at the start of the game.","color":"red"}
execute if score autoSeeker hiddenInfo matches 0 run tellraw @a {"text":"Players can choose whether to start as hiders or seekers.","color":"green"}
execute if score hiderDeath hiddenInfo matches 1 run tellraw @a [{"text":"Hiders on death will become ",color:"white"},{"text":"seekers","color":"red"},{"text":"."}]
execute if score hiderDeath hiddenInfo matches 0 run tellraw @a [{"text":"Hiders on death will become ",color:"white"},{"text":"spectators","color":"gray"},{"text":"."}]