Install XCode from App Store
Install Homebrew: http://brew.sh

brew install macvim git zsh node wget graphviz hub tree

Install Homebrew cask: brew tap caskroom/cask
brew cask install 1password arq atom colorsnapper dropbox google-chrome hyper intellij-idea iterm2 java8 keepingyouawake keybase slack spotify steam visual-studio-code vlc zoomus

Install sdkman, http://sdkman.io/

Clone dotfiles:
git clone https://github.com/kjbekkelund/dotfiles.git

npm install --global pure-prompt

ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
ln -s ~/dev/dotfiles/.zsh.d ~/.zsh.d
ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dev/dotfiles/.gitignore ~/.gitignore
ln -s ~/dev/dotfiles/.hyper.js ~/.hyper.js

chsh -s /bin/zsh

Install vim plugins: https://github.com/kjbekkelund/vim (`:BundleInstall`)

Run: ~/dev/dotfiles/.osx
