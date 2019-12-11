#################### ############# ####################
#################### Docker Region ####################
#################### ############# ####################

dm() {
  if [ "$#" -eq 0 ]
  then
    export DOCKER_HOST="unix:///var/run/docker.sock"
  else
    export DOCKER_HOST="tcp://$1:${2-2375}"
  fi
  echo DOCKER_HOST="$DOCKER_HOST"
}

alias dun='docker rm -f $(docker ps -aq)'
alias dprune='docker system prune && docker volume prune && docker network prune && docker image prune -a'

alias doc='docker-compose'
alias docup='doc up -d --build'
alias docuprm='docup --remove-orphans'

alias dex='docker exec -it'
alias det='docker exec -t'

alias dlog='docker logs -f'

alias dr='docker run -it --rm'
alias drw='dr -w=/workdir -v=${PWD}:/workdir'

drx() {
  xhost + 127.0.0.1
  dr -e DISPLAY=host.docker.internal:0 -v /tmp/.X11-unix:/tmp/.X11-unix "$@"
}

#################### ################### ####################
#################### Docker Swarm Region ####################
#################### ################### ####################

alias dn='docker node'
alias dni='dn inspect --pretty'

alias dsd='docker stack deploy -c'

alias ds='docker service'

alias dsps='ds ps --no-trunc'

alias dsi='ds inspect --pretty'
alias dslog='docker service logs -f'


#################### ##################### ####################
#################### Applied Docker Region ####################
#################### ##################### ####################

alias ctop='dr --name=ctop -v=/var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop -i -scale-cpu'

alias sped='dr tianon/speedtest'
