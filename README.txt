Install Homebrew: http://brew.sh

brew install gh

gh auth login
gh repo clone https://github.com/kimjoar/dotfiles.git

brew bundle

Import private key A4507028 to GPG Keychain

ln -s ~/dev/dotfiles ~/.dotfiles
ln -s ~/dev/dotfiles/.zshrc ~/.zshrc
ln -s ~/dev/dotfiles/.zsh.d ~/.zsh.d
ln -s ~/dev/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dev/dotfiles/.gitignore ~/.gitignore
ln -s ~/dev/dotfiles/.hyper.js ~/.hyper.js

Install nvm: https://github.com/nvm-sh/nvm

Set up pinentry:
echo "pinentry-program $(which pinentry-mac)" >> ~/.gnupg/gpg-agent.conf

Java managed through jenv. If needed, `jenv` to configure version

## Themes

Install Source Code Pro:
* https://fonts.google.com/specimen/Source+Code+Pro

Install Terminal theme:
* https://github.com/arcticicestudio/nord-terminal-app
* wget -P /tmp https://raw.githubusercontent.com/arcticicestudio/nord-terminal-app/develop/src/xml/Nord.terminal
* Change font + font size (16px)

Update brewfile:
rm $HOMEBREW_BUNDLE_FILE && brew bundle dump