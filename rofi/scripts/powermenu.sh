#!/bin/bash
options="󰍃 Logout\n󰐥 Shutdown\n󰑐 Reboot"

chosen=$(echo -e "$options" | rofi -dmenu -theme ~/.config/rofi/themes/powermenu.rasi -p "Power Menu" -i)

case "$chosen" in
    "󰍃 Logout") bspc quit ;;
    "󰐥 Shutdown") systemctl poweroff ;;
    "󰑐 Reboot") systemctl reboot ;;
esac
