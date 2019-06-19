#!/bin/bash
intern=eDP1
extern=HDMI1

if xrandr | grep "$extern disconnected"; then
    xrandr --dpi 210 --output "$extern" --off --output "$intern" --auto
else
    xrandr --dpi 210 \
        --output "$intern" --primary --auto \
        --output "$extern" --mode 1920x1080 --scale 1.3333x1.3333 --right-of "$intern"
fi
