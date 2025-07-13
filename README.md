# Hide'n'Seek Datapack by giulgu17
A datapack for a Hide'n'Seek gamemode, designed to be highly customizable and easy to setup!

## How to play

You can access the game menu by pressing the "quick action" keybind (`G` by default) or from the pause menu. From there, an admin can start the game and change the settings and everyone can choose their kits to use in game.

When the game starts, hiders will spawn into the map and have to hide from the seekers, who instead have to find the hiders and kill them before the time runs out. Hiders will have time to prepare before the seekers spawn and hunt them down.

## Setup guide

To download the datapack, simply click the green `code` button and download the ZIP. Then, extract it inside the `datapacks` folder and load it by using `/reload` inside the world.

Once the datapack is loaded, run `/function cmd:setup` to setup the gamemode. Keep in mind that this will also modify some gamerules, so I recommend to use it inside a world dedicated to play the gamemode.

Then, you will need to setup the spawnpoints for the lobby and the game itself. Run `/function cmd:setlobby` to set the spawnpoint for the lobby (where the players will be teleported when the game ends) and `/function cmd:setspawn` to set the spawnpoint for the game (where the players will be teleported when the game starts).

Anyone who has op permissions will be able to start the game and change the settings. Right now, the available settings are as follows:
- Preparation time (amount of time before the seeker spawns)
- Game time
- If the seeker is chosen randomly or manually
- If hiders on death respawn as other seekers or spectators
