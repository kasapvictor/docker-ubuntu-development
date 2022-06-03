FROM ubuntu

WORKDIR /home/app

COPY /app /home/app

# PACKAGES
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
	mc \
	nano \
	curl \
	wget \
	bash \
	gnupg \
	nodejs \
	npm \
	zsh

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh

# RUN /bin/bash -c "cd ~/"

# RUN /bin/bash -c "install_nvm.sh"

RUN npm install -g npm@8.12.1

#RUN cd ~
#RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
# curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
#SHELL ["bash nodesource_setup.sh"]
#RUN apt-get install -y nodejs
#RUN apt-get install -y npm

#	&& curl -sL https://deb.nodesource.com/setup_18.x | bash - \
#	&& apt install -y nodejs \
#	&& rm -rf /var/lib/apt/lists/*

# ZSH
# RUN apt-get install -y zsh && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# NODE
#RUN curl --silent --location https://deb.nodesource.com/setup_18.x |  bash -
#RUN apt-get install -y apt-transport-https -y node
#RUN apt-get install -y build-essential
#RUN apt-get update
#RUN apt-get install -y node
# RUN apt-get install -y npm

RUN export DOCKER_SCAN_SUGGEST=false

EXPOSE 4444
EXPOSE 9000
EXPOSE 3000
