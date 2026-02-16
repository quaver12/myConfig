# remap capslock to escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']" && echo "ESCAPE SUCCESSFULLY REMAPPED TO CAPS"

# set command line to use vi key binds
echo "" >> ~/.inputrc && echo "#set command line to use vi key binds" >> ~/.inputrc && echo "set editing-mode vi" >> ~/.inputrc && echo "~/.INPUTRC SUCCESSFULLY SET TO USE VI MODE"

#make all keybinds
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

# super + k to quit
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>k']" && echo "<Super>k set to close window"

# super + f for firefox
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Firefox' && gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'firefox' && gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>f' && echo "<Super>f set to open Firefox"

# super + enter for terminal NOT YET WORKING
#gsettings set org.gnome.desktop.wm.keybindings open-terminal "['<Super>Return']"
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Launch Terminal'
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-terminal'
#gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>Return'

# alt + l & alt + h -> change desktops
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>h']" && gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>l']" && echo "<Alt>h and <Alt>l set to change desktop left & right (respectively)"

# config vimium for firefox
