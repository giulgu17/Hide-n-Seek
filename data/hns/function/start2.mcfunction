# End of preparation phase
teleport @a[team=Seekers] @e[tag=hns.spawn, limit=1]
tellraw @a[scores={hns.player=1}] {"text":"The preparation phase has ended.","color":"yellow"}
scoreboard players set isSeekerSpawned hiddenInfo 1