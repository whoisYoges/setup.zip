#!/bin/env bash
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1

while  true
do
  CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
  
  if [ "$CHARGE" -lt 36 ]; then
    notify-send "Battery Low."
    sleep 180s
  elif [ "$CHARGE" -lt 26 ]; then
    notify-send  -u critical "Battery Critically Low."
    sleep 150s
  elif [ "$CHARGE" -eq 100 ]; then
    notify-send "Battery Fully Charged."
    sleep 300s
  fi
done
