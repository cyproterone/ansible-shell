#################### ########### ####################
#################### Core Region ####################
#################### ########### ####################

export PAGER="tee"
export LESS="-KQRi"


# Safety
alias rm='rm -I'
alias mv='mv -i'
alias cp='cp -i'
# Safety

alias cls='clear'
alias sudo='sudo -E '


export TIME_STYLE="long-iso"
alias ls='exa --group-directories-first --icons -hF'
alias l='ls -1'
alias ll='ls -lg'
alias tree='ls -T -L'


export BAT_THEME=GitHub
# export BAT_THEME=ansi-dark
export BAT_STYLE=plain
alias cat='bat'


alias hist='history'


ma() {
  man "$1" | col -b
}