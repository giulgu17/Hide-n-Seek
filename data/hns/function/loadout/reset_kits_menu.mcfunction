data modify storage hns:main hns_loadout set value { \
    kits: [{label: {text: "Default", color: "red"}, tooltip: {text: "1x Stick (sharpness II, knockback IV)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 1"}}, \
    {label: {text: "Swordsman", color: "red"}, tooltip: {text: "1x Diamond Sword (sharpness 15, sweeping edge 10)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 101"}}, \
    {label: {text: "Ninja", color: "red"}, tooltip: {text: "2x Lingering blindness potions (00:05)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 2"}}, \
    {label: {text: "Archer", color: "red"}, tooltip: {text: "1x Bow (Power IV)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 102"}}, \
    {label: {text: "The Undying", color: "red"}, tooltip: {text: "1x Totem of Undying"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 3"}}, \
    {label: {text: "Executioner", color: "red"}, tooltip: {text: "1x Diamond Axe (sharpness 20)"}, action: {type: "minecraft:run_command", command: "trigger hns.kit_selection set 103"}}, \
    ], \
    team: [{id:"0",display:"Hider"}, {id:"1",display:"Seeker"}] \
}
