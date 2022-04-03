ZSH_THEME="garyblessington"

export NOTES_DIRECTORY="$HOME/Sync/Documents/notes"
export ZSH="$HOME/.oh-my-zsh"
export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
export EDITOR=nvim
export PATH=$PATH:$HOME/.local/bin


plugins=( 
	sudo
	copyfile
	dirhistory
	copybuffer
	git
    zsh-autosuggestions
)




#zstyle ':omz:update' mode disabled  # disable automatic updates
setopt extendedglob

source $ZSH/oh-my-zsh.sh

move_to_trash() { mv "$@" $HOME/.local/share/.Trash; }

alias fzf="fzf --preview 'bat --theme OneHalfDark --color=always --style=numbers --line-range=:500 {}'"
alias man ="batman"
alias grep="batgrep"
alias less="batpipe"
alias cat="bat --theme OneHalfDark"
alias rm='move_to_trash'
alias cT='echo -n Trash is empty | pv -qL 10 && \rm -rf  ~/.local/share/Trash/'

alias ra="ranger"
alias td="todo.sh"
alias n="notes"
alias neofetch='neofetch --source ~/.config/neofetch/ascii.logo'
alias gdot="cd ~/dotfiles/"
alias gn="cd ~/Sync/Documents/notes/"
alias gw="cd ~/projects/"
alias gdw="cd ~/brave/"
alias gT="cd ~/.local/share/.Trash/"

alias l="ls -a"
alias mkdir="mkdir -p"
alias q="exit"
alias c="clear"
alias off="shutdown now"
alias cpf="copyfile"
alias srcz="source ~/.zshrc"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
		. "/opt/anaconda/etc/profile.d/conda.sh"
	else
		export PATH="/opt/anaconda/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then exec startx > ~/.Xoutput 2>&1
fi



bindkey '^[^[[D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
# For Control k and j
bindkey '^k' up-line-or-history
bindkey '^j' down-line-or-history
bindkey '^l' autosuggest-accept
bindkey '^p' clear-screen
bindkey '^H' backward-delete-word
