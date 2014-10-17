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
