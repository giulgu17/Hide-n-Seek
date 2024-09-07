kill @e[type=armor_stand,tag=lobby]
summon armor_stand ~ ~ ~ {Tags:["lobby"],Invisible:true,NoGravity:true,Invulnerable:true,Marker:true}
spawnpoint @a ~ ~ ~
setworldspawn ~ ~ ~
tellraw @s {"text":"Lobby spawn set!","color":"green"}