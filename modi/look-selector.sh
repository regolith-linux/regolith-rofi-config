#!/bin/bash
if [[ -z "$@" ]]; then
    /usr/bin/regolith-look list
    rofi -modi Look:/usr/share/rofi/modi/look-selector.sh -show Look
else
    rm $HOME/.Xresources-regolith 
    /usr/bin/regolith-look set $@
    /usr/bin/regolith-look refresh
fi