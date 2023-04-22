#!/bin/bash

# Dependencias necesarias
sudo pacman -S make pkg-config yay picom feh dunst git rofi lxappearance brightnessctl polybar

# Crear las carpetas si no existen y mostrar mensaje si se crean
if [ ! -d "/home/$USER/.themes" ] || [ ! -d "/home/$USER/.icons" ] || [ ! -d "/home/$USER/.config/i3" ] || [ ! -d "/home/$USER/.config/polybar" ] || [ ! -d "/home/$USER/.config/rofi" ] || [ ! -d "/home/$USER/.config/dunst" ] || [ ! -d "/home/$USER/.config/neofetch" ] || [ ! -d "/home/$USER/.config/picom" ]; then
mkdir -p /home/$USER/.themes /home/$USER/.icons /home/$USER/.config/i3 /home/$USER/.config/polybar /home/$USER/.config/rofi /home/$USER/.config/dunst /home/$USER/.config/neofetch /home/$USER/.config/picom
  echo "Carpetas creadas exitosamente, procediendo a copiar los archivos..."
fi

# Config de picom para cualquier usuario
sudo chmod +x /etc/xdg/picom.conf

# Copiar archivos a las carpetas
cp -r themes/* /home/$USER/.themes/
cp -r icons/* /home/$USER/.icons/
sudo cp rofi\ themes/* /usr/share/rofi/themes/
cp config/i3/* /home/$USER/.config/i3/Ad
cp -r config/polybar/* /home/$USER/.config/polybar/
sudo cp config/picom/* /home/$USER/.config/picom/picom.conf
cp config/rofi/* /home/$USER/.config/rofi/
cp config/dunst/* /home/$USER/.config/dunst/
cp config/config.conf /home/$USER/.config/neofetch/
cp wallpaper.png /home/$USER/Imágenes/

# Configuración
bash /home/$USER/.config/polybar/launch.sh --forest
yay -S i3-gaps-rounded-git # instalando i3gaps rounded
yay -S ttf-font-awesome-4
yay -S ttf-font-awesome-5

echo "Todo se ha copiado exitosamente"
