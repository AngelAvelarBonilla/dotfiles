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
PROMPT='%F{108}%~%f %F{white}%f$ '

# Key Bindings for navigation keys
# Run 'cat' and then the key to see what the terminal emulator is sending.
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# Misc. options
setopt HIST_IGNORE_SPACE

