sudo pacman -S --noconfirm --needed base-devel git wget neovim python-pip i3-wm xorg-xinit xorg-server xorg-xrandr ttf-hack-nerd alacritty polybar dmenu picom xclip network-manager-applet pulseaudio pulseaudio-bluetooth pulsemixer 

#for bluetooth headphones (br-connection-profile-unavailable)
pacmd load-module module-bluetooth-policy
pacmd load-module module-bluetooth-discover
