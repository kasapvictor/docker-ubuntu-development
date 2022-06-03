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

# install zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install NVM
#RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
#RUN /bin/bash -c "bash install_nvm.sh"
#RUN /bin/bash -c "source ~/.nvm/nvm.sh"

# update NODE to 16
#RUN cd ~
#RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
#RUN bash nodesource_setup.sh
#RUN apt-get install nodejs -y

RUN npm install -g npm@8.12.1

RUN export DOCKER_SCAN_SUGGEST=false

EXPOSE 4444
EXPOSE 9000
EXPOSE 3000
