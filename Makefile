################ Docker commands ################
bash:
	docker exec -it webpack-webflow zsh || winpty docker exec -it webpack-webflow zsh

build:
	docker-compose build --no-cache

up:
	docker-compose up -d && make bash

down:
	docker-compose down
