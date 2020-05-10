#################### ############# ####################
#################### Editor Region ####################
#################### ############# ####################

export EDITOR="nvim"

ec() {
  (
    echo '[*]'
    echo 'indent_size = 2'
    echo 'insert_final_newline = true'
  ) > ".editorconfig"
}

alias sc='shellcheck'


#################### ############ ####################
#################### Emacs Region ####################
#################### ############ ####################

alias e='emacs'


#################### ########## ####################
#################### Vim Region ####################
#################### ########## ####################

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
