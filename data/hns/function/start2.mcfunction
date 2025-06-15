# End of preparation phase
teleport @a[team=Seekers] @e[tag=spawn, limit=1]
tellraw @a {"text":"The preparation phase has ended.","color":"yellow"}
tellraw @a[team=Seekers] {"text":"Good hunting, seeker.","color": "red"}
scoreboard players set isSeekerSpawned hiddenInfo 1