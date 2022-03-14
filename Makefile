.PHONY: reset
reset: ## Delete all volumes and all images
	docker volume rm $$(docker volume ls -q) && docker rmi $$(docker images -q) 
	
.PHONY: prod
prod: 
	docker-compose -f docker-compose-prod.yml up -d --build

.PHONY: dev
dev: 
	docker-compose -f docker-compose-dev.yml up -d --build