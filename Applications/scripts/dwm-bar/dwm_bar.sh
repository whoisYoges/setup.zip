#!/bin/sh
# Store the directory the script is running from
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

export SEP=" | "

# Import the modules
. "$DIR/bar-functions/dwm_battery.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
. "$DIR/bar-functions/dwm_date.sh"

# Update dwm status bar every second
while true
do
    # Append results of each func one by one to the upperbar string
    upperbar=""
    upperbar="$upperbar$(dwm_battery)"
    upperbar="$upperbar$(dwm_pulse)"
    upperbar="$upperbar$(dwm_date)"
    xsetroot -name "$upperbar"
    sleep 1
done