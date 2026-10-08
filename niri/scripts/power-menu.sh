#!/bin/bash

options="Lock screen\n Shutdown\n Reboot\n Exit Niri\n Suspend"

chosen=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu" --width 400 --height 267 --cache-file /dev/null)

case "$chosen" in
  *"Lock Screen")
    gtklock
    ;;
  *"Shutdown")
    systemctl poweroff
    ;;
  *"Reboot")
    systemctl reboot
    ;;
  *"Exit Niri")
    niri msg action quit
    ;;
  *"Suspend")
    systemctl suspend
    ;;
esac
