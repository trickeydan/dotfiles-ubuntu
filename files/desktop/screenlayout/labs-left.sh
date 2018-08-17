#!/bin/sh
xrandr --output HDMI-2 --off --output HDMI-1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --off --output eDP-1 --primary --mode 1920x1080 --pos 2560x680 --rotate normal --output DP-2 --off
feh --bg-fill ~/.config/i3/desktop.png
