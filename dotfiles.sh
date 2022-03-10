#! /bin/bash
DIR=$HOME/diff/dotfiles

DOTFILES=(
	".bashrc"
	".condarc"
	".xinitrc"
	".zshrc"

	".config/betterlockscreenrc"
	".config/alacritty"
	".config/i3"
	".config/nvim"

	".config/polybar"
	
	".config/ranger"


	".config/rofi"

	".config/tmux"


	".config/picom"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/${dotfile}"
done
