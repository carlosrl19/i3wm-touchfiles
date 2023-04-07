#!/bin/bash

# Crear las carpetas si no existen y mostrar mensaje si se crean
if [ ! -d "/home/$USER/.themes" ] || [ ! -d "/home/$USER/.icons" ] || [ ! -d "/home/$USER/.config/i3" ] || [ ! -d "/home/$USER/.config/polybar" ] || [ ! -d "/home/$USER/.config/rofi" ] || [ ! -d "/home/$USER/.config/dunst" ] || [ ! -d "/home/$USER/.config/neofetch" ]; then
smkdir -p /home/$USER/.themes /home/$USER/.icons /home/$USER/.config/i3 /home/$USER/.config/polybar /home/$USER/.config/rofi /home/$USER/.config/dunst /home/$USER/.config/neofetch
  echo "Carpetas creadas exitosamente, procediendo a copiar los archivos..."
fi

# Config de picom para cualquier usuario
sudo chmod +x /etc/xdg/picom.conf

# Copiar archivos a las carpetas
cp -r themes/* /home/$USER/.themes/
cp -r icons/* /home/$USER/.icons/
cp config/i3/* /home/$USER/.config/i3/
cp -r config/polybar/* /home/$USER/.config/polybar/
sudo cp config/picom/* /etc/xdg/picom.conf
cp config/rofi/* /home/$USER/.config/rofi/
cp config/dunst/* /home/$USER/.config/dunst/
cp config/config.conf /home/$USER/.config/neofetch/
cp wallpaper.jpg /home/$USER/Imágenes/

echo "Todo se ha copiado exitosamente"
