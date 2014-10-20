Install XCode from App Store
Install Homebrew: http://brew.sh

brew install macvim git zsh node wget
brew linkapps

Install Homebrew cask: brew install caskroom/cask/brew-cask
brew cask install google-chrome dropbox onepassword adobe-creative-cloud vlc caffeine java spotify virtualbox vagrant

Clone dotfiles
git clone https://github.com/kjbekkelund/dotfiles.git

npm install --global pure-prompt

ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
ln -s ~/dev/dotfiles/.zsh.d ~/.zsh.d
ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dev/dotfiles/.gitignore ~/.gitignore

chsh -s /bin/zsh

Install vim plugins: https://github.com/kjbekkelund/vim

Terminal -> Preferences
-> Antialias text
-> Import: ~/dev/dotfiles/themes/terminal-app/base16-tomorrow.dark.256.terminal
-> Font: Source Code Pro, 16px

Run: ~/dev/dotfiles/.osx
