# Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Boxen
[[ -f "/opt/boxen/env.sh" ]] && source "/opt/boxen/env.sh"

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# Common junk
[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

export PATH=$PATH:/Users/ikruiper/dev/hsm/jsp/lib/
export LIBPATH=/Users/ikruiper/dev/hsm/jsp/lib/:$LIBPATH
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.0
export PATH=$PATH:$EC2_HOME/bin:/Users/ikruiper/bin

export PSQL_HOME="/usr/local/postgres"
export PSQL_LOG="/usr/local/postgres/server.log"

function postgres_start() {
    pg_ctl -D ${PSQL_HOME} -l ${PSQL_LOG} start &
}

function postgres_stop() {
    pg_ctl -D ${PSQL_HOME} stop
}

function postgres_log() {
    tail -f -n 100 ${PSQL_LOG}
}

export GOPATH="/Users/ikruiper/dev/goplay"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="/Users/ikruiper/.jenv/shims:${PATH}"
source "/opt/boxen/homebrew/Cellar/jenv/0.4.3/libexec/libexec/../completions/jenv.bash"
jenv rehash 2>/dev/null
export JENV_LOADED=1
unset JAVA_HOME
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
