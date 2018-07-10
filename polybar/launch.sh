#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar on main screen
polybar -r main &

# Launch bar on external if connected
if xrandr | grep "HDMI1 connected"; then
  polybar -r external &
fi

echo "Bars launched..."