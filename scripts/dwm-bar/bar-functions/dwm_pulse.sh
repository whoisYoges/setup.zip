#!/bin/sh
# Dependencies: pamixer
dwm_pulse () {
    TOG=$(pamixer --get-mute)
    if [ "$TOG" = "true" ]; then
        printf "MUTE"
    else
        VOL=$(pamixer --get-volume)
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf "MUTE"
        else
            printf "VOL: %s%%" "$VOL"
        fi
    fi
    printf "%s\n" "$SEP"
}
dwm_pulse
