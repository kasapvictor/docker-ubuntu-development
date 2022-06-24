################ Docker commands ################
bash:
	docker exec -it app-webpack zsh || winpty docker exec -it app-webpack zsh

build:
	docker-compose build --no-cache

up:
	docker-compose up -d && make bash

down:
	docker-compose down
