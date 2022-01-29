Install Homebrew: http://brew.sh

brew install git gh wget graphviz tree
brew install --cask macvim google-chrome 1password hyper iterm2 keybase slack spotify steam visual-studio-code zoom

gh auth login

Clone dotfiles:
gh repo clone https://github.com/kimjoar/dotfiles.git

npm install --global pure-prompt

ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
ln -s ~/dev/dotfiles/.zsh.d ~/.zsh.d
ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dev/dotfiles/.gitignore ~/.gitignore
ln -s ~/dev/dotfiles/.hyper.js ~/.hyper.js

chsh -s /bin/zsh

Install vim plugins: https://github.com/kimjoar/vim (`:BundleInstall`)

Run: ~/dev/dotfiles/.osx
