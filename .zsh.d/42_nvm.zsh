export NVM_DIR="$HOME/.nvm"

# Put the default version's bin on PATH without sourcing nvm.sh.
# Alias resolution uses builtin reads and globs only — no subprocesses.
if [ -f "$NVM_DIR/alias/default" ]; then
  _nvm_v="$(<$NVM_DIR/alias/default)"
  for _ in 1 2 3; do
    [ -f "$NVM_DIR/alias/$_nvm_v" ] && _nvm_v="$(<$NVM_DIR/alias/$_nvm_v)" || break
  done
  _nvm_bin=("$NVM_DIR"/versions/node/v${_nvm_v#v}*/bin(Nn[-1]))
  if [ -n "$_nvm_bin" ]; then
    export PATH="$_nvm_bin:$PATH"
  else
    # Default couldn't be resolved statically; fall back to full init.
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  fi
  unset _nvm_v _nvm_bin
fi

# Full nvm (and its completion) loads on first use.
if ! typeset -f nvm > /dev/null; then
  nvm() {
    unfunction nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
    nvm "$@"
  }
fi
