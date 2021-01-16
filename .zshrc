export ZSH="/Users/adrianyem/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

setopt auto_cd
cdpath=($HOME/Documents/Code $HOME/Documents)

ZSH_DISABLE_COMPFIX=true

alias ibrew='arch -x86_64 brew'

source $ZSH/oh-my-zsh.sh

KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
