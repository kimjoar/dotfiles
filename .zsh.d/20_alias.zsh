alias ls='ls -FG'
alias l='ls -A'
alias ll='ls -Alh'

alias rr='source $HOME/.zshrc'

# Kill all the tabs in Chrome to free up memory
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | sed "s/^$(whoami)//g" | cut -d ' ' -f2 | xargs kill"
