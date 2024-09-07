$scoreboard players $(op) $(var) hiddenInfo $(val)
execute if score setTime hiddenInfo < #Zero hiddenInfo run scoreboard players set setTime hiddenInfo 0
execute if score setPrepTime hiddenInfo < #Zero hiddenInfo run scoreboard players set setPrepTime hiddenInfo 0
scoreboard players operation Time: Info = setTime hiddenInfo
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo