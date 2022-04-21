#!/bin/zsh

if [ -f "${HOME}/.wallpaper.png" ] ; then
	rm "${HOME}/.wallpaper.png"
fi

case $1 in
	light)
		wal -a 95 -i ${HOME}/.wallpapers -n -l; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")" --theme one-half-light
		;;
	dark)
		wal -a 95 -i ${HOME}/.wallpapers  -n; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")" --theme one-half-dark
		;;
	*)
		wal -a 95 -i ${HOME}/.wallpapers  -n ; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")" --theme one-half-dark
		;;
esac

betterlockscreen -u "$(< "${HOME}/.cache/wal/wal")"
