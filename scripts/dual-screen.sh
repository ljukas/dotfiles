#!/bin/bash
intern=eDP1
extern=HDMI1
docking=DP1-1
docking2=DP1-2

if xrandr | grep "$docking disconnected"; then
    xrandr --dpi 210 --output "$extern" --off --output "$intern" --auto
else
    xrandr --dpi 96 \
        --output "$intern" --off \
        --output "$docking" --primary --mode 1920x1200 --scale 1.25x1.25 --pos 1500x450\
        --output "$docking2" --mode 1920x1200 --scale 1.25x1.25 --rotate left 
fi
