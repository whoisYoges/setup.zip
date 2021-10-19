#!/bin/sh
# Dependencies: pamixer
dwm_pulse () {
    TOG=$(pamixer --get-mute)
    if [ "$TOG" = "true" ]; then
    VOL=$(pamixer --get-volume)
    if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf "MUTE"
    else
        printf "MUTE: %s%%" "$VOL"
    fi
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