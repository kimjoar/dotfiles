Install XCode from App Store
Install Homebrew: http://brew.sh

brew install macvim git zsh node wget
brew linkapps

Install Homebrew cask
brew cask install google-chrome
brew cask install dropbox
brew cask install onepassword

chsh -s /bin/zsh

Clone dotfiles
git clone https://github.com/kjbekkelund/dotfiles.git

ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
ln -s ~/dev/dotfiles/.zsh.d ~/.zsh.d
ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig

Open Font Book, drag in Dropbox/Fonts

Terminal -> Preferences
-> Antialias text
-> Import: ~/dev/dotfiles/themes/terminal-app/base16-tomorrow.dark.256.terminal
-> Font: Source Code Pro, 16px

Run: ~/dev/dotfiles/.osx

