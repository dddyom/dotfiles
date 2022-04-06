#!/bin/zsh

case $1 in
	light)
		wal -a 95 -i ${HOME}/.wallpapers  -n -l; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")" --theme one-half-light
		kitty @ set-colors --all --configured $HOME/.config/kitty/kitty.conf
		;;
	dark)
		wal -a 95 -i ${HOME}/.wallpapers  -n; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")" --theme one-half-dark
		kitty @ set-colors --all --configured $HOME/.config/kitty/kitty.conf
		;;
	*)
		wal -a 95 -i ${HOME}/.wallpapers  -n ; feh --bg-scale "$(< "${HOME}/.cache/wal/wal")" --theme one-half-dark
		;;
esac
betterlockscreen -u "$(< "${HOME}/.cache/wal/wal")"
