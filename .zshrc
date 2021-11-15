if [ -d ~/.zsh.d ]; then
  for component in ~/.zsh.d/*.zsh; do
    [ -x $component ] && . $component
  done
  unset component
fi

