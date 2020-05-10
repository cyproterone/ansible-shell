#################### ############## ####################
#################### Keybind Region ####################
#################### ############## ####################

# Emacs
bindkey -e
bindkey '^[[1;3C' emacs-forward-word
bindkey '^[[1;3D' emacs-backward-word
# Emacs


# Edit current line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
# Edit current line


# History Expansion
bindkey ' ' magic-space
# History Expansion

