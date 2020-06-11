#################### ######## ####################
#################### Z Region ####################
#################### ######## ####################

export _Z_DATA="$XDG_CACHE_HOME/zz"
export _Z_CMD='__z'


# INIT
. "$ZDOTDIR/z/z.sh"
# INIT #


z() {
  local A="$(_z -l "$*" 2>&1)"
  local B="$(echo "$A" | sd '^[[\d|\.]|common:]+\s+' '' | awk '!seen[$0]++')"
  if [[ -z "$B" ]]
  then
    echo "no such file or directory: $*"
  else
    local C="$(echo "$B" | fp -1 +s --tac)"
    cd "$C" || return 1
  fi
}
