#!/bin/sh
# Dependencies: pamixer
dwm_pulse () {
    VOL=$(pamixer --get-volume)
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf "MUTE"
        else
            printf "VOL: %s%%" "$VOL"
        fi
    printf "%s\n" "$SEP"
}
dwm_pulse
