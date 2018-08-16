#!/bin/sh

# get the X canvas size
screensize=`xdpyinfo | grep -i dimensions: | sed 's/[^0-9]*pixels.*(.*).*//' | sed 's/[^0-9x]*//'`

ffmpeg -y -f x11grab -s $screensize -i $DISPLAY -vframes 1 \
    /tmp/screen_locked.png

# Lock
i3lock -p default -i /tmp/screen_locked.png &

# This is super dodgy,
# it runs a keylogger, checks for a key release in sed, then runs ffmpeg to capture a webcam image and replaces it with the lock.

xinput test-xi2 --root | sed -n '/Press)/{p;q;}' | xargs -I % sh -c 'killall xinput;\
ffmpeg -f video4linux2 -i /dev/video0 -ss 0:0:0.5 -y -vf "scale=1920:1080" -frames 1 /tmp/screen_locked.png;
