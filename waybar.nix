{
    "layer": "top", /* Waybar at top layer */
    "position": "top", /* Waybar position (top|bottom|left|right)*/
    "height": 24, // Waybar height (to be removed for auto height)
    "width": 1280, // Waybar width
    "spacing": 4, // Gaps between modules (4px)
    // Choose the order of the modules
    "modules-left": ["sway/workspaces", "sway/mode", "sway/scratchpad", "custom/media"],
    "modules-center": ["sway/window"],
    /*"modules-right": ["mpd", "idle_inhibitor", "pulseaudio", "network", "cpu", "memory", "temperature", "backlight", "keyboard-state", "battery", "battery#bat2", "clock", "tray"],*/
    "modules-right": ["mpd", "idle_inhibitor", "temperature", "cpu", "memory","network", "pulseaudio", "backlight", "keyboard-state", "battery", "battery#bat2", "tray", "clock"],
   /* Modules configuration
     "sway/workspaces": {
        "disable-scroll": true,
        "all-outputs": true,
        "warp-on-scroll": false,
        "format": "{name}: {icon}",
        "format-icons": {
             "1": "",
             "2": "",
             "3": "",
             "4": "",
             "5": "",
             "urgent": "",
             "focused": "",
             "default": ""
        }
     },*/
    "keyboard-state": {
        "numlock": true,
        "capslock": true,
        "format": "{name} {icon}",
        "format-icons": {
            "locked": "",
            "unlocked": ""
        }
    },
    "sway/mode": {
        "format": "<span style=\"italic\">{}</span>"
    },
    "sway/scratchpad": {
        "format": "{icon} {count}",
        "show-empty": false,
        "format-icons": ["", ""],
        "tooltip": true,
        "tooltip-format": "{app}: {title}"
    },
    "mpd": {
//        "format": "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ⸨{songPosition}|{queueLength}⸩ {volume}% ",
        "format": "  {title} - {artist} {stateIcon} [{elapsedTime:%M:%S}/{totalTime:%M:%S}] {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}[{songPosition}/{queueLength}] [{volume}%]",
        "format-disconnected": " Disconnected",
        "format-stopped": " {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped",
        "unknown-tag": "N/A",
        "interval": 2,
        "consume-icons": {
            "on": " "
        },
        "random-icons": {
//            "off": "<span color=\"#f53c3c\"></span> ",
            "on": " "
        },
        "repeat-icons": {
            "on": " "
        },
        "single-icons": {
            "on": "1 "
        },
        "state-icons": {
            "paused": "",
            "playing": ""
        },
        "tooltip-format": "MPD (connected)",
        "tooltip-format-disconnected": "MPD (disconnected)",
        "on-click": "mpc toggle",
//        "on-click-right": "foot -a ncmpcpp ncmpcpp",
        "on-scroll-up": "mpc volume +2",
        "on-scroll-down": "mpc volume -2"

    },
    "idle_inhibitor": {
        "format": "{icon}",
        "format-icons": {
            "activated": "",
            "deactivated": ""
        }
    },
    "tray": {
        // "icon-size": 21,
        "spacing": 10
    },
    "clock": {
        // "timezone": "America/New_York",
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": "{:%Y-%m-%d}"
    },
    "cpu": {
        "format": " {usage}%",
//        "tooltip": false
    },
    "memory": {
        "format": " {}%"
    },
    "temperature": {
        "thermal-zone": 2,
        "hwmon-path": "/sys/class/hwmon/hwmon1/temp1_input",
        "critical-threshold": 80,
        "format-critical": "{icon} {temperatureC}°C",
        "format": "{icon} {temperatureC}°C",
        "format-icons": ["", "", ""]
    },
    "backlight": {
        // "device": "acpi_video1",
        "format": "{icon} {percent}%",
        "format-icons": ["", "", "", "", "", "", "", "", ""]
    },
    "battery": {
        "states": {
            // "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": "{icon} {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-alt": "{icon} {time}",
        // "format-good": "", // An empty format will hide the module
        // "format-full": "",
        "format-icons": ["", "", "", "", ""]
    },
    "battery#bat2": {
        "bat": "BAT2"
    },
    "network": {
        // "interface": "wlp2*", // (Optional) To force the use of this interface
        "format-wifi": "{essid} ({signalStrength}%) ",
        "format-ethernet": " {ifname}",
        "tooltip-format": " {ifname} via {gwaddr}",
        "format-linked": " {ifname} (No IP)",
        "format-disconnected": "Disconnected ⚠ {ifname}",
        "format-alt": " {ifname}: {ipaddr}/{cidr}"
    },
    "pulseaudio": {
        // "scroll-step": 1, // %, can be a float
        "format": "{icon} {volume}% {format_source}",
        "format-bluetooth": " {icon} {volume}% {format_source}",
        "format-bluetooth-muted": "  {icon} {format_source}",
        "format-muted": "  {format_source}",
        "format-source": " {volume}%",
        "format-source-muted": "",
        "format-icons": {
//            "headphone": "",
//            "hands-free": "",
//            "headset": "",
//            "phone": "",
//            "portable": "",
//            "car": "",
            "default": ["", "", ""]
        },
        "on-click": "pavucontrol"
    },
    "custom/media": {
        "format": "{icon} {}",
        "return-type": "json",
        "max-length": 40,
        "format-icons": {
            "spotify": "",
            "default": "🎜"
        },
        "escape": true,
        "exec": "$HOME/.config/waybar/mediaplayer.py 2> /dev/null" // Script in resources folder
        // "exec": "$HOME/.config/waybar/mediaplayer.py --player spotify 2> /dev/null" // Filter player based on name
    }
}


