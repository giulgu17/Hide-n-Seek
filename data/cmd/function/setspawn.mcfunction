# Sets the spawnpoint for the game
kill @e[type=armor_stand,tag=hns.spawn]
summon armor_stand ~ ~ ~ {Tags:["hns.spawn"],Invisible:true,NoGravity:true,Invulnerable:true,Marker:true}
tellraw @s {"text":"Spawnpoint set!","color":"green"}