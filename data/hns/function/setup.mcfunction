tellraw @a {"text":"Setting up the gamemode...","color":"yellow"}

gamerule keepInventory true
gamerule doMobSpawning false
gamerule doFireTick false
gamerule doMobLoot false
gamerule doInsomnia false
gamerule enderPearlsVanishOnDeath true
gamerule doImmediateRespawn true
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doLimitedCrafting true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false

#Setting up the teams
team add Hiders
team modify Hiders color green
team modify Hiders prefix {"text":"[Hider] ","color":"green"}
team modify Hiders friendlyFire false
team modify Hiders collisionRule pushOtherTeams
team modify Hiders nametagVisibility hideForOtherTeams
team add Seekers
team modify Seekers color red
team modify Hiders prefix {"text":"[Seeker] ","color":"red"}
team modify Seekers friendlyFire false
team modify Seekers collisionRule pushOtherTeams

#Setting up the scoreboards
team add scoreHiders
team modify scoreHiders color green
team join scoreHiders Hiders:
team add scoreSeekers
team modify scoreSeekers color red
team join scoreSeekers Seekers:

scoreboard objectives add Info dummy
scoreboard players add Hiders: Info 0
scoreboard players add Seekers: Info 0
scoreboard players add Time: Info 0
scoreboard objectives setdisplay sidebar Info

scoreboard objectives add hiddenInfo dummy
scoreboard players set isGameRunning hiddenInfo 0
scoreboard players set isSpawnpointSet hiddenInfo 0
scoreboard players set autoSeekerPicker hiddenInfo 1
scoreboard players set seekerOnDeath hiddenInfo 1
scoreboard players set setPrepTime hiddenInfo 30
scoreboard players set setTime hiddenInfo 300

data modify storage minecraft:hns setTime set value 300
data modify storage minecraft:hns setPrepTime set value 30
data modify storage minecraft:hns autoPickSeeker set value True
data modify storage minecraft:hns seekerOnDeath set value True
data modify storage minecraft:hns isGameRunning set value False
data modify storage minecraft:hns isSpawnpointSet set value False

data modify storage minecraft:macro true set value {"val":"1"}
data modify storage minecraft:macro false set value {"val":"0"}


tellraw @a {"text":"Hide'n'seek gamemode successfully setup!","color":"green"}