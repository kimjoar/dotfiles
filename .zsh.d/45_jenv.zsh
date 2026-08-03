if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$HOME/.jenv/shims:$PATH"
  export JENV_SHELL=zsh

  # Statically export what jenv's export plugin would set, without spawning jenv.
  # $(<file) is a zsh builtin read, not a subprocess.
  if [ -f "$HOME/.jenv/version" ]; then
    export JAVA_HOME="$HOME/.jenv/versions/$(<$HOME/.jenv/version)"
    export JENV_FORCEJAVAHOME=true
    if [ -e "$JAVA_HOME/bin/javac" ]; then
      export JDK_HOME="$JAVA_HOME"
      export JENV_FORCEJDKHOME=true
    fi
  fi

  # Full init (rehash, plugins, completions) deferred to first jenv invocation.
  jenv() {
    unfunction jenv
    eval "$(command jenv init -)"
    jenv "$@"
  }
fi
