#Starts the game

#Checks if the seeker is chosen automatically. If it is, it will choose a random player to be the seeker.
#TODO: turn that into a variable instead of a lever
execute if block -103 94 -241 minecraft:lever[powered=false] run team join Hiders @a
execute if block -103 94 -241 minecraft:lever[powered=false] run team join Seekers @r

#Teleports the players to their respective spawn points
teleport @a[team=Seekers] -135 98 -268
teleport @a[team=Hiders] -179 106 -280

clear @a
setblock -135 98 -268 minecraft:dark_oak_pressure_plate

title @a[team=Hiders] title {"text":"Sei un HIDER!","color":"green"}
title @a[team=Hiders] subtitle {"text":"Nasconditi e sopravvivi.","color":"white"}
title @a[team=Seekers] title {"text":"Sei un SEEKER!","color":"red"}
title @a[team=Seekers] subtitle {"text":"Uccidi tutti gli Hiders.","color":"white"}

tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dal Seeker e di sopravvivere fino alla fine del tempo. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
#tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dai Seeker e di sopravvivere fino alla fine del tempo. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
#tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dai Seeker e di sopravvivere il più possibile. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
#tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dai Seeker e di sopravvivere il più possibile. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
tellraw @a[team=Seekers] {"text":"Sei un seeker! Il tuo compito è quello di andare a uccidere tutti gli hiders che si sono nascosti. Spawnerai tra 45 secondi, nel frattempo seleziona un kit che ti piace. Se muori tornerai qui."}

