build:
	docker compose build

start:
	docker compose up -d

stop:
	docker compose down

fresh:
	docker compose build --no-cache && docker compose up -d --force-recreate

php:
	docker exec -it $(shell docker compose ps -q php | awk 'NR==1{print $1}') sh	

