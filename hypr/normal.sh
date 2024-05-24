#!/bin/sh

hyprctl hyprpaper preload /mnt/discos/Wallpapers/lucy.png
hyprctl hyprpaper preload /mnt/discos/Wallpapers/pink.png

hyprctl hyprpaper wallpaper "HDMI-A-2, /mnt/discos/Wallpapers/lucy.png"
hyprctl hyprpaper wallpaper "HDMI-A-1, /mnt/discos/Wallpapers/pink.png"

hyprctl hyprpaper unload all
