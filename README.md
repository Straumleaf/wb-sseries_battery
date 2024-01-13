# wb-sseries_battery
Waybar plugin to show battery status for Steel Series Rival wireless mouse. Plugins als indicates when the mouse is charging.

+ copy file to the Waybar script directory **./config/waybar/scripts**
+ add next settings to your Waybar config file as follows:

        "custom/razer-battery": {
            "format": "󰌌 {percentage}% {icon}",
            "format-icons": ["󰁺","󰁻","󰁼","󰁽","󰁾","󰁿","󰂀","󰂁","󰂂","󰁹"],
            "exec": "~/.config/waybar/scripts/razer_battery.sh",
            "return-type": "json",
            "tooltip": false,
            "interval": 60
        },

+ pay attention that script were written for fish shell and required **rivalcfg** to be installed. To instal **rivalcfg** package please follow instructions described here - https://github.com/flozz/rivalcfg
