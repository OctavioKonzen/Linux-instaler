
#!/bin/bash
echo "Escolha a função a executar"
echo "1. Repositorios"
echo "2. Instalar Programas"
echo "3. Instalar Flatpak"
echo "4. Copiar Arquivos"
read -p "Entre sua escolha (1, 2, 3 ou 4): " choice

# Repositório
if [ $choice -eq 1 ]; then
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper refresh
sudo zypper dup --from packman --allow-vendor-change

# Programas
elif [ $choice -eq 2 ]; then
sudo zypper install gnome-disk-utility gamemoded gamemode firefox kitty hyprland easyeffects rofi neofetch nautilus pavucontrol gnome-system-monitor steam lutris gnome-text-editor rustup wine libcairo2 gtk3 pango xorg-x11-server unrar rar flatpak playerctl gh go libgamemode libgamemode0-32bit htop zsh sysconfig- netconfig bleachbit libglib-2_0-0 libgcc_s1 libgtk-3-0 xwayland glib2 cairo-devel gtk3-devel gtk-layer-shell-devel grim slurp socat jq wl-clipboard peazip mangohud make xdg-user-dirs pamixer libdbusmenu-gtk3-devel libdbusmenu-glib-devel qbittorrent xdg-desktop-portal-hyprland ripgrep swww bluez sysconfig-netconfig polkit-gnome yarn blueman

elif [ $choice -eq 3 ]; then

# Configurar flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub org.videolan.VLC
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.stremio.Stremio
flatpak install flathub page.kramo.Cartridges

# Configurar Perms
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons

# Copiar arquivos

elif [ $choice -eq 4 ]; then
cp -r ./{.,}* /home/$USER/
sudo systemctl start xdg-desktop-portal-hyprland

else
echo "Escolha invalida selecione 1, 2, 3 ou 4"
fi
