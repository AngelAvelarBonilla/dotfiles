# Dotfiles
This is a repository for syncing my configuration files (dotfiles) across all my workspaces. 
This includes configurations files for: Zsh, Neovim, Tmux

# Usage
- Set path to dotfiles repo
`export DOTFILES_PATH="$HOME/.dotfiles/"`
- Clone repo
`git clone --bare git@github.com:AngelAvelarBonilla/dotfiles.git $DOTFILES_PATH`
- Setup alias to make git look in home area for our dotfiles instead
`alias gitdotfiles='git --git-dir=$DOTFILES_PATH/ --work-tree=$HOME'`
- Tell git to only show files we explicitly track
`gitdotfiles config --local status.showUntrackedFiles no`
- Use alias in place of regular git command
`dotgitfiles add .bashrc`
`dotgitfiles commit -m "<YOUR COMMIT MESSAGE>"`



