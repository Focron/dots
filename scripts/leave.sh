#!/bin/bash

choice=$(printf '%s\n' Shutdown Lock Reboot Logout Suspend | wofi --show=dmenu)


if [ "$choice" == "Shutdown" ]; then
	      poweroff
elif [ "$choice" == "Reboot" ]; then
        reboot
elif [ "$choice" == "Logout" ]; then
	      hyprctl dispatch exit
elif [ "$choice" == "Lock" ]; then
	      hyprlock
elif [ "$choice" == "Suspend" ]; then
        hyprlock & sleep 0.5; systemctl suspend
elif [ "$choice" == "Hibernate" ]; then
        hyprlock & sleep 0.5; systemctl hibernate
fi
