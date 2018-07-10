#!/bin/bash
intern=eDP1
extern=HDMI1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --primary --mode 2560x1440 --output "$extern" --mode 1920x1080 --above "$intern"
fi
