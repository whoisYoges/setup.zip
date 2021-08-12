#!/bin/sh
dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)
    printf "BAT: %s%% %s" "$CHARGE" "$STATUS"
    printf "%s\n" "$SEP"
}
dwm_battery
