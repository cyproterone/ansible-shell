#################### ########### ####################
#################### Tmux Region ####################
#################### ########### ####################

if [[ -n "$TMUX" ]]
then
  pathprepend "$XDG_CONFIG_HOME/tmux/bin"
fi
