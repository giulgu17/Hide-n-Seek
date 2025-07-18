dialog show @s { \
    type: "minecraft:confirmation", \
    title: "Confirm", \
    pause: false, \
    can_close_with_escape: true, \
    "body": [ \
        { \
            "type": "minecraft:plain_message", \
            "contents": "You're still playing a round of Hide'n'Seek.", \ 
            "width": 300 \
        }, \
        { \
            type: "minecraft:plain_message", \
            contents: "Are you sure you want to become a spectator?", \
            width: 300 \
        } \
    ], \
    \
    yes: { \
        label: "Spectate anyway", \
        action: { \
            type: "run_command", \
            command: "trigger hns.cmd set 11" \
        } \
    }, \
    no: { \
        label: "Cancel", \
    } \
}