Install XCode from App Store
Install Homebrew: http://brew.su

brew install macvim git zsh node wget
brew linkapps

Install Homebrew cask
brew cask install google-chrome
brew cask install dropbox
brew cask install onepassword

Clone dotfiles

chsh -s /bin/zsh
ln -s dev/dotfiles/.zshrc .zshrc
ln -s dev/dotfiles/.zsh.d .zsh.d

Open Font Book, drag in Dropbox/Fonts

Terminal -> Preferences
-> Antialias text
-> Import: dotfiles/themes/terminal-app/base16-tomorrow.dark.256.terminal
-> Font: Source Code Pro, 16px

Run: dotfiles/.osx



