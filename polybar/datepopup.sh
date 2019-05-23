#!/usr/bin/env sh

# Terminate already running bar instances
killall -q yad
# Wait until the processes have been shut down
while pgrep -u $UID -x yad >/dev/null; do sleep 1; done

# Launch polybar
yad --no-buttons --geometry=+1015+30 --class "YADWIN" --calendar --popup

