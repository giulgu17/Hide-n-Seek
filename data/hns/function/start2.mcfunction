# End of preparation phase
teleport @a[team=Seekers] @e[tag=spawn, limit=1]
tellraw @a {"text":"The preparation phase has ended.","color":"yellow"}
scoreboard players set isSeekerSpawned hiddenInfo 1