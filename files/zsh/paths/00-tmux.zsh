#################### ########### ####################
#################### Tmux Region ####################
#################### ########### ####################

if [[ -n "$TMUX" ]]
then
  export PATH="$XDG_CONFIG_HOME/tmux/bin:$PATH"
fi
