.DEFAULT_GOAL = help
.PHONY: *

ifdef ComSpec
    SHELL = powershell.exe
    .SHELLFLAGS = -NoProfile -Command
endif

ifeq ($(OS),Windows_NT)
    SED = powershell -Command "(gc $1) -replace '$2','$3' | Out-File $1"
else
    SED = sed -i
endif

ifeq ($(shell if [ -f .env ]; then echo 1; fi),)
    $(shell cp .env.example .env)
endif

include .env

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

start: ## Start containers
	@docker compose up -d

stop: ## Stop containers
	@docker compose down

restart: down up ## Restart containers

rebuild: ## Rebuild containers
	@docker compose down
	@docker compose build --no-cache
	@docker compose up -d

bash: ## Bash container
	@docker compose exec app bash
