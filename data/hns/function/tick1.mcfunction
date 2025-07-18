# Runs every tick when the game is NOT running

effect give @a[scores={hns.player=1}] minecraft:weakness infinite 255 true
effect give @a[scores={hns.player=1}] minecraft:resistance infinite 255 true
effect give @a[scores={hns.player=1}] minecraft:regeneration infinite 255 true
effect give @a[scores={hns.player=1}] minecraft:saturation infinite 0 true

# TODO: optimize this
execute if score autoSeeker hiddenInfo matches 0 run team join Hiders @a[scores={hns.player=1},team=!Seekers,team=!hns_spectators]
execute if score autoSeeker hiddenInfo matches 0 run item replace entity @a[team=Hiders] container.8 with minecraft:lime_wool[minecraft:custom_name=[{text:"Team: Hiders - Press 'F' to change",italic:false}]]
execute if score autoSeeker hiddenInfo matches 0 run item replace entity @a[team=Seekers] container.8 with minecraft:red_wool[minecraft:custom_name=[{text:"Team: Seekers - Press 'F' to change",italic:false}]]
execute as @a[scores={hns.player=1}] run function hns:teams/change_teams
clear @a[team=Hiders] minecraft:red_wool
clear @a[team=Seekers] minecraft:lime_wool
clear @a[team=hns_spectators] minecraft:red_wool
clear @a[team=hns_spectators] minecraft:lime_wool

execute if score autoSeeker hiddenInfo matches 1 run team join hns_lobby @a[scores={hns.player=1},team=!hns_spectators]
execute if score autoSeeker hiddenInfo matches 1 run clear @a[scores={hns.player=1}] minecraft:lime_wool
execute if score autoSeeker hiddenInfo matches 1 run clear @a[scores={hns.player=1}] minecraft:red_wool

item replace entity @a[team=hns_spectators] container.8 with minecraft:light_gray_wool[minecraft:custom_name=[{text:"Spectator - Press 'F' to change",italic:false}]]
clear @a[team=Hiders] minecraft:light_gray_wool
clear @a[team=hns_lobby] minecraft:light_gray_wool

kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool"}}]


scoreboard players reset @a hns.deaths

execute if score setPrepTime hiddenInfo matches ..0 run scoreboard players set setPrepTime hiddenInfo 0
execute if score setTime hiddenInfo matches ..0 run scoreboard players set setTime hiddenInfo 10
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo
scoreboard players operation Time: Info = setTime hiddenInfo