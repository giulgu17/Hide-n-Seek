#Starts the game

execute if score autoSeekerPicker hiddenInfo matches 1 run team join Hiders @a
execute if score autoSeekerPicker hiddenInfo matches 1 run team join Seekers @r
#execute if score autoSeekerPicker hiddenInfo matches 0 if 

teleport @a[team=Hiders] @e[tag=spawn, limit=1]
clear @a

title @a[team=Hiders] title {"text":"Sei un HIDER!","color":"green"}
title @a[team=Hiders] subtitle {"text":"Nasconditi e sopravvivi.","color":"white"}
title @a[team=Seekers] title {"text":"Sei un SEEKER!","color":"red"}
title @a[team=Seekers] subtitle {"text":"Uccidi tutti gli Hiders.","color":"white"}

tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dal Seeker e di sopravvivere fino alla fine del tempo. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
#tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dai Seeker e di sopravvivere fino alla fine del tempo. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
#tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dai Seeker e di sopravvivere il più possibile. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
#tellraw @a[team=Hiders] {"text":"Sei un hider! Il tuo compito è quello di nasconderti dai Seeker e di sopravvivere il più possibile. Hai 45 secondi per nasconderti prima che il seeker cominci a cercare. Buona fortuna!","color":"green"}
tellraw @a[team=Seekers] {"text":"Sei un seeker! Il tuo compito è quello di andare a uccidere tutti gli hiders che si sono nascosti. Spawnerai tra 45 secondi, nel frattempo seleziona un kit che ti piace. Se muori tornerai qui."}

#teleport @a[team=Seekers] @e[tag=spawn, limit=1]