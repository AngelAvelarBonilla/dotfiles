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

# Dotfiles Git Repo Mgmt
export DOTFILES_PATH="$HOME/.dotfiles/"
alias gitdotfiles='git --git-dir=$DOTFILES_PATH/ --work-tree=$HOME'

# Prompt Customization
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Misc. options
setopt HIST_IGNORE_SPACE

