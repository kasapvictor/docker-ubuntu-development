################ Docker commands ################
bash:
	docker exec -it webpack-app zsh || winpty docker exec -it webpack-app zsh

build:
	docker-compose build --no-cache

up:
	docker-compose up -d && make bash

down:
	docker-compose down
