tellraw @a {text:"Setting up the gamemode...","color":"yellow"}

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
gamerule locatorBar false

# Setting up the teams
team add Hiders
team modify Hiders color green
team modify Hiders prefix {text:"[Hider] ","color":"green"}
team modify Hiders friendlyFire false
team modify Hiders collisionRule pushOtherTeams
team modify Hiders nametagVisibility hideForOtherTeams
team add Seekers
team modify Seekers color red
team modify Seekers prefix {text:"[Seeker] ","color":"red"}
team modify Seekers friendlyFire false
team modify Seekers collisionRule pushOtherTeams
team add hns_lobby
team modify hns_lobby color gray
team modify hns_lobby prefix {text:"[Lobby] ","color":"gray"}
team modify hns_lobby friendlyFire false
team modify hns_lobby collisionRule never
team add hns_spectators
team modify hns_spectators color gray
team modify hns_spectators prefix {text:"[Spectator] ","color":"gray"}
team modify hns_spectators friendlyFire false
team modify hns_spectators collisionRule never


# Setting up the scoreboards
team add scoreHiders
team modify scoreHiders color green
team join scoreHiders Hiders:
team add scoreSeekers
team modify scoreSeekers color red
team join scoreSeekers Seekers:
team add hns.settings.blue
team modify hns.settings.blue color blue
team join hns.settings.blue autoSeeker
team join hns.settings.blue hiderDeath
team add hns.settings.gray
team modify hns.settings.gray color gray
team join hns.settings.gray hns_lobby

# Setting up the scoreboards
scoreboard objectives add Info dummy
scoreboard players add Hiders: Info 0
scoreboard players add Seekers: Info 0
scoreboard players add Time: Info 0
scoreboard objectives setdisplay sidebar Info

scoreboard objectives add hiddenInfo dummy
scoreboard players set setPrepTime hiddenInfo 30
scoreboard players set setTime hiddenInfo 300
scoreboard players set autoSeeker hiddenInfo 1
scoreboard players set hiderDeath hiddenInfo 1
scoreboard players set isSpawnpointSet hiddenInfo 0
scoreboard players set isLobbySet hiddenInfo 0
scoreboard players set isGameRunning hiddenInfo 0
scoreboard players set isSeekerSpawned hiddenInfo 0
scoreboard players set hns_lobby hiddenInfo 0

scoreboard objectives add deaths deathCount
scoreboard players add @a deaths 0

scoreboard objectives add leave minecraft.custom:minecraft.leave_game

scoreboard objectives add hns.kit_hider dummy
scoreboard objectives add hns.kit_seeker dummy
scoreboard objectives add hns.kit_selection trigger

scoreboard objectives add hns.cmd trigger

scoreboard players operation Time: Info = setTime hiddenInfo
scoreboard players operation PreparationTime: Info = setPrepTime hiddenInfo


# Setting up the data storages
data modify storage hns:main hns_settings set value { \
    template: "function hns:settings/settings_save {'prep_time':'$(new_prep_time)','game_time':'$(new_game_time)','auto_seeker':'$(new_auto_seeker)','hider_death':'$(new_hider_death)'}", \
    prep_time: 30, \
    game_time: 300, \
    auto_seeker: [{id:"0",display:"Manually"}, {id:"1",display:"Randomly"}], \
    hider_death: [{id:"0",display:"Spectators"}, {id:"1",display:"Seekers"}] \
}

data modify storage hns:main hns_loadout set value { \
    kits: [{label: {text: "Default", color: "red"}, tooltip: {text: "1x Stick (sharpness II, knockback IV)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 1"}}, \
    {label: {text: "Swordsman", color: "red"}, tooltip: {text: "1x Diamond Sword (sharpness 15, sweeping edge 10)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 101"}}, \
    {label: {text: "Ninja", color: "red"}, tooltip: {text: "2x Lingering blindness potions (00:05)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 2"}}, \
    {label: {text: "Archer", color: "red"}, tooltip: {text: "1x Bow (Power IV)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 102"}}, \
    {label: {text: "Adrenaline Junkie", color: "red"}, tooltip: {text: "1x Totem of Undying"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 3"}}, \
    {label: {text: "Executioner", color: "red"}, tooltip: {text: "1x Diamond Axe (sharpness 20)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 103"}}, \
    ], \
    team: [{id:"0",display:"Hider"}, {id:"1",display:"Seeker"}] \
}


tellraw @a {text:"Hide'n'seek gamemode successfully setup!","color":"green"}