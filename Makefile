.PHONY: up down restart

up:
	@if [ -z "$(PROJECT)" ]; then echo "Usage: make up PROJECT=/path/to/project"; exit 1; fi
	mkdir -p $(PROJECT)/.serena
	PROJECT=$(PROJECT) docker compose up -d

down:
	@if [ -z "$(PROJECT)" ]; then echo "Usage: make down PROJECT=/path/to/project"; exit 1; fi
	PROJECT=$(PROJECT) docker compose down

restart: down up