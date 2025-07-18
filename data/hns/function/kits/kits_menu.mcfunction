$dialog show @s { \
    "type": "minecraft:multi_action", \
    "title": "Kit selection", \
    "pause": false, \
    "can_close_with_escape": true, \
    "columns": 2, \
    "body": [ \
        { \
            "type": "minecraft:plain_message", \
            "contents": "  Hiders kits                       Seekers kits", \
            "width": 300 \
        } \
         \
    ], \
    "actions": $(kits), \
    "exit_action": { \
        "label": { \
            "text": "Back" \
        }, \
        "action": { \
            "type": "show_dialog", \
            "dialog": "hns:main" \
        } \
    } \
}