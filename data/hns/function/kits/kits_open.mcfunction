execute if score @s hns.kit_hider matches 1 run data modify storage hns:main hns_loadout.kits[0].label.color set value "green"
execute if score @s hns.kit_hider matches 2 run data modify storage hns:main hns_loadout.kits[2].label.color set value "green"
execute if score @s hns.kit_hider matches 3 run data modify storage hns:main hns_loadout.kits[4].label.color set value "green"

execute if score @s hns.kit_seeker matches 101 run data modify storage hns:main hns_loadout.kits[1].label.color set value "green"
execute if score @s hns.kit_seeker matches 102 run data modify storage hns:main hns_loadout.kits[3].label.color set value "green"
execute if score @s hns.kit_seeker matches 103 run data modify storage hns:main hns_loadout.kits[5].label.color set value "green"

function hns:kits/kits_menu with storage hns:main hns_loadout

function hns:kits/reset_kits_menu