export DOTFILES_PATH="$HOME/.dotfiles/"
alias gitdotfiles='git --git-dir=$DOTFILES_PATH/ --work-tree=$HOME'
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/angel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
