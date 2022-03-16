ZSH_THEME="garyblessington"


export NOTES_DIRECTORY="$HOME/Sync/Documents/notes"
export ZSH="$HOME/.oh-my-zsh"
export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
export EDITOR=nvim 
export PATH=$PATH:$HOME/.local/bin


bindkey ';5D' backward-word
bindkey ';5C' forward-word
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
bindkey "\e[3@" kill-line



zstyle ':omz:update' mode disabled  # disable automatic updates
plugins=(git)
setopt extendedglob

source $ZSH/oh-my-zsh.sh

mdn() { pandoc "$1" | lynx -stdin; }
move_to_trash () { mv "$@" ~/.Trash; }

alias rm='move_to_trash'

alias ra="ranger"
alias td="todo.sh"
alias n="notes"

alias gdot="cd ~/dotfiles/"
alias gn="cd ~/Sync/Documents/notes/"
alias gw="cd ~/projects/"

alias l="ls -a"
alias mkdir="mkdir -p"
alias rm="rm -r"
alias q="exit"
alias off="shutdown now"
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
