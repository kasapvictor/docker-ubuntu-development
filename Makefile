################ Docker commands ################
bash:
	docker exec -it develop zsh || winpty docker exec -it develop zsh

build:
	docker-compose build --no-cache

up:
	docker-compose up -d && make bash

down:
	docker-compose down
