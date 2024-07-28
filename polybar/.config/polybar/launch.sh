#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
      echo "---" | tee -a "/tmp/polybar_main_${m}.log"
      polybar main 2>&1 | tee -a "/tmp/polybar_main_${m}.log" & disown
  done
else
    echo "---" | tee -a "/tmp/polybar_main.log"
    polybar main 2>&1 | tee -a /tmp/polybar_main.log & disown
fi

echo "Bars launched..."
