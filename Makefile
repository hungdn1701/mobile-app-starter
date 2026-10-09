.PHONY: help init api-up api-down api-logs api-reset clean

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

init: ## Initialize the project
	@bash scripts/init.sh

api-up: ## Start the mock API
	docker compose up -d

api-down: ## Stop the mock API
	docker compose down

api-logs: ## View mock API logs
	docker compose logs -f api

api-reset: ## Restart the mock API (reloads backend/db.json)
	docker compose down
	docker compose up -d

clean: ## Clean up Docker resources
	docker compose down -v
