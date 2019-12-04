#################### ########## ####################
#################### FZF Region ####################
#################### ########## ####################

export FZF_DEFAULT_OPTS="--color light \
                         --height 40% \
                         --reverse \
                         --border"

alias f=' fzf'

__fzf_jump() {
  local candidates="$1"
  if [[ -z "$candidates" ]]
  then
    echo "no such file or directory: $@"
  elif [[ $(echo "$candidates" | wc -l) -eq 1 ]]
  then
    cd "$candidates"
  else
    cd "$(echo "$candidates" | fzf --preview "$FZF_DIR_PREVIEW")"
  fi
}

d() {
  __fzf_jump "$(fd -t l -t d "$@" | sort -nf)"
}
alias d=' d'

b() {
  __fzf_jump "$(fd -t l -t d "$@" | sort -nf)"
}
alias b=' b'
