xmodmap -e 'remove Mod4 = Super_R'
xmodmap -e 'add Mod3 = Super_R'
xbindkeys
cp ~/.config/x/.xinitrc.i3 ~/.xinitrc
startx
