FROM ubuntu

ARG USERNAME=codeally
ARG HOMEDIR=/home/$USERNAME

ENV TZ="America/New_York" \
  LOCALE=en_US.UTF-8 \
  NODE_VERSION=14 \
  NVM_DIR="${HOMEDIR}/.nvm"

RUN apt-get update && apt-get install -y sudo

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

# Set shell to install nvm
SHELL ["/bin/bash", "--login", "-i", "-c"]

# Install and configure nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION} && \
  . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION} && \
  . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}

ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"

# Reset shell
SHELL ["/bin/bash", "--login", "-c"]

# Configure project directory
RUN mkdir ${HOMEDIR}/project
WORKDIR ${HOMEDIR}/project
