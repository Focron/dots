#!/bin/bash

Brightness=$(brightnessctl -m | cut -d "," -f 4)
notify-send -t 600 "Brightness at $Brightness"
