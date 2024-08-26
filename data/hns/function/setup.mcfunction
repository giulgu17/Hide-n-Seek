#This function sets up the scoreboards and teams for the world
tellraw @a {"text":"Setting up the essentials...","color":"yellow"}

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

#Setting up the team spawns
scoreboard objectives add hiderSpawn dummy


tellraw @a {"text":"Gamemode setup partially complete. Please make sure that the spawns are set up correctly.","color":"green"}
tellraw @a {"text":"Execute '/scoreboard objectives setdisplay sidebar coords' to check the saved coordinates","color":"yellow"}
#tellraw @a {"text":"Gamemode setup complete!","color":"green"}