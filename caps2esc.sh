# remap capslock to escape
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']" && echo "escape remapped to caps"
# redundancy if the first does not work
setxkbmap -option caps:swapescape  && echo "escape remapped to caps"
