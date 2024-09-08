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
gamerule sendCommandFeedback false

#Setting up the teams
team add Hiders
team modify Hiders color green
team modify Hiders prefix {"text":"[Hider] ","color":"green"}
team modify Hiders friendlyFire false
team modify Hiders collisionRule pushOtherTeams
team modify Hiders nametagVisibility hideForOtherTeams
team add Seekers
team modify Seekers color red
team modify Seekers prefix {"text":"[Seeker] ","color":"red"}
team modify Seekers friendlyFire false
team modify Seekers collisionRule pushOtherTeams
team add Lobby
team modify Lobby color gray
team modify Lobby prefix {"text":"[Lobby] ","color":"gray"}
team modify Lobby friendlyFire false
team modify Lobby collisionRule never
team add Spectators
team modify Spectators color gray
team modify Spectators prefix {"text":"[Spectator] ","color":"gray"}
team modify Spectators friendlyFire false
team modify Spectators collisionRule never

#Setting up the scoreboards
team add scoreHiders
team modify scoreHiders color green
team join scoreHiders Hiders:
team add scoreSeekers
team modify scoreSeekers color red
team join scoreSeekers Seekers:
team add blue
team modify blue color blue
team join blue autoSeekerPicker
team join blue seekerOnDeath

scoreboard objectives add Info dummy
scoreboard players add Hiders: Info 0
scoreboard players add Seekers: Info 0
scoreboard players add Time: Info 0
scoreboard objectives setdisplay sidebar Info

scoreboard objectives add hiddenInfo dummy
scoreboard players set setPrepTime hiddenInfo 30
scoreboard players set setTime hiddenInfo 300
scoreboard players set isGameRunning hiddenInfo 0
scoreboard players set isSpawnpointSet hiddenInfo 0
scoreboard players set isLobbySet hiddenInfo 0
scoreboard players set autoSeekerPicker hiddenInfo 1
scoreboard players set seekerOnDeath hiddenInfo 1
scoreboard players set isSeekerSpawned hiddenInfo 0
scoreboard players set #Zero hiddenInfo 0
scoreboard players set #Two hiddenInfo 2
scoreboard players set Lobby hiddenInfo 0

scoreboard objectives add deaths deathCount
scoreboard players add @a deaths 0


scoreboard players operation Time: Info = setTime hiddenInfo
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo

data modify storage minecraft:macro true set value {"val":"1"}
data modify storage minecraft:macro false set value {"val":"0"}


tellraw @a {"text":"Hide'n'seek gamemode successfully setup!","color":"green"}