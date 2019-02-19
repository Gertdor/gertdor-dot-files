#! /bin/bash
setxkbmap se
xbindkeys &
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

exec i3
