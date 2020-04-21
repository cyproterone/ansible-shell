#################### ########## ####################
#################### ZSH Region ####################
#################### ########## ####################
set -o pipefail
export PROMPT_EOL_MARK=""

export XDG_CONFIG_HOME="$HOME/.config"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"


#################### ############## ####################
#################### Loading Region ####################
#################### ############## ####################
zrc_targets=(
  intrinsic
  framework
  shared
  distro
)

for target ($zrc_targets)
do
  rcs="$XDG_CONFIG_HOME/zsh/$target"
  for rc ("$rcs"/**/*.zsh)
  do
    source "$rc"
  done
done


#################### ############## ####################
#################### LSCOLOR Region ####################
#################### ############## ####################

eval "$(dircolors -b "$XDG_CONFIG_HOME/zsh/dircolors-solarized/dircolors.256dark")"
# eval "$(dircolors -b "$XDG_CONFIG_HOME/zsh/dircolors-solarized/dircolors.ansi-dark")"
