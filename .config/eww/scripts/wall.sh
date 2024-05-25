#!/bin/bash

# Função para definir papel de parede para saída HDMI
set_wallpaper() {
  local output="$1"
  local img_path="$2"
  local transition_type="$3"
  local transition_pos="$4"
  local transition_duration="$5"
  swww img -o "$output" "$img_path" --transition-type "$transition_type" --transition-pos "$transition_pos" --transition-duration "$transition_duration"
}

# Verifica se o swww está em execução
if ! pgrep -x swww-daemon > /dev/null; then
  # Inicia o swww se não estiver em execução
  swww init &
  sleep 1
fi

# Verifica e inicia o swww
set_wallpaper "DP-3" "/mnt/Disco/wallpapers/wall.png" "grow" "1920,1080" "1"

