#################### ############## ####################
#################### Vagrant Region ####################
#################### ############## ####################

alias v='vagrant'


#################### ########### ####################
#################### VBox Region ####################
#################### ########### ####################

alias vb='VBoxManage'

vboff() {
  vb controlvm $1 poweroff
}

vdun() {
  vboff $1
  vb unregistervm $1
}
