#################### ########## ####################
#################### OMZ Region ####################
#################### ########## ####################

export ZSH="$HOME/.config/.oh-my-zsh"
export ZSH_THEME=powerlevel10k/powerlevel10k

export HYPHEN_INSENSITIVE=true
export COMPLETION_WAITING_DOTS=true


#################### ################## ####################
#################### AutoSuggest Region ####################
#################### ################## ####################

zle -N autosuggest-accept
bindkey '^ ' autosuggest-accept
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=4"
export ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(autosuggest-accept)


#################### ############## ####################
#################### History Region ####################
#################### ############## ####################

zle -N history-substring-search-up
zle -N history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
export HISTORY_SUBSTRING_SEARCH_FUZZY=true
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=true


#################### ########## ####################
#################### OMZ Region ####################
#################### ########## ####################

export plugins=(zsh-syntax-highlighting
                zsh-completions
                zsh-autosuggestions
                history-substring-search
                fzf
                zsh-interactive-cd
                z
                fd
                ripgrep
                docker
                kubectl
                helm)
autoload -U compinit && compinit
source "$ZSH/oh-my-zsh.sh"
# Remove CD #
unset -f d
for i in $(seq 1 9)
do
  unalias "$i"
done
# Remove CD #


#################### ############## ####################
#################### LSCOLOR Region ####################
#################### ############## ####################

eval "$(dircolors -b "$ZSH_CUSTOM/dircolors-solarized/dircolors.256dark")"
# eval "$(dircolors -b "$ZSH_CUSTOM/dircolors-solarized/dircolors.ansi-dark")"