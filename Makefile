.PHONY: up down restart

up: .serena
	docker compose up -d

down:
	docker compose down

restart: down up

.serena:
	mkdir -p .serena