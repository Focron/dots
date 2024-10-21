#!/bin/bash

Mute=$(pactl get-source-mute @DEFAULT_SOURCE@ | cut -d " " -f 2)

if [[ "$Mute" = "yes"  ]]; then
	notify-send -t 1000 "Microphone Muted"
else
 	notify-send -t 1000 "Microphone Unmuted"
fi
