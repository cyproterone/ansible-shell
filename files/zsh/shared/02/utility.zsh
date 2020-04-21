#################### ############## ####################
#################### Utility Region ####################
#################### ############## ####################

alias c='clipcopy'
alias p='clippaste'

alias trash='trash -v'

alias rsy='rsync -ah --no-o --no-g --info progress2'

alias gt='gotop -c lite'


proxy() {
  if [[ "$#" -eq 0 ]]
  then
    unset http_proxy
    unset https_proxy
  else
    export http_proxy="http://${2:-localhost}:$1"
    export https_proxy="http://${2:-localhost}:$1"
  fi
  echo "http_proxy=$http_proxy"
  echo "https_proxy=$https_proxy"
}


extract() {
  local FILE="$1"

  case "$FILE" in
    *.tar.bz|*.tar.bz2|*.tbz|*.tbz2)
      tar xjvf "$FILE"
      ;;
    *.tar.gz|*.tgz)
      tar xzvf "$FILE"
      ;;
    *.tar.xz|*.txz)
      tar xJvf "$FILE"
      ;;
    *.zip)
      unzip "$FILE"
      ;;
    *.rar)
      unrar x "$FILE"
      ;;
    *.7z)
      7z x "$FILE"
      ;;
    *)
      echo "Unknown format :: $FILE"
      ;;
  esac
}