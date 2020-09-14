#!/usr/bin/env bash

if [ "$@" ]; then
    rm $HOME/.Xresources-regolith >/dev/null 2>&1
    /usr/bin/regolith-look set $@ >/dev/null 2>&1
    /usr/bin/regolith-look refresh >/dev/null 2>&1
    exit 0
else
    /usr/bin/regolith-look list
fi