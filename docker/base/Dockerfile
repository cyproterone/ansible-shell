FROM ubuntu:latest


# Requirements
RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    rsync curl gnupg2 \
    python3 python3-venv python3-apt nodejs npm


# INSTALL
COPY . /_install
RUN python3 -m venv --system-site-packages /_install/venv && \
    /_install/venv/bin/pip3 install ansible && \
    /_install/venv/bin/ansible-playbook /_install/docker.yml && \
    /_install/docker/base/setup.sh && \
    /root/.config/nvim/init.py deps && \
    rm -rf /root/.ansible /_install


SHELL ["/usr/bin/zsh", "-l", "-c"]
ENV TERM=xterm-256color \
    ISOCP_USE_FILE=1
ENTRYPOINT ["/usr/bin/zsh", "-l"]
WORKDIR "/root"


# Cleanup
RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /tmp/**
