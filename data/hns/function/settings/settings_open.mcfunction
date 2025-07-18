# Sets up the settings menu before opening it
execute if score autoSeeker hiddenInfo matches 0 run data modify storage hns:main hns_settings.auto_seeker[0].initial set value true
execute if score autoSeeker hiddenInfo matches 0 run data modify storage hns:main hns_settings.auto_seeker[1].initial set value false
execute if score autoSeeker hiddenInfo matches 1 run data modify storage hns:main hns_settings.auto_seeker[0].initial set value false
execute if score autoSeeker hiddenInfo matches 1 run data modify storage hns:main hns_settings.auto_seeker[1].initial set value true

execute if score hiderDeath hiddenInfo matches 0 run data modify storage hns:main hns_settings.hider_death[0].initial set value true
execute if score hiderDeath hiddenInfo matches 0 run data modify storage hns:main hns_settings.hider_death[1].initial set value false
execute if score hiderDeath hiddenInfo matches 1 run data modify storage hns:main hns_settings.hider_death[0].initial set value false
execute if score hiderDeath hiddenInfo matches 1 run data modify storage hns:main hns_settings.hider_death[1].initial set value true

execute if score giveSpeed hiddenInfo matches 0 run data modify storage hns:main hns_settings.speed[0].initial set value true
execute if score giveSpeed hiddenInfo matches 0 run data modify storage hns:main hns_settings.speed[1].initial set value false
execute if score giveSpeed hiddenInfo matches 1 run data modify storage hns:main hns_settings.speed[0].initial set value false
execute if score giveSpeed hiddenInfo matches 1 run data modify storage hns:main hns_settings.speed[1].initial set value true

execute if score giveJump hiddenInfo matches 0 run data modify storage hns:main hns_settings.jump[0].initial set value true
execute if score giveJump hiddenInfo matches 0 run data modify storage hns:main hns_settings.jump[1].initial set value false
execute if score giveJump hiddenInfo matches 1 run data modify storage hns:main hns_settings.jump[0].initial set value false
execute if score giveJump hiddenInfo matches 1 run data modify storage hns:main hns_settings.jump[1].initial set value true


function hns:settings/settings_menu with storage hns:main hns_settings