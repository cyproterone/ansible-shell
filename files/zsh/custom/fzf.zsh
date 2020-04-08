#################### ########## ####################
#################### FZF Region ####################
#################### ########## ####################

export FZF_DEFAULT_OPTS="--color light \
                         --reverse \
                         --no-height \
                         --border \
                         -e \
                         --bind ctrl-s:toggle-sort"

export FZF_PREVIEW="[ -d {} ] \
                    && exa \
                    --color=always \
                    --group-directories-first \
                    -T -L 2 {} \
                    || bat --color always {}"

export FZF_TMUX_HEIGHT="100%"


alias f='fzf'
alias fp='f --preview $FZF_PREVIEW'


fe() {
  local file="$(fp "$@")"
  if [[ -f "$file" ]]
  then
    $EDITOR "$file"
  fi
}


cf() {
  local file="$(fp "$@")"
  if [[ -f "$file" ]]
  then
    cat "$file"
  fi
}


unalias z
z() {
  local A="$(_z -l "$@" 2>&1)"
  local B="$(echo "$A" | sed -e "s/^[0-9|\.]\+[ ]\+//" -e "/^common:[ ]\+/d")"
  if [[ -z "$B" ]]
  then
    echo "no such file or directory: $*"
  else
    local C="$(echo "$B" | fp -1 +s --tac)"
    cd "$C" || return 1
  fi
}
