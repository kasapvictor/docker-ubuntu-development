```bash
# TEST FOR TERMINAL
docker run -t -d -p 1234:1234 --name myubuntu ubuntu

docker exec -it myubuntu bash

apt update

apt install nano bash mc curl nodejs npm -y

curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh

bash install_nvm.sh

source ~/.nvm/nvm.sh

nvm install 18  

nvm use 18
```

```bash
docker build . -t ubuntu/webapp

docker run -it --rm -p 4444:4444 ubuntu/webapp
```
----


```bash
# build
docker-compose build

# start
docker-compose up

# down
docker-compose dowm

# zsh
docker exec -it webapp /bin/zsh
```


 - curl -sL https://deb.nodesource.com/setup_18.x | bash -
 - apt-get install nodejs -y


