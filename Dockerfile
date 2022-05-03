FROM ubuntu:20.04

ARG USERNAME=codeally
ARG HOMEDIR=/home/$USERNAME

ENV TZ="America/New_York" \
  LOCALE=en_US.UTF-8

RUN apt update && apt install -y sudo

# Unminimize Ubuntu to restore man pages
RUN yes | unminimize

# Set up timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Set up user, disable pw, and add to sudo group
RUN adduser --disabled-password \
  --gecos '' ${USERNAME}

RUN adduser ${USERNAME} sudo

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> \
  /etc/sudoers

USER ${USERNAME}

# Install packages for projects
RUN sudo apt install -y curl git postgresql postgresql-contrib nano bash-completion man-db

# Set up locales
RUN sudo locale-gen ${LOCALE} && sudo update-locale LANG=${LOCALE}

# Install Node LTS
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN sudo apt install -y nodejs

# Configure project directory
RUN mkdir ${HOMEDIR}/project
WORKDIR ${HOMEDIR}/project
