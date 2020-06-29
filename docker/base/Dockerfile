FROM ubuntu:latest


# Requirements
SHELL ["/usr/bin/bash", "-c"]
RUN mkdir -p /_install && \
    apt update && \
    apt upgrade -y && \
    apt install -y \
    rsync curl gnupg2 \
    python3 python3-venv python3-pip python3-apt


# VENV
RUN python3 -m venv --system-site-packages /_install/venv && \
    source /_install/venv/bin/activate && \
    pip3 install ansible


# INSTALL
COPY . /_install
RUN source /_install/venv/bin/activate && \
    ansible-playbook -e all=true /_install/docker.ansible.yml
SHELL ["/usr/bin/zsh", "-l", "-c"]
ENV TERM=xterm-256color \
    ISOCP_USE_FILE=1
ENTRYPOINT ["/usr/bin/zsh", "-l"]
WORKDIR "/root"


# Bug
RUN apt install -o Dpkg::Options::="--force-overwrite" ripgrep


# Setup
RUN source "$XDG_CONFIG_HOME/zsh/.zshrc" && \
    /_install/docker/base/setup.sh


# Cleanup
RUN apt autoremove -y && \
    apt clean && \
    rm -rf /tmp/ansible /_install