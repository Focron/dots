#!/bin/bash

if [[ $1 == "idle" ]]; then
  notify-send -u normal 'Hypridle:' "The Screen will lock in 5 minutes."
elif [[ $1 == "normal" ]]; then
  notify-send -u normal 'Hypridle:' "The Idle-timer has been reset."
else
  echo "Please only use \"idle\" or \"normal\" as params!"
fi
  
