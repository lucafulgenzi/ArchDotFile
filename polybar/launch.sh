#!//bin/bash

# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar mybar &
  done
else
  polybar mybar &
fi
