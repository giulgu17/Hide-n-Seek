execute if score @s hns.kit_hider matches 1 run data modify storage hns:main hns_loadout.kits[0].label.color set value "green"
execute if score @s hns.kit_hider matches 2 run data modify storage hns:main hns_loadout.kits[2].label.color set value "green"
execute if score @s hns.kit_hider matches 3 run data modify storage hns:main hns_loadout.kits[4].label.color set value "green"

execute if score @s hns.kit_seeker matches 101 run data modify storage hns:main hns_loadout.kits[1].label.color set value "green"
execute if score @s hns.kit_seeker matches 102 run data modify storage hns:main hns_loadout.kits[3].label.color set value "green"
execute if score @s hns.kit_seeker matches 103 run data modify storage hns:main hns_loadout.kits[5].label.color set value "green"

function hns:loadout/loadout_menu with storage hns:main hns_loadout

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
