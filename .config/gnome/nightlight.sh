if gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled | grep true; then
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
else
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
fi
