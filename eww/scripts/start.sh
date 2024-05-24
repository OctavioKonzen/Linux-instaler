#!/bin/bash
pkill eww
eww daemon
eww open bar
eww open notifications_popup
~/.config/eww/scripts/notifications.py &

pkill microphone.sh
pkill volume.sh

sleep 15

pkill microphone.sh &&
pkill volume.sh
