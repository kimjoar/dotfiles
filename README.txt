Install Homebrew: http://brew.sh

brew install git gh wget graphviz tree ripgrep
brew install --cask macvim google-chrome 1password hyper iterm2 pure slack spotify steam visual-studio-code zoom

gh auth login
gh repo clone https://github.com/kimjoar/dotfiles.git

ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
ln -s ~/dev/dotfiles/.zsh.d ~/.zsh.d
ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dev/dotfiles/.gitignore ~/.gitignore
ln -s ~/dev/dotfiles/.hyper.js ~/.hyper.js

Install nvm: https://github.com/nvm-sh/nvm

## Themes

Install Source Code Pro:
* https://fonts.google.com/specimen/Source+Code+Pro

Install Terminal theme:
* https://github.com/arcticicestudio/nord-terminal-app
* wget -P /tmp https://raw.githubusercontent.com/arcticicestudio/nord-terminal-app/develop/src/xml/Nord.terminal
* Change font + font size (16px)
