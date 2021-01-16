export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git sublime)

setopt auto_cd
cdpath=($HOME/Code)

ZSH_DISABLE_COMPFIX=true

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ibrew='arch -x86_64 brew'
alias nvim="$HOME/nvim-osx64/bin/nvim"

source $ZSH/oh-my-zsh.sh

KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(/opt/homebrew/bin/brew shellenv)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
