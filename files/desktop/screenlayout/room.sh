#!/bin/sh
xrandr --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --mode 1366x768 --pos 1920x0 --rotate normal --output eDP-1 --primary --mode 1920x1080 --pos 3286x0 --rotate normal --output DP-2 --off
feh --bg-fill ~/.config/i3/desktop.png
