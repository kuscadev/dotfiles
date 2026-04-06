#!/usr/bin/env bash

THEME="$HOME/.config/rofi/themes/powermenu.rasi"

SHUTDOWN=$'\uf011  Shutdown'
REBOOT=$'\uf021  Reboot'
LOGOUT=$'\uf08b  Logout'

chosen=$(printf '%s\n' "$SHUTDOWN" "$REBOOT" "$LOGOUT" \
    | rofi -dmenu \
           -i \
           -no-fixed-num-lines \
           -p $'\uf011  Power' \
           -theme "$THEME")

case "$chosen" in
    "$SHUTDOWN")
        systemctl poweroff
        ;;
    "$REBOOT")
        systemctl reboot
        ;;
    "$LOGOUT")
        bspc quit
        ;;
    *)
        exit 0
        ;;
esac
