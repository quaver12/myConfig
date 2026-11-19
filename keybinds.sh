#make all keybinds
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

# super + k to quit
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>k']" && echo "<Super>k set to close window"

# super + f for firefox
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Firefox' && gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'firefox' && gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>f' && echo "<Super>f set to open Firefox"

# alt + l & alt + h -> change desktops
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>h']" && gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>l']" && echo "<Alt>h and <Alt>l set to change desktop left & right (respectively)"

