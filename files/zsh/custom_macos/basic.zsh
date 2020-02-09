#################### ############ ####################
#################### MacOS Region ####################
#################### ############ ####################


alias t='open -f'

alias batt='pmset -g batt'
alias dns='sudo killall -HUP mDNSResponder'


alias brewup='brew update && \
              brew upgrade && \
              brew cleanup && \
              brew doctor && \
              brew cask outdated'


vnc() {
  open "vnc://$1:${2-5900}"
}
