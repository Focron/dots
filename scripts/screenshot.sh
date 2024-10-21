#!/bin/bash

choice=$(printf '%s\n' Region Window Screen | wofi --show=dmenu)
prefix="hyprshot -o $(xdg-user-dir PICTURES)/Screenshots -m"

if [ "$choice" == "Region" ]; then
  eval "${prefix} region"
elif [ "$choice" == "Window" ]; then
  eval "${prefix} window"
elif [ "$choice" == "Screen" ]; then
  eval "${prefix} output"
fi
