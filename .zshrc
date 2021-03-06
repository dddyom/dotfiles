ZSH_THEME="garyblessington"

export GPG_TTY=`tty`
export PASSWORD_STORE_GPG_OPTS=--no-throw-keyids
export NOTES_DIRECTORY="$HOME/Sync/Documents/notes"
export ZSH="$HOME/.oh-my-zsh"
export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
export EDITOR=nvim
export PATH=$PATH:$HOME/.local/bin:$HOME/.local/share/go/bin 
plugins=( 
	sudo
	copyfile
	dirhistory
	copybuffer
	git
    zsh-autosuggestions
	extract
)

#zstyle ':omz:update' mode disabled  # disable automatic updates
setopt extendedglob

source $ZSH/oh-my-zsh.sh
move_to_trash() { cp -r "$@" $HOME/.local/share/.Trash && \rm -r "$@"}
alias pwd="ptpwd"
alias ls="ptls"
alias cp="ptcp"
alias fzf="fzf --preview 'bat --theme OneHalfDark --color=always --style=numbers --line-range=:500 {}'"
alias man ="batman"
alias grep="batgrep"
alias less="batpipe"
alias cat="bat --theme OneHalfDark"
alias rm='trash'
alias cT='\rm -rf  $HOME/.local/share/Trash/**/* $HOME/.local/share/Trash/**/.* && echo -n Trash is empty | pv -qL 30 '


alias ra="ranger"
alias td="todo.sh"
alias n="notes"
alias neofetch='neofetch --source $HOME/.config/neofetch/ascii.logo'
alias gdot="cd $HOME/dotfiles/"
alias gn="cd $HOME/Sync/Documents/notes/"
alias gdw="cd $HOME/brave/"
alias gT="cd $HOME/.local/share/Trash/files/"
alias cc="cd $HOME/code"

alias l="ls -a"
alias mkdir="mkdir -p"
alias q="exit"
alias c="clear"
alias off="shutdown now"
alias cpf="copyfile"
alias srcz="source $HOME/.zshrc"

alias ta="tmux a -t"
alias tn="tmux new -t"
alias tkill="tmux kill-server"

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then exec startx > $HOME/.Xoutput 2>&1
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

