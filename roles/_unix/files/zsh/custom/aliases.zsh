#################### ########### ####################
#################### Core Region ####################
#################### ########### ####################

alias sudo='sudo -E '

alias hist='history'

alias nano='nano -glm -$'

alias rsy='rsync -ah --no-o --no-g --partial --info=progress2'


#################### ############### ####################
#################### Anisible Region ####################
#################### ############### ####################
alias a='ansible'
alias ap='ansible-playbook'
alias ag='ansible-galaxy'


#################### ########## ####################
#################### GIT Region ####################
#################### ########## ####################

gitlines() {
  git ls-files | grep "$@" | xargs wc -l
}
