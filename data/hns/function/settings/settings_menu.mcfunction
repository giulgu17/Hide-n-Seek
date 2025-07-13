$dialog show @s { \
    "type": "minecraft:confirmation", \
    "title": "Settings", \
    "external_title": "Settings...", \
    "pause": false, \
    "can_close_with_escape": true, \
    "inputs": [ \
        { \
            "type": "minecraft:number_range", \
            "key": "new_prep_time", \
            "width": 180, \
            "label": "Prep phase time (in seconds)", \
            "start": 0, \
            "end": 60, \
            "step": 1, \
            "initial": $(prep_time) \
        }, \
        { \
            "type": "minecraft:number_range", \
            "key": "new_game_time", \
            "label": "Game time (in seconds)", \
            "start": 10, \
            "end": 900, \
            "step": 10, \
            "initial": $(game_time) \
        }, \
        { \
            "type": "minecraft:single_option", \
            "key": "new_auto_seeker", \
            "label": "Seeker is chosen", \
            "options": $(auto_seeker) \
        }, \
        { \
            "type": "minecraft:single_option", \
            "key": "new_hider_death", \
            "label": "Hiders on death become", \
            "options": $(hider_death) \
        } \
    ], \
    "yes": { \
        "label": "Confirm (requires op)", \
        "action": { \
            "type": "dynamic/run_command", \
            "template": "$(template)" \
        } \
    }, \
    "no": { \
        "label": "Cancel", \
        "action": { \
            "type": "show_dialog", \
            "dialog": "hns:main" \
        } \
    } \
}