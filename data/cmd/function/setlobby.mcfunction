# Sets the spawnpoint for the lobby
kill @e[type=armor_stand,tag=hns.lobby]
summon armor_stand ~ ~ ~ {Tags:["hns.lobby"],Invisible:true,NoGravity:true,Invulnerable:true,Marker:true}
spawnpoint @a ~ ~ ~
setworldspawn ~ ~ ~
tellraw @s {"text":"Lobby spawn set!","color":"green"}