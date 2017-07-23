# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Boxen
[[ -f "/opt/boxen/env.sh" ]] && source "/opt/boxen/env.sh"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

#export GOPATH="/Users/ikruiper/dev/goplay"
#export PATH="$HOME/.jenv/bin:$PATH"
#export PATH="/Users/ikruiper/.jenv/shims:${PATH}"
#source "/opt/boxen/homebrew/Cellar/jenv/0.4.3/libexec/libexec/../completions/jenv.bash"
#jenv rehash 2>/dev/null
#export JENV_LOADED=1
#unset JAVA_HOME
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}
